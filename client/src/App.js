import React from 'react'
import { BrowserRouter as Router, Route, Link, Switch } from 'react-router-dom'
import Divelocation from './pages/divelocation/Divelocation'
//賣家後台page
import SellerBack from '../src/components/seller_back/SellerBack'
//課程相關page
import ClassList from './pages/class/ClassList'
import ClassDetailPage from './pages/class/classDetailPage'
import MemberClass from './pages/class/MemberClass'
//活動相關page
import EventList from './pages/event/EventList'
import EventMapList from './pages/event/EventMapList'
import EventDetail from './pages/event/EventDetail'
import MemberEvent from './pages/event/MemberEvent'

import Items from './pages/item/itemList'
import ItemDetail from './pages/item/itemDetail'
import ShoppingCart from './pages/order/shoppingCart'
import CheckOut from './pages/order/checkOut'

// Member
import MemberLogin from './pages/members/MemberLogin'
import MemberRegister from './pages/members/MemberRegister'
import MemberUser from './pages/members/MemberUser'
// import MemberOrder from './pages/members/MemberOrder'
// import MemberHomepage from './pages/members/MemberHomepage'
// import MemberSellerLogin from './pages/members/ＭemberSellerLogin'
// import MemberBlog from './pages/members/MemberBlog'
// import MemberMessage from './pages/members/MemberMessage'

import Home from './pages/Home'

function App(props) {
  // console.log(props)
  return (
    <Router>
      <>
        <Switch>
          <Route path="/seller">
            <SellerBack />
          </Route>
          <Route path="/Class/:classId">
            <ClassDetailPage />
          </Route>
          <Route path="/Class">
            <ClassList />
          </Route>
          <Route path="/event/:eventId">
            <EventDetail />
          </Route>
          <Route path="/eventlist">
            <EventList />
          </Route>
          <Route path="/eventmaplist">
            <EventMapList />
          </Route>
          <Route path="/items/:itemId">
            <ItemDetail />
          </Route>
          <Route path="/items">
            <Items />
          </Route>
          <Route path="/member/mycart">
            <ShoppingCart />
          </Route>
          <Route path="/member/checkout">
            <CheckOut />
          </Route>

          {/* Member Routes */}
          <Route path="/memberuser">
            <MemberUser />
          </Route>
          <Route path="/memberlogin">
            <MemberLogin />
          </Route>
          <Route path="/memberregister">
            <MemberRegister />
          </Route>
          
          
          {/* <Route path="/memberhomepage">
            <MemberHomepage />
          </Route>
          <Route path="/memberuser">
            <MemberUser />
          </Route>
          
          <Route path="/membersellerlogin">
            <MemberSellerLogin />
          </Route>
          <Route path="/memberregister">
            <MemberRegister />
          </Route>
          <Route path="/memberorder">
            <MemberOrder />
          </Route>
          <Route path="/memberclass">
            <MemberClass />
          </Route>
          <Route path="/memberevent">
            <MemberEvent />
          </Route>
          <Route path="/memberblog">
            <MemberBlog />
          </Route>
          <Route path="/membermessage">
            <MemberMessage />
          </Route> */}


          <Route path="/location/:LocationID">
            <Divelocation />
          </Route>
          <Route path="/">
            <Home />
          </Route>
        </Switch>
      </>
    </Router>
  )
}

export default App
