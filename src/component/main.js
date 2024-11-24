import React, {useState} from "react";
import logo from "../1.jpg";
import "./main.css";
function Welcome() {
  /*/const [search, setSearch] = useState("");
  const onChange = (e) => {
    setSearch(e.target.value)
  }*/

  /*const filterTitle = subject.filter((p) => {
    return p.title.toLocaleLowerCase().includes(search.toLocaleLowerCase())
  })*/

    const [selectedSchool, setSelectedSchool] = useState("");
    const [selectedMajor, setSelectedMajor] = useState("");

    const [isSubjectVisible, setIsSubjectVisible] = useState(false);

    // 검색 버튼 클릭 핸들러
    const handleSearchClick = () => {
        if (!selectedSchool || !selectedMajor) {
            alert("학교와 학과를 선택해주세요."); // 오류 메시지 설정
        } else {
            setIsSubjectVisible(true); // 숨겨진 요소 표시
        }
    };

  return (
    <div className="main">
      <div className="maincontainer">
        <div className="maingrid">
          <p className="mainp">
            Welcome to
            <br />
            <img src={logo} className="mainimg" />
          </p>
          <p className="mainp2">
            University Subject-bused Career <br />
            <span className="mainspan">
              대학교 선호 과목 기반 취업 정보 추천 서비스
            </span>
          </p>
        </div>
      </div>
      <div className="maingrid2">
  {/* Image 1 and Option Box */}
        {!isSubjectVisible && (
            <>
              <img src="./img/school.jpg" className="mainimg" alt="Image 1" />
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

                <img src="./img/open-book.jpg" className="mainimg" alt="Image 2"/>
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

                {/* 검색 버튼 */}
                <div className="grid-item">
                    <button className="search-button" onClick={handleSearchClick}>
                  검색
                </button>
              </div>
            </>
        )}

        {/* 숨겨진 요소 */}
        {isSubjectVisible && (
            <div className="search-subject">
              <input
                  className="subject"
                  type="text"
                  defaultValue={"검색..."}
                  onChange={() => {}}
              />
              <div className="create-list">
                <button className="add-list-button">추가</button>
                <button className="create-list-button">완료</button>
              </div>
            </div>
        )}
      </div>
    </div>
      );
    }

function Main() {
  return (
      <div>
        <Welcome/>
      </div>
  );
}

export default Main;
