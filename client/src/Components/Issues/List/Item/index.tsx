import React from "react";

interface Props {
  id: string;
  title: string;
}

const Item = ({ id, title }: Props) => {
  return (
    <li key={id}>
      <h2>{title}</h2>
    </li>
  );
};

export default Item;
