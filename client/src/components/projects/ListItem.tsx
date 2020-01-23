import React from "react";
import { Link } from "react-router-dom";
interface Props {
  id: string;
  name: string;
  description: string;
}

const ListItem = ({ id, name, description }: Props) => {
  return (
    <li key={id}>
      <h2>
        <Link to={`project/${id}`}>{name}</Link>
      </h2>
      <p>{description}</p>
    </li>
  );
};

export default ListItem;
