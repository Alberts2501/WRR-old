/*import logo from './logo.svg';*/
import './App.css';
import ScrollContainer from './components/elements/ScrollContainer';
import BurgerMenu from './components/elements/NavbarButton';
import LoginForm from './components/LoginForm';
import RegisterForm from './components/RegisterForm';
import ForgotPasswordPage from './components/ForgotPassword';
import ProfilePage from './components/ProfilePage';
/*import HomePage from './components/HomePage';*/

function App() {
  return (
    <div className="App">
      <BurgerMenu>
        <ScrollContainer />
      </BurgerMenu>
    </div>
  );
}

export default App;
