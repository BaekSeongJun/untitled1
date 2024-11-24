import { useState } from "react";
import { useNavigate } from "react-router-dom";
import './searchresult.css';

function Searchbar(props) {
  const [enteredKeyword, setEnteredKeyword] = useState("");
  const navigate = useNavigate();

  const changeHandler = (e) => {
    e.preventDefault();
    setEnteredKeyword(e.target.value);
  };

  const enterHandler = (e) => {
    if (e.keyCode === 13) {
    //   props.searchHandler(enteredKeyword, e.keyCode);
        
        navigate(`/search/${enteredKeyword}`);
      setEnteredKeyword("");
    }
  };

  return (
    <input
      type="search"
      name="search"
      className="custom_input"
      onKeyDown={enterHandler}
      onChange={changeHandler}
      placeholder="검색어를 입력해주세요"
    />
  );
}

export default Searchbar;