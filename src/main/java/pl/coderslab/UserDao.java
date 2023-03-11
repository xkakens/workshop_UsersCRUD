package pl.coderslab;

import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.utils.DbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static final String CREATE_USER_QUERY = "INSERT INTO users(email, username, password) VALUES (?, ?, ?)";
    private static final String READ_USER_QUERY = "SELECT * FROM users WHERE id=?";
    private static final String UPDATE_USER_QUERY = "UPDATE users SET email=?,username=?,password=? WHERE id=?";
    private static final String DELETE_USER_QUERY = "DELETE FROM users WHERE id=?";
    private static final String FIND_ALL_QUERY = "SELECT * FROM users";
    public String hashPassword(String password){
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
    public User create(User user){
        try(Connection conn = DbUtil.getConnection()){
            PreparedStatement statement = conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getUsername());
            statement.setString(3,hashPassword(user.getPassword()));
            try {
                statement.executeUpdate();
            } catch (SQLIntegrityConstraintViolationException e){
                System.out.println("Mail zajęty");
            }
            ResultSet rs = statement.getGeneratedKeys();
            if(rs.next()){
                user.setId(rs.getInt(1));
            }
            return user;
        } catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    public User read(long UserId){
        try(Connection conn = DbUtil.getConnection()){
            PreparedStatement statement = conn.prepareStatement(READ_USER_QUERY);
            statement.setString(1,String.valueOf(UserId));
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                User user = new User(rs.getString(2),rs.getString(3),rs.getString(4));
                user.setId(Integer.parseInt(rs.getString(1)));
                return user;
            } else {
                return null;
            }
        } catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean update(User user, long id){
        try(Connection conn = DbUtil.getConnection()){
            PreparedStatement statement = conn.prepareStatement(UPDATE_USER_QUERY);
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getUsername());
            statement.setString(3,user.getPassword());
            statement.setString(4,String.valueOf(id));
            statement.executeUpdate();
            return true;
        } catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    public boolean delete(long userId) {
        try(Connection conn = DbUtil.getConnection()){
            PreparedStatement statement = conn.prepareStatement(DELETE_USER_QUERY);
            statement.setString(1,String.valueOf(userId));
            statement.executeUpdate();
            return true;
        } catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    public List<User> findAll(){
        List<User> list = new ArrayList<>();
        try(Connection conn = DbUtil.getConnection()){
            PreparedStatement statement = conn.prepareStatement(FIND_ALL_QUERY);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                User u = new User(rs.getString(2),rs.getString(3),rs.getString(4));
                u.setId(Integer.parseInt(rs.getString(1)));
                list.add(u);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}
