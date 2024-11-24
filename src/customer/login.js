import React, { useState, useRef } from "react";
import './login.css'
import { Link, useNavigate } from "react-router-dom";
import { setCookie } from "./cookies";
import axios from "axios";
import { API_URL } from "../config/contansts";

const LoginForm = (props) => {
  const [id, setId] = useState();
  const [password, setPassword] = useState();
  const [context, setContext] = useState(null);
  const id_css = useRef(document.getElementById('id'));
  const pw_css = useRef(document.getElementById('password'));
  const navigate = useNavigate();
  const setTime = 3600000; //1시간


  return(
    <div className="login-form-container">
      <div className="login-input-container">
        <p>
          <span>아이디</span>
        </p>
        <input ref={id_css} id='id' type="text" placeholder="아이디를 입력해 주세요." onChange={(e) => {
          setId(e.target.value);
        }}></input>
      </div>
      <div className="login-input-container">
        <p>
          <span>비밀번호</span>
        </p>
        <input ref={pw_css} id="password" type="password" placeholder="비밀번호를 입력해 주세요." onChange={(e) => {
          setPassword(e.target.value);
        }}></input>
      </div>
      <p id="fail-login">{context}</p>
      <div className="login-button" onClick={async () => {
        if(!id || !password) {
          id_css.current.style.setProperty('border', '1px solid red')
          pw_css.current.style.setProperty('border', '1px solid red')
          setContext('아이디 또는 비밀번호를 입력해주세요 !');
        }
        await axios.post(`${API_URL}/login`, { id: id, password: password})
        .then((res) => {
          if(res.data == '1') {
            console.log('로그인 성공');
            setCookie('loginCookie', id, {
              path: '/',
              secure: '/',
              expires: new Date(Date.now() + setTime),
            });
            navigate(sessionStorage.getItem('BeforePage') ? sessionStorage.getItem('BeforePage') : '/');
            document.location.reload(true);
          }else if(res.data == '2') {
            id_css.current.style.setProperty('border', '1px solid red')
            pw_css.current.style.setProperty('border', '1px solid red')
            setContext('아이디 또는 비밀번호를 다시 확인해주세요 !');
          }
        })
        .catch((err) => {
          console.log(err);
        })
      }}>로그인</div>
    </div>
  )
}

function LoginPage() {
  const REST_API_KEY = '7e42b9acd1b62e84dc8ee847360eb8fa';
  const REDIRECT_URI = 'http://localhost:3000/ouath';
  const link = `https://kauth.kakao.com/oauth/authorize?client_id=${REST_API_KEY}&redirect_uri=${REDIRECT_URI}&response_type=code`;
  const navigate = useNavigate();


  // 휴대폰 인증 버튼 클릭시 실행되는 함수, NICE 표준창 호출
//  const onClickCertify = async () => {
//   const { form } = document;
//   // const left = screen.width / 2 - 500 / 2;
//   // const top = screen.height / 2 - 800 / 2;
//   // const option = `status=no, menubar=no, toolbar=no, resizable=no, width=500, height=600, left=${left}, top=${top}`;
//   const returnUrl = `http://localhost:3000/api/nice`;  // 본인인증 결과를 전달받을 api url

//   // 위에서 언급했던 token api가 요청 데이터를 암호화한 후 표준창 호출에 필요한 데이터를 응답해준다.
//   // const res = await api.get('/api/token', { returnUrl });

//   // if (form && res.data) {
//   //     const { enc_data, integrity_value, token_version_id } = res.data;
//   //     window.open('', 'nicePopup', option);

//   //     form.target = 'nicePopup';
//   //     form.enc_data.value = enc_data;
//   //     form.token_version_id.value = token_version_id;
//   //     form.integrity_value.value = integrity_value;
//       form.submit();
//   // }
//   };

  return (
    <div id="login-page-wrapper">
      <div id="login-page-container">
        <div className="customer-h1">
          <h1>로그인</h1>
        </div>
        <LoginForm/>
        <div className="other-container">
          {/* <span >아이디/비밀번호 찾기</span> */}
          <form name="form" id="form" action="https://nice.checkplus.co.kr/CheckPlusSafeModel/service.cb">
              <input type="hidden" id="m" name="m" value="service" />
              <input type="hidden" id="token_version_id" name="token_version_id" value="" />
              <input type="hidden" id="enc_data" name="enc_data" />
              <input type="hidden" id="integrity_value" name="integrity_value" />
          </form>
          <div onClick={() => {
            navigate('/members/signup');
          }}>이메일로 회원가입</div>
        </div>
        {/* <div className="kakao-login login-button" onClick={async () => {
          await axios.get(`${API_URL}/auth/kakao`)
            .then(res => {
              console.log('성공');
            })
            .catch(err => {
              console.log(err);
            })
        }}>
          <p></p>
          <span>카카오 1초 회원가입/로그인</span>
        </div>
        <div className="naver-login login-button">
          <p></p>
          <span>네이버 1초 회원가입/로그인</span>
        </div> */}
      </div>
    </div>
  )
}

export default LoginPage;