import React from "react";
import ReactDOM from "react-dom";
import App from "./Components/App";
import { ApolloProvider } from "@apollo/react-hooks";
import { client } from "./middleware";
import * as serviceWorker from "./serviceWorker";

ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
  document.getElementById("root")
);
serviceWorker.unregister();
