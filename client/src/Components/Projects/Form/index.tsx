import React, { useState } from "react";
import {
  useCreateProjectMutation,
  useProjectsQuery
} from "../../../generated/graphql";

const ProjectForm = () => {
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const createProjectMutation = useCreateProjectMutation();
  const projectsQuery = useProjectsQuery();
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
      <button
        type="button"
        onClick={async () => {
          // TODO Fix the error
          await createProjectMutation({ variables: { name, description } });
          await projectsQuery.refetch();
          console.log("Created Project");
        }}
      >
        Submit
      </button>
    </form>
  );
};

export default ProjectForm;
