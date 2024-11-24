import React, { useEffect, useRef } from "react";
import logo from "../1.jpg";
import "./header.css";
import { Link } from "react-router-dom";
import { getCookie, delCookie } from "../customer/cookies";
// import SearchComponent from "./testSearch";
// import Searchbar from "./searchbar";

function Header() {
  const ex = useRef(document.getElementById("header-container"));
  const cookie = getCookie("loginCookie");
  let context = null;

  const handleScroll = () => {
    const scrollPosition = window.scrollY;
    if (scrollPosition > 0) {
      ex.current.style.setProperty("top", "-80px"); // Hide the header when scrolling down
    } else if (scrollPosition === 0) {
      ex.current.style.setProperty("top", "0px"); // Reveal the header when at the top
    }
  };

  useEffect(() => {
    window.addEventListener("scroll", handleScroll);

    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);

  return (
    <header>
      <div id="header-wrapper">
        <div id="header-container" ref={ex}>
          <nav id="header-second-menu">
            <ul className="header-second-menu-fromInsideOut">
              <div className="nav_menu">
                <img className="headerimg" src={logo} alt="Logo" />
              </div>
              <div className="nav_menu">
                <Link to="/" className="nav_a" style={{ textDecoration: "none" }}>
                  <span>홈</span>
                </Link>
              </div>
              <div className="nav_menu">
                <Link to="/" className="nav_a" style={{ textDecoration: "none" }}>
                  <span>즐겨찾기</span>
                </Link>
              </div>
              <div className="nav_menu">
                <a href="/" className="nav_a" style={{ textDecoration: "none" }}>
                  <span>내정보</span>
                </a>
              </div>
              <div className="nav_menu">
                <Link to="/" className="nav_a" style={{ textDecoration: "none" }}>
                  <span>설정</span>
                </Link>
              </div>
              <div className="nav_menu">
                <Link to="/" className="nav_a" style={{ textDecoration: "none" }}>
                  <span>고객센터</span>
                </Link>
              </div>
            </ul>
          </nav>
        </div>
      </div>
    </header>
  );
}

export default Header;
