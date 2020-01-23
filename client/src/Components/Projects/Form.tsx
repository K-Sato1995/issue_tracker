import React, { useState, MouseEvent, useCallback } from "react";
import { useMutation } from "@apollo/react-hooks";
import { loader } from "graphql.macro";
import { CreateProject, CreateProjectVariables } from "__types__/CreateProject";

const CREATE_PROJECT = loader("src/graphql/mutations/createProject.graphql");

interface FormElements extends HTMLFormControlsCollection {
  name: HTMLInputElement;
  description: HTMLInputElement;
}

interface Props {
  refetch: any;
}

const ProjectForm = ({ refetch }: Props) => {
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [createProject, { data }] = useMutation<
    CreateProject,
    CreateProjectVariables
  >(CREATE_PROJECT, {
    variables: {
      name: name,
      description: description
    }
  });

  const handleSubmit = useCallback((e: MouseEvent<HTMLFormElement>): void => {
    e.preventDefault();
    const { name, description } = e.currentTarget.elements as FormElements;
    createProject({
      variables: { name: name.value, description: description.value }
    });
  }, refetch());

  return (
    <form onSubmit={handleSubmit}>
      <h3>Project Form</h3>
      <input
        value={name}
        onChange={e => setName(e.target.value)}
        type="text"
        name="name"
        placeholder="name"
      />
      <input
        value={description}
        onChange={e => setDescription(e.target.value)}
        type="text"
        name="description"
        placeholder="Description"
      />
      <button type="submit">Submit</button>
    </form>
  );
};

export default ProjectForm;
