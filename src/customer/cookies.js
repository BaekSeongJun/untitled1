// 박성종 - 쿠키 저장, 정보 확인, 삭제

import {Cookies} from 'react-cookie';

const cookies = new Cookies();

export const setCookie = (name, value, options) => {
 	return cookies.set(name, value, {...options});
}

export const getCookie = (name) => {
 return cookies.get(name); 
}

export const delCookie = (name) => {
  return cookies.remove(name, {path : '/'});
}
