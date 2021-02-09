import React from "react";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";

function App() {
  return (
    <React.Fragment>
      <header className="header">
        <Header />
      </header>
      <div className="main"></div>
      <footer className="footer">
        <Footer />
      </footer>
    </React.Fragment>
  );
}

export default App;
