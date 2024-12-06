import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./main.css";
import logo from "../1.jpg";
import axios from "axios";
import useAsync from "../config/useAsync";

async function getSubject() {
    const res = await axios.get("http://13.124.165.196:8080/api/subject");
    console.log(res);
    return res.data;
}

function SubjectSearch(props) {
    const [searchTerm, setSearchTerm] = useState("");
    const [subjectList, setSubjectList] = useState([]);
    const [filteredSubjects, setFilteredSubjects] = useState([]);
    const { rdata } = props;
    const navigate = useNavigate();

    useEffect(() => {
        const savedSubjects = localStorage.getItem("subjectList");
        if (savedSubjects) {
            setSubjectList(JSON.parse(savedSubjects));
        }
    }, []);

    const saveToLocalStorage = (data) => {
        localStorage.setItem("subjectList", JSON.stringify(data));
    };

    const handleAddClick = () => {
        if (searchTerm && !subjectList.some((subject) => subject.name === searchTerm)) {
            const newSubject = rdata.find((subject) => subject.name === searchTerm);
            if (newSubject) {
                const updatedList = [...subjectList, newSubject];
                setSubjectList(updatedList);
                saveToLocalStorage(updatedList);
                setSearchTerm("");
            }
        } else if (subjectList.some((subject) => subject.name === searchTerm)) {
            alert("이미 저장된 과목입니다.");
        }
    };

    const handleInputChange = (e) => {
        const value = e.target.value;
        setSearchTerm(value);

        if (value === "") {
            setFilteredSubjects([]);
        } else {
            const filtered = rdata.filter((subject) =>
                subject.name.toLowerCase().includes(value.toLowerCase())
            );
            setFilteredSubjects(filtered);
        }
    };

    const handleCompleteClick = async () => {
        try {
            // 선택한 과목의 ID 값을 추출하여 payload 생성 (id만 보내도록 수정)
            const payload = {
                selectedSubjects: subjectList.map((subject) => subject.id) // ID 값만 추출
            };

            const response = await axios.post(
                "http://13.124.165.196:8080/api/job", // 올바른 엔드포인트 확인
                payload,
                {
                    headers: {
                        "Content-Type": "application/json"
                    }
                }
            );
            console.log("서버 응답:", response.data);

            // 서버에서 받은 데이터를 로컬 스토리지에 저장
            localStorage.setItem("jobRecommendations", JSON.stringify(response.data));

            // Loadmap 페이지로 이동
            navigate("/loadmap");
        } catch (error) {
            console.error("서버 요청 중 오류 발생:", error);
        }
    };

    return (
        <div>
            <div className="maincontainer">
                <div className="maingrid">
                    <p className="mainp">
                        Welcome to
                        <br />
                        <img src={logo} className="mainimg" alt="서비스 로고" />
                    </p>
                    <p className="mainp2">
                        Create Preferred subject
                        <br />
                        <span className="mainspan">선호 과목 리스트 생성</span>
                    </p>
                </div>
            </div>
            <div className="maingrid2">
                <div className="search-subject">
                    <input
                        className="subject"
                        type="text"
                        value={searchTerm}
                        onChange={handleInputChange}
                        placeholder="과목을 입력하세요..."
                    />
                    {filteredSubjects.length > 0 && (
                        <ul className="autocomplete-list">
                            {filteredSubjects.map((subject, index) => (
                                <li
                                    key={index}
                                    className="autocomplete-item"
                                    onClick={() => {
                                        setSearchTerm(subject.name);
                                        setFilteredSubjects([]);
                                    }}
                                >
                                    {subject.name}
                                </li>
                            ))}
                        </ul>
                    )}
                </div>
                <button className="add-button" onClick={handleAddClick}>
                    추가
                </button>
                <ul className="saved-subject-list">
                    {subjectList.map((subject, index) => (
                        <li key={index}>{subject.name}</li>
                        ))}
                </ul>
                <button className="complete-button" onClick={handleCompleteClick}>
                    완료
                </button>
            </div>
        </div>
    );
}

function Search() {
    const [state] = useAsync(() => getSubject(), []);
    const { loading, data: rdata, error } = state;

    if (loading) return <div>로딩중입니다.....</div>;
    if (error) return <div>에러가 발생했습니다.</div>;
    if (!rdata) return null;

    return <SubjectSearch rdata={rdata} />;
}

export default Search;
