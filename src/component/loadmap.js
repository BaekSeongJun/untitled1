import React, { useEffect, useState } from "react";
import "./loadmap.css";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const Loadmap = () => {
    const [subjectList, setSubjectList] = useState([]);
    const [jobRecommendations, setJobRecommendations] = useState([]);
    const [roadmap, setRoadmap] = useState([]);
    const [researchList, setResearchList] = useState([]);
    const [startupInfo, setStartupInfo] = useState(null);
    const [planningInfo, setPlanningInfo] = useState(null);
    const [jobDetail, setJobDetail] = useState(null);
    const [selectedTech, setSelectedTech] = useState(null);
    const [popupPosition, setPopupPosition] = useState({ left: 0, top: 0 });
    const navigate = useNavigate();

    useEffect(() => {
        const savedSubjects = localStorage.getItem("subjectList");
        if (savedSubjects) {
            setSubjectList(JSON.parse(savedSubjects));
        }

        const savedRecommendations = localStorage.getItem("jobRecommendations");
        if (savedRecommendations) {
            setJobRecommendations(JSON.parse(savedRecommendations));
        }
    }, []);

    const saveToLocalStorage = (data) => {
        localStorage.setItem("subjectList", JSON.stringify(data));
    };

    const handleAdd = () => {
        navigate("/search");
    };

    const handleDelete = (index) => {
        const updatedList = subjectList.filter((_, idx) => idx !== index);
        setSubjectList(updatedList);
        saveToLocalStorage(updatedList);
    };

    const handleCardClick = async (jobId) => {
        try {
            const roadmapResponse = await axios.get(`http://13.124.165.196:8080/api/roadmap/${jobId}`);
            console.log("로드맵 서버 응답:", roadmapResponse.data);
            setRoadmap(roadmapResponse.data);

            const jobDetailResponse = await axios.get(`http://13.124.165.196:8080/api/job/${jobId}`);
            console.log("직업 상세 정보 서버 응답:", jobDetailResponse.data);
            setJobDetail(jobDetailResponse.data);

            setResearchList([]);  // 연구 목록 초기화
            setStartupInfo(null); // 창업 정보 초기화
            setPlanningInfo(null); // 기획 정보 초기화
        } catch (error) {
            console.error("로드맵 및 직업 데이터를 가져오는 중 오류 발생:", error);
        }
    };

    const handleStartupCardClick = async () => {
        try {
            const techResponse = await axios.get(`http://13.124.165.196:8080/api/startup/tech`);
            const subjectResponse = await axios.get(`http://13.124.165.196:8080/api/startup/subject`);
            const certificateResponse = await axios.get(`http://13.124.165.196:8080/api/startup/certificate`);
            const supportResponse = await axios.get(`http://13.124.165.196:8080/api/startup/support`);

            setRoadmap([]);  // 로드맵 초기화
            setResearchList([]);  // 연구 목록 초기화
            setPlanningInfo(null); // 기획 정보 초기화
            setJobDetail(null); // 직업 상세 정보 초기화

            setStartupInfo({
                techStack: techResponse.data,
                relatedSubjects: subjectResponse.data,
                certificates: certificateResponse.data,
                supportPrograms: supportResponse.data
            });
        } catch (error) {
            console.error("창업 데이터를 가져오는 중 오류 발생:", error);
        }
    };

    const handlePlanningCardClick = async () => {
        try {
            const techResponse = await axios.get(`http://13.124.165.196:8080/api/planning/tech`);
            const subjectResponse = await axios.get(`http://13.124.165.196:8080/api/planning/subject`);
            const certificateResponse = await axios.get(`http://13.124.165.196:8080/api/planning/certificate`);

            setRoadmap([]);  // 로드맵 초기화
            setResearchList([]);  // 연구 목록 초기화
            setStartupInfo(null); // 창업 정보 초기화
            setJobDetail(null); // 직업 상세 정보 초기화

            setPlanningInfo({
                techStack: techResponse.data,
                relatedSubjects: subjectResponse.data,
                certificates: certificateResponse.data,
            });
        } catch (error) {
            console.error("기획 데이터를 가져오는 중 오류 발생:", error);
        }
    };

    const handleResearchCardClick = async () => {
        try {
            const response = await axios.get(`http://13.124.165.196:8080/api/grad/1`);
            console.log("연구 목록 서버 응답:", response.data);
            setResearchList(response.data);
            setRoadmap([]);  // 로드맵 초기화
            setStartupInfo(null); // 창업 정보 초기화
            setPlanningInfo(null); // 기획 정보 초기화
            setJobDetail(null); // 직업 상세 정보 초기화
        } catch (error) {
            console.error("연구 데이터를 가져오는 중 오류 발생:", error);
        }
    };

    const handleTechClick = async (tech, event) => {
        try {
            const pointRect = event.target.getBoundingClientRect();
            const newPopupPosition = {
                left: pointRect.left + window.scrollX,
                top: pointRect.top + window.scrollY,
            };
            setPopupPosition(newPopupPosition);

            if (tech.isResearch) {
                // 연구 관련 데이터를 가져오기
                const response = await axios.get(
                    `http://13.124.165.196:8080/api/grad/research?jobId=1&gradId=${tech.techId}`
                );
                console.log("연구 상세 데이터 서버 응답:", response.data);
                setSelectedTech({
                    techName: tech.techName,
                    description: response.data[0]?.name, // 연구 상세 데이터의 name만 표시
                });
            } else {
                const techId = tech.techId;

                // 첫 번째 정보: 기술 설명
                const descriptionResponse = await axios.get(`http://13.124.165.196:8080/api/tech/description/${techId}`);
                const techDescription = descriptionResponse.data;

                // 두 번째 정보: 하위 기술 목록
                const subclassResponse = await axios.get(`http://13.124.165.196:8080/api/tech/subclass/${techId}`);
                const techSubclass = subclassResponse.data;

                // 세 번째 정보: 관련 자격증
                const certificateResponse = await axios.get(`http://13.124.165.196:8080/api/tech/certificate/${techId}`);
                const techCertificate = certificateResponse.data;

                // 관련 과목 중복 제거
                const uniqueRelatedSubjects = [...new Set(tech.relatedSubjects)];

                // 추가 정보와 관련 과목을 담은 오브젝트 생성
                setSelectedTech({
                    techName: tech.techName, // 기술 이름
                    description: techDescription.description, // 기술 설명
                    subclass: Array.isArray(techSubclass) ? techSubclass : [], // 하위 기술 목록
                    certificate: Array.isArray(techCertificate) ? techCertificate : [], // 관련 자격증 목록
                    relatedSubjects: uniqueRelatedSubjects, // 중복 제거된 관련 과목 목록
                });
            }
        } catch (error) {
            console.error("기술 데이터를 가져오는 중 오류 발생:", error);
        }
    };

    const handleClosePopup = () => {
        setSelectedTech(null);
    };

    return (
        <div className="app-container">
            <main className="main-content">
                <section className="subject-list">
                    <h2>My Subject List</h2>
                    <div className="subject-container">
                        <ul>
                            {subjectList.map((subject, index) => (
                                <li key={index} className="subject-item">
                                    {subject.name}
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

                <section className="recommendations">
                    <h2 className="recommendation-title">추천 직업 목록</h2>
                    <div className="recommendation-container">
                        {jobRecommendations.map((job) => (
                            <div
                                className="card"
                                key={job.id}
                                onClick={() => handleCardClick(job.id)}
                            >
                                <h3>{job.name}</h3>
                                <p>{job.description}</p>
                            </div>
                        ))}
                        {/* 고정된 창업/기획 및 연구 카드 */}
                        <div className="card" onClick={handleStartupCardClick}>
                            <h3>창업</h3>
                        </div>
                        <div className="card" onClick={handlePlanningCardClick}>
                            <h3>기획</h3>
                        </div>
                        <div className="card" onClick={handleResearchCardClick}>
                            <h3>연구</h3>
                        </div>
                    </div>
                </section>

                {roadmap.length > 0 && (
                    <section className="extra-content">
                        {jobDetail && (
                            <div className="job-detail">
                                <div className="extra-content-second">
                                    <h3 className="extra-title">연봉</h3>
                                    <p style={{marginBottom: 50}}>{jobDetail.salary}</p>
                                </div>
                                <div className="extra-content-second">
                                    <h3 className="extra-title">주요 기업</h3>
                                    <ul style={{paddingTop: 0}}>
                                        {jobDetail.majorCompanies.map((company, index) => (
                                            <li key={index}>{company}</li>
                                        ))}
                                    </ul>
                                </div>
                            </div>
                        )}
                        <h2 className="extra-title">로드맵</h2>
                        <div className="roadmap-container">
                            {roadmap.map((tech, index) => (
                                <div key={tech.techId} className="roadmap-item-container">
                                    <div
                                        className="roadmap-item"
                                        onClick={(event) => handleTechClick(tech, event)}
                                    >{tech.techName}</div>
                                    <div className="roadmap-item-wrapper"><span className="roadmap-item-number">{index+1}</span></div>
                                    <div className="roadmap-line"></div>
                                </div>
                            ))}
                        </div>
                    </section>
                )}

                {researchList.length > 0 && (
                    <section className="extra-content extra-content-second">
                        <h2 className="extra-title">관련 연구를 진행 중인 대학원 목록</h2>
                        <ul>
                            {researchList.map((item, index) => (
                                <li
                                    key={item.id}
                                    className="research-item"
                                    onClick={(event) => handleTechClick({ techId: item.id, techName: item.name, isResearch: true }, event)}
                                >
                                    {item.name}
                                </li>
                            ))}
                        </ul>
                    </section>
                )}

                {startupInfo && (
                    <section className="extra-content">
                        <h2 className="extra-title">창업 정보</h2>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">기술 스택</h3>
                            <ul>
                                {startupInfo.techStack.map((tech, index) => (
                                    <li key={index}>{tech.name}</li>
                                ))}
                            </ul>
                        </div>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">관련 과목</h3>
                            <ul>
                                {startupInfo.relatedSubjects.map((subject, index) => (
                                    <li key={index}>{subject.name}</li>
                                ))}
                            </ul>
                        </div>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">관련 자격증</h3>
                            <ul>
                                {startupInfo.certificates.map((cert, index) => (
                                    <li key={index}>{cert.name}</li>
                                ))}
                            </ul>
                        </div>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">지원 제도</h3>
                            <ul>
                                {startupInfo.supportPrograms.map((program, index) => (
                                    <li key={index}>
                                        <strong>{program.title}</strong>: {program.content} (지원 기관: {program.supporter})
                                    </li>
                                ))}
                            </ul>
                        </div>
                    </section>
                )}

                {planningInfo && (
                    <section className="extra-content">
                        <h2 className="extra-title">기획 정보</h2>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">기술 스택</h3>
                            <ul>
                                {planningInfo.techStack.map((tech, index) => (
                                    <li key={index}>{tech.name}</li>
                                ))}
                            </ul>
                        </div>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">관련 과목</h3>
                            <ul>
                                {planningInfo.relatedSubjects.map((subject, index) => (
                                    <li key={index}>{subject.name}</li>
                                ))}
                            </ul>
                        </div>
                        <div className="extra-content-second">
                            <h3 className="extra-title-second">관련 자격증</h3>
                            <ul>
                                {planningInfo.certificates.map((cert, index) => (
                                    <li key={index}>{cert.name}</li>
                                ))}
                            </ul>
                        </div>
                    </section>
                )}

                {selectedTech && (
                    <div
                        className="tech-popup"
                        style={{ left: popupPosition.left, top: popupPosition.top }}
                    >
                        <div className="tech-popup-content">
                            <button className="close-btn" onClick={handleClosePopup}>
                                <span>X</span>
                            </button>
                            <h3 className="extra-title">{selectedTech.techName}</h3>
                            <p style={{padding: 10, marginBottom: 30}}>{selectedTech.description}</p>
                            {selectedTech.subclass && selectedTech.subclass.length > 0 && (
                                <div className="extra-content-second">
                                    <h4 className="extra-title">하위 기술 목록</h4>
                                    <ul style={{paddingTop: 0}}>
                                        {selectedTech.subclass.map((item, idx) => (
                                            <li key={idx}>{item.name}</li>
                                        ))}
                                    </ul>
                                </div>
                            )}
                            {selectedTech.certificate && selectedTech.certificate.length > 0 && (
                                <div className="extra-content-second">
                                    <h4 className="extra-title">관련 자격증</h4>
                                    <ul style={{paddingTop: 0}}>
                                        {selectedTech.certificate.map((cert, idx) => (
                                            <li key={idx}>{cert.name}</li>
                                        ))}
                                    </ul>
                                </div>
                            )}
                            {selectedTech.relatedSubjects && selectedTech.relatedSubjects.length > 0 && (
                                <div className="extra-content-second">
                                    <h4 className="extra-title">관련 과목</h4>
                                    <ul style={{paddingTop: 0}}>
                                        {selectedTech.relatedSubjects.map((subject, idx) => (
                                            <li key={idx}>{subject}</li>
                                        ))}
                                    </ul>
                                </div>
                            )}
                        </div>
                    </div>
                )}
            </main>
        </div>
    );
};

export default Loadmap;
