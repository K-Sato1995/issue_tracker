import React from "react";

interface Props {
  id: string;
  name: string;
  description: string;
}

const Item = ({ id, name, description }: Props) => {
  return (
    <li key={id}>
      <h2>{name}</h2>
      <p>{description}</p>
    </li>
  );
};

export default Item;
