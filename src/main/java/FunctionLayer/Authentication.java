package FunctionLayer;

import DBAccess.UserMapper;
import Exceptions.LoginSampleException;
import Model.User;

/**
 * The purpose of Authentication is to...
 * @author kasper
 */
public class Authentication {

    public static User login(String email, String password ) throws LoginSampleException {
        return UserMapper.login( email, password );
    } 

    public static User createUser( String email, String password ) throws LoginSampleException {
        User user = new User(email, password);
        UserMapper.createUser( user );
        return user;
    }

}
