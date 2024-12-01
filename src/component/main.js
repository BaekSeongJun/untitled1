import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import logo from "../1.jpg";
import "./main.css";

const SchoolSelect = () => {
    const [selectedSchool, setSelectedSchool] = useState("");
    const [selectedMajor, setSelectedMajor] = useState("");
    const navigate = useNavigate();

    const handleSearchClick = () => {
        if (!selectedSchool || !selectedMajor) {
            alert("학교와 전공을 선택해주세요.");
            return;
        }
        navigate("/search"); // 검색 화면으로 이동
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
                    University Subject-based Career <br/>
                    <span className="mainspan">대학교 선호 과목 기반 취업 정보 추천 서비스</span>
                </p>
            </div>
        </div>
    <div className="maingrid2">
        <img src="./img/school.jpg" className="mainimg" alt="학교 로고"/>
        <div className="grid-item">
            <select
                className="option-box"
                onChange={(e) => setSelectedSchool(e.target.value)}
                value={selectedSchool}
            >
                <option value="" disabled>
                    학교를 선택하세요
                </option>
                <option>충남대학교</option>
                <option>전주대학교</option>
                    <option>부산대학교</option>
                    <option>서울대학교</option>
                    <option>울산대학교</option>
                </select>
            </div>

            <img src="./img/open-book.jpg" className="mainimg" alt="열린 책" />
            <div className="grid-item">
                <select
                    className="option-box"
                    onChange={(e) => setSelectedMajor(e.target.value)}
                    value={selectedMajor}
                >
                    <option value="" disabled>
                        전공을 선택하세요
                    </option>
                    <option>컴퓨터융합학부</option>
                    <option>경제학과</option>
                    <option>수학과</option>
                    <option>국문과</option>
                    <option>영문과</option>
                </select>
            </div>

            <div className="grid-item">
                <button className="search-button" onClick={handleSearchClick}>
                    검색
                </button>
            </div>
        </div>
    </div>
    );
};

export default SchoolSelect;
