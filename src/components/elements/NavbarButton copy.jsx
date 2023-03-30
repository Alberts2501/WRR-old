import React from "react";
import SideBarMenu from './SideBarMenu';

const BurgerMenu = () => {
  
  const items = [
    {value : "Home", href : "/home", icon : "anchor"},
    {value : "Contacts", href : "/contacts", icon : "anchor"},
    {value : "About us", href : "/aboutus", icon : "anchor"}, {value : "Profile", href : "/profile", icon : "anchor"},
    {value : "Search", href : "/search", icon : "anchor"},];

  return (
    <>
      <nav className='burger-menu-in-nav'>
          <div className="burger-btn">
              <span/>
          </div>
      </nav>
      <SideBarMenu header={"We are remembering"} items={items}/>
    </>
  );
};

export default BurgerMenu;
