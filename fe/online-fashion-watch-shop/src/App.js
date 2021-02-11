import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import Register from "./pages/register/register";

function App() {
  return (
    <Router>
      <Header />
      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Route path="/dangnhap">
            <Login />
          </Route>
          <Route path="/dangky">
            <Register />
          </Route>
          <Route path="/*">
            <Error />
          </Route>
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;
