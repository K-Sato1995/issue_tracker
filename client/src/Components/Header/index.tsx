import React from "react";
import { Link } from "react-router-dom";

const Header = () => {
  return (
    <div>
      <h1>Issue Tracker</h1>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/new-project">Create New Project</Link>
        </li>
      </ul>
    </div>
  );
};

export default Header;
