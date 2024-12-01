import React from "react";
import Header from './include/header';
import Main from './component/main';
import Loadmap from './component/loadmap';
import SubjectSearch from './component/search';
import "./App.css";
import { Routes, Route } from "react-router-dom";

function App() {
    return (
        <div className="App">
            <div className="app-container">
                <Header />
                <div id="App_Main">
                    <Routes>
                        {/* Main screen */}
                        <Route path='/' element={<Main />} />
                        <Route path="/search" element={<SubjectSearch />} />
                        <Route path='/loadmap' element={<Loadmap />} />
                    </Routes>
                </div>
            </div>
        </div>
    );
}

export default App;
