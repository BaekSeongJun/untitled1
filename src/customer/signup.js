import axios from "axios";
import './signup.css';
import React, { useRef, useState } from "react";
import { API_URL } from "../config/contansts";
import { useNavigate } from "react-router";

const SignUpForm = () => {
  const [name, setName] = useState('');
  const [id, setId] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [password2, setPassword2] = useState('');
  const [second, setSecond] = useState('');
  const [third, setThird] = useState('');
  const [context, setContext] = useState('');
  const pw_css = useRef(document.getElementById('pw'));
  const pw2_css = useRef(document.getElementById('pw2'));
  const navigate = useNavigate();

  return (
    <div className="signup-form-container">
      <p><span>이름</span></p>
      <input id="id" type="text" placeholder="회원님의 이름을 입력해주세요." onChange={(e) => {
        setName(e.target.value);
      }}></input>
      <p><span>아이디</span></p>
      <input id="id" type="text" placeholder="아이디를 입력해주세요." onChange={(e) => {
        setId(e.target.value);
      }}></input>
      <div className="password-container">
        <div>
          <p><span>비밀번호</span></p>
          <input ref={pw_css} id="pw" type="password" placeholder="비밀번호를 입력해주세요." onChange={(e) => {
            setPassword(e.target.value);
          }}></input>
        </div>
        <div>
          <p><span>비밀번호 재입력</span></p>
          <input ref={pw2_css} id="pw2" type="password" placeholder="비밀번호를 다시 입력해주세요." onChange={(e) => {
            setPassword2(e.target.value);
          }}></input>
        </div>
      </div>
      <p><span>이메일</span></p>
      <input type="text" placeholder="이메일을 입력해주세요." onChange={(e) => {
        setEmail(e.target.value);
      }}></input>
      <p><span>핸드폰 번호</span></p>
      <div className="phone-number">
        <select>
          <option key="skt" value='SKT'>SKT</option>
          <option key="lg" value='LG U+'>LG U+</option>
          <option key="kt" value='KT'>KT</option>
        </select>
        <p>010</p>
        <p>-</p>
        <input id="second" type="text" placeholder=""  maxLength={4} onChange={(e) => {
          setSecond(e.target.value);
        }}></input>
        <p>-</p>
        <input id="third" type="text" placeholder=""  maxLength={4} onChange={(e) => {
          setThird(e.target.value);
        }}></input>
      </div>
      <div id="warning">
        {context}
      </div>
      <div className="login-button" onClick={async () => {
        if(!name || !password || !password2 || !email || !second || !third) {
          setContext('필수정보를 입력해주세요 !')
        } else {
          if(password == password2) {
            const data = {
              id : id,
              name: name,
              email : email,
              password : password,
              phone: '010'+second+third
            }
            await axios.post(`${API_URL}/signup`, data)
              .then(res => {
                if(res.data == 'success') {
                  alert('회원가입을 축하드립니다 !');
                  navigate('/members/login');
                } else if(res.data == 'fail') {
                  alert('다시 확인해주세요 !');
                }
              })
              .catch(err => {
                console.log(err);
              })
          } else if(password !== password2) {
            pw_css.current.style.setProperty('border', '1px solid red');
            pw2_css.current.style.setProperty('border', '1px solid red');
          }
        }
      }}>
        회원가입
      </div>
    </div>
  )
}

const SignUpPage = () => {
  return(
    <div id='signup-page-wrapper'>
      <div id="signup-page-container">
        <div className="customer-h1">
          <h1>회원가입</h1>
        </div>
        <SignUpForm/>
      </div>
    </div>
  )
}

export default SignUpPage;