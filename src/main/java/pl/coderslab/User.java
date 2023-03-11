package pl.coderslab;

public class User {
    private long id = 0;
    private String email;
    private String username;
    private String password;
    public User(String email, String username, String password){
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public void setId(int id){
        this.id = id;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setUsername(String username){
        this.username = username;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public long getId(){
        return this.id;
    }
    public String getEmail(){
        return this.email;
    }
    public String getUsername(){
        return this.username;
    }
    public String getPassword(){
        return this.password;
    }

    @Override
    public String toString() {
        return "\nUser {\n" +
                "   id=" + id +
                ",\n   email='" + email + '\'' +
                ",\n   username='" + username + '\'' +
                ",\n   password='" + password + '\'' +
                "\n}";
    }
}
