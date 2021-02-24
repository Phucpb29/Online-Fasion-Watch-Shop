import React from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";
import AccountDetail from "./account-detail/account-detail";
import AccountOrder from "./account-order/account-order";
import AccountPassword from "./account-password/account-password";

Account.propTypes = {};

function Account(props) {
  const urlMatch = useRouteMatch();
  return (
    <div>
      <Router>
        <Switch>
          <Route exact path={urlMatch}>
            <AccountDetail />
          </Route>
          <Route path={`${urlMatch}/lichsumuahang`}>
            <AccountOrder />
          </Route>
          <Route path={`${urlMatch}/doimatkhau`}>
            <AccountPassword />
          </Route>
        </Switch>
      </Router>
    </div>
  );
}

export default Account;
