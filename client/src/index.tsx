import React from "react";
import ReactDOM from "react-dom";
import App from "./Components/App";
import { ApolloProvider } from "react-apollo";
import { client } from "./middleware";
import * as serviceWorker from "./serviceWorker";

ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
  document.getElementById("root")
);
serviceWorker.unregister();
