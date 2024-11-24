import React from "react";
import Header from './include/header';
import Main from './component/main';
import "./App.css";
import { Routes, Route } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <Header />
      <div id="App_Main">
        <Routes>
          {/* Main screen */}
          <Route path='/' element={<Main />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;
