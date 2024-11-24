import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import axios from 'axios';
import { API_URL } from '../config/contansts';
import './searchresult.css';

function Searchre() {
  const [searchResults, setSearchResults] = useState([]); //메뉴
  const [mdResults, setMdResults] = useState([]);  //MD
  const [postResults, setPostResults] = useState([]);  //이벤트
  const [noticeResults, setNoticeResults] = useState([]);  //공지사항
  const [socialResults, setSocialResults] = useState([]);  //사회 공헌 활동
  const [qnaResults, setQnAResults] = useState([]);  //QnA 활동
  const { keyword } = useParams(); // 검색 키워드 가져오기
  
  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(`${API_URL}/search/${keyword}`);
        console.log(response);
        setSearchResults(response.data.menuItems); //메뉴
        setMdResults(response.data.mdItems); //MD
        setPostResults(response.data.eventItems); //이벤트
        setNoticeResults(response.data.noticeItems); //공지사항
        setSocialResults(response.data.socailItems); //사회 공헌 활동
        setQnAResults(response.data.qnaItems); //QnA 활동
        
      } catch (error) {
        console.error('Error fetching search results:', error);
      }
    };

    fetchData();
  }, [keyword]); // 검색 키워드가 변경될 때마다 실행

  const renderFirstImage = (imgUrls) => {
    if (!imgUrls) return null;

    const imageUrlsArray = imgUrls.split(','); 
    // 쉼표(,)로 구분된 이미지 URL 문자열을 분할하여 배열

    // 첫 번째 이미지 URL만 반환
    return <img src={imageUrlsArray[0].trim()} alt="1" />;
  };

  return (
  <div id='searchresult_main'>
    {/* 메뉴 , MD 검색 */}
    <div id="searchresult_container">
      <ul id="searchresult_ul">
        <div id="searchresult_title">
          <h2>메뉴 검색 결과</h2>
        </div>
        <div id='searchresult_boxmain'>
          {/* 첫 번째 데이터 세트가 검색 결과를 가지고 있을 경우 */}
          {searchResults.length > 0 &&
            searchResults.map((result) => (
              <Link to={`/product/drink`} key={result.id}>
                <li>
                  <div id="searchresult_box">
                    {renderFirstImage(result.img_url)} {/* 이미지 함수 호출 */}
                    <div id="searchresult_detail">
                      <p id="searchresult_p">
                        <b>{result.name}</b>
                      </p>
                    </div>
                  </div>
                </li>
              </Link>
            ))
          }

          {/* 두 번째 데이터 세트가 검색 결과를 가지고 있을 경우 */}
          {mdResults.length > 0 &&
            mdResults.map((result) => (
              <Link to={`/product/md`} key={result.id}>
                <li>
                  <div id="searchresult_box">
                    {renderFirstImage(result.img_url)} {/* 이미지 함수 호출 */}
                    <div id="searchresult_detail">
                      <p id="searchresult_p">
                        <b>{result.name}</b>
                      </p>
                    </div>
                  </div>
                </li>
              </Link>
            ))
          }
          
          {/* 두 데이터 세트 모두 검색 결과가 없을 경우 */}
          {searchResults.length === 0 && mdResults.length === 0 && (
            <div id="searchresult_title">
              <p>검색 결과가 없습니다.</p>
            </div>
          )}
        </div>
      </ul>    
    </div>

    {/* 이벤트,공지사항,사회공헌,QnA 검색 */}
    <div id='postResults_container'>
      <ul id="postResults_ul">
        <div id="searchresult_title">
          <h2>게시물 검색 결과</h2>
        </div>
          {postResults.length === 0 &&
          noticeResults.length === 0 &&
          socialResults.length === 0 &&
          qnaResults.length === 0 && (
            <div id="searchresult_title">
              <p>검색 결과가 없습니다.</p>
            </div>
        )}

        {/* 이벤트 */}
        {postResults.length > 0 &&
          postResults.map((result) => (
            <Link to={`/brandnews/event`} key={result.id}>
              <li id='postResults_box0'>
                <div id="postResults_box">
                  <div id='postResults_box2'>
                    {renderFirstImage(result.img_url)}
                    <div id='postResults_box3'>
                      <div id="postResults_detail">
                        <h4 id="postResults_p">
                          <b>{result.title}</b>
                        </h4>
                      </div>
                      <div id='postResults_box4'>
                        <p> 기간 :
                          <span id='postResults_box5'>
                            {result.start}~
                            {result.end}
                          </span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </Link>
          ))
        }

        {/* 공지사항 */}
        <div id='noticeResults_container'>
          {noticeResults.length > 0 &&
            noticeResults.map((result) => {
              // 날짜 데이터에서 시간 부분 제거
              const dateWithoutTime = result.date.split('T')[0]; // 'T'를 기준으로 나누어 시간 부분 제거

              return (
                <Link to={`/brandnews/notice`} key={result.id}>
                  <li>
                    <div id='noticeResults_box'>
                      <div id='noticeResults_detail'>
                        <p id='noticeResults_p'>
                          <div id='noticeResults_detail2'>
                            <div id='noticeResults_box2'>
                              <div id='noticeResults_h4'><h4>공지사항</h4></div>
                              <div id='noticeResults_b'><p>{result.title}</p></div>
                            </div>
                            <div id='noticeResults_box3'>
                              {/* 시간이 제거된 날짜 출력 */}
                              <p>{dateWithoutTime}</p>
                            </div>
                          </div>
                        </p>
                      </div>
                    </div>
                  </li>
                </Link>
              );
            })
          }
        </div>

        {/* QnA */}
        <div id='QnAResults_continer'>
          {qnaResults.length > 0 &&
            qnaResults.map((result) => (
              <Link to={`/qna`} key={result.id}>
                <li>
                <div id="QnAResults_box">
                    <div id="QnAResults_detail">
                      <p id="QnAResults_p">
                        <div id='QnAResults_detail2'>
                          <div id='QnAResults_box2'>
                            <div id='QnAResults_h4'><h4>게시판 QnA</h4></div>
                            <div id='QnAResults_b'><p>{result.question}</p></div>
                          </div>
                          <div id='QnAResults_box3'>
                            <p>{result.category}</p>
                          </div>
                        </div>
                      </p>
                    </div>
                  </div>
                </li>
              </Link>
            ))
          }
        </div>

        {/* 사회공헌 */}
        <div id='socialResults_container'>
          {socialResults.length > 0 &&
            socialResults.map((result) => (
              <Link to={`/brandnews/social`} key={result.id}>
                <li>
                  <div id="socialResults_box">
                    {renderFirstImage(result.img_url)}
                    <div id="socialResults_detail">
                      <p id="socialResults_p">
                        <b>{result.title}</b>
                      </p>
                    </div>
                  </div>
                </li>
              </Link>
            ))
          }
        </div>
      </ul>
    </div>
   </div>
  );
}

export default Searchre;







