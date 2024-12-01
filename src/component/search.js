import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import "./main.css";
import logo from "../1.jpg";

const subjectOptions = [
    "기초프로젝트랩", "어드벤쳐디자인", "심화프로젝트랩", "종합설계", "창업실습4", "창업실습3",
    "창업실습2", "창업실습1", "현장실습", "상업논술", "실무프로젝트랩3", "실무프로젝트랩2",
    "실무프로젝트랩1", "컴퓨터네트워크", "알고리즘응용", "운영체제 및 실습", "데이터베이스",
    "데이터베이스설계", "데이터과학", "시스템프로그래밍", "논리회로", "AI활용 표현과 문제해결",
    "AI 소프트웨어", "컴퓨터프로그래밍3", "선형대수", "이산수학", "디지털 VLSI", "분산시스템",
    "정보보호", "이동통신", "네트워크및웹보안", "인간-컴퓨터 상호작용", "인공지능SoC설계",
    "딥러닝", "임베디드소프트웨어", "최신컴퓨터특강", "컴퓨터네트워크설계", "소프트웨어및시스템보안",
    "컴파일러개론", "기계학습", "공개소프트웨어실습", "디지털시스템설계", "소프트웨어공학",
    "컴퓨터그래픽스", "데이터통신", "전자회로", "영상처리", "프로그래밍언어개론", "수치프로그래밍",
    "웹프로그래밍", "상업교육론", "디지털신호처리", "계산이론"
];

const SubjectSearch = () => {
    const [searchTerm, setSearchTerm] = useState("");
    const [subjectList, setSubjectList] = useState([]);
    const [filteredSubjects, setFilteredSubjects] = useState([]);

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
        if (searchTerm && !subjectList.includes(searchTerm)) {
            const updatedList = [...subjectList, searchTerm];
            setSubjectList(updatedList);
            saveToLocalStorage(updatedList);
            setSearchTerm("");
        } else if (subjectList.includes(searchTerm)) {
            alert("이미 저장된 과목입니다.");
        }
    };

    const handleInputChange = (e) => {
        const value = e.target.value;
        setSearchTerm(value);

        if (value === "") {
            setFilteredSubjects([]);
        } else {
            const filtered = subjectOptions.filter((subject) =>
                subject.toLowerCase().includes(value.toLowerCase())
            );
            setFilteredSubjects(filtered);
        }
    };

    return (
        <div>
            <div className="maincontainer">
                <div className="maingrid">
                    <p className="mainp">
                        Welcome to
                        <br/>
                        <img src={logo} className="mainimg" alt="서비스 로고"/>
                    </p>
                    <p className="mainp2">
                        Create Preferred subject  <br/>
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
                                        setSearchTerm(subject);
                                        setFilteredSubjects([]);
                                    }}
                                >
                                    {subject}
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
                        <li key={index}>{subject}</li>
                    ))}
                </ul>
                <Link to="/loadmap" className="complete-button">
                    완료
                </Link>
            </div>
        </div>
            );
            };

            export default SubjectSearch;
