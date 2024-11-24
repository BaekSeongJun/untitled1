import { GoogleLogin } from  '@react-oauth/google';
import { GoogleOAuthProvider } from '@react-oauth/google';

const GoogleLoginButton = () => {
  const clientId = '1087352918812-0sng7c0ne7imi2npab9fev8vj2ivvg16.apps.googleusercontent.com'

  return (
    <>
      <GoogleOAuthProvider clientId={clientId}>
        <GoogleLogin 
          onSuccess={(res) => {
            console.log(res);
          }}
          onFailure={(err) => {
            console.log(err);
          }}
        />
      </GoogleOAuthProvider>
    </>
  )
}