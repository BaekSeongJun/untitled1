import React, { useEffect, useState } from "react";
import "./loadmap.css";
import { useNavigate } from "react-router-dom";

const Loadmap = () => {
    const [subjectList, setSubjectList] = useState([]);
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

    const handleAdd = () => {
        navigate("/search"); // 이전 화면으로 이동
    };

    const handleDelete = (index) => {
        // 아이템 삭제
        const updatedList = subjectList.filter((_, idx) => idx !== index);
        setSubjectList(updatedList);
        saveToLocalStorage(updatedList); // 로컬 스토리지에 업데이트
    };

    return (
        <div className="app-container">
            <main className="main-content">
                {/* 왼쪽 섹션 */}
                <section className="subject-list">
                    <h2>My Subject List</h2>
                    <div className="subject-container">
                        <ul>
                            {subjectList.map((subject, index) => (
                                <li key={index} className="subject-item">
                                    {subject}
                                    <button
                                        className="delete-btn"
                                        onClick={() => handleDelete(index)}
                                    >
                                        X
                                    </button>
                                </li>
                            ))}
                        </ul>
                        <div className="subject-actions">
                            <button className="add-btn" onClick={handleAdd}>
                                추가
                            </button>
                        </div>
                    </div>
                </section>
                {/* 중간 섹션 */}
                <section className="recommendations">
                    <div className="card">
                        <h3>백엔드 개발자</h3>
                        <p>
                            웹 애플리케이션의 서버 측을 개발하는 개발자. 데이터베이스와 서버 로직을
                            구현하며 Python, Java, Node.js 등을 사용합니다.
                        </p>
                        <button className="favorite-btn">♡</button>
                    </div>
                    <div className="card">
                        <h3>데이터베이스 관리자</h3>
                        <p>간단 설명</p>
                        <button className="favorite-btn">♡</button>
                    </div>
                    <div className="card">
                        <h3>시스템 관리자</h3>
                        <p>간단 설명</p>
                        <button className="favorite-btn">♡</button>
                    </div>
                    <div className="card">
                        <h3>데이터 엔지니어</h3>
                        <p>간단 설명</p>
                        <button className="favorite-btn">♡</button>
                    </div>
                </section>

                {/* 오른쪽 섹션 */}
                <section className="extra-content">
                    {/* 추가 콘텐츠 영역 */}
                </section>
            </main>
        </div>
    );
};

export default Loadmap;
