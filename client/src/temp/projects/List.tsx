import React from "react";
import Item from "components/projects/ListItem";

interface ProjectProps {
  projects: {
    id: string;
    name: string;
    description: string;
  }[];
}

const List = ({ projects }: ProjectProps) => {
  return (
    <ul>
      {projects.map(project => (
        <Item
          key={project.id}
          id={project.id}
          name={project.name}
          description={project.description}
        />
      ))}
    </ul>
  );
};

export default List;
