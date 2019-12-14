import React, { useState } from "react";

const ProjectForm = () => {
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  // const createProjectMutation = useCreateProjectMutation();
  // const projectsQuery = useProjectsQuery();

  return (
    <form>
      <h3>Project Form</h3>
      <button type="button">Submit</button>
    </form>
  );
};

export default ProjectForm;
