
import dao.UserDAO;
import model.UserModel;


public class test {
    public static void main(String[] args) {
        UserDAO u = new UserDAO() ; 
        UserModel k = UserDAO.getUserByPhone("21832") ; 
        System.out.println(k);
        
    }
}
