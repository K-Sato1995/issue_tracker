import React, { useState } from "react";
import { useMutation } from "@apollo/react-hooks";
import { loader } from "graphql.macro";
import {
  CreateProject,
  CreateProjectVariables,
  CreateProject_createProject_project
} from "../../../__types__/CreateProject";

const CREATE_PROJECT = loader("src/graphql/mutations/createProject.graphql");

const ProjectForm = () => {
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

  return (
    <form>
      <h3>Project Form</h3>
      <input
        value={name}
        onChange={e => setName(e.target.value)}
        type="text"
        placeholder="name"
      />
      <input
        value={description}
        onChange={e => setDescription(e.target.value)}
        type="text"
        placeholder="Description"
      />
      <button type="button">Submit</button>
    </form>
  );
};

export default ProjectForm;
