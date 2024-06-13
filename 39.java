// Model
public class User {
    private String name;
    private int age;
    // Getters and Setters
}

// View
public class UserView {
    public void printUserDetails(String userName, int userAge){
        System.out.println("User: ");
        System.out.println("Name: " + userName);
        System.out.println("Age: " + userAge);
    }
}

// Controller
public class UserController {
    private User model;
    private UserView view;

    public UserController(User model, UserView view){
        this.model = model;
        this.view = view;
    }

    public void setUserName(String name){
        model.setName(name);        
    }

    public String getUserName(){
        return model.getName();        
    }

    public void setUserAge(int age){
        model.setAge(age);        
    }

    public int getUserAge(){
        return model.getAge();        
    }

    public void updateView(){                
        view.printUserDetails(model.getName(), model.getAge());
    }    
}
/*Model:
 Represents the application's data and business logic. 
It directly manages the data, logic, and rules of the application.

View: 
Represents the presentation of the data.
 It displays the data to the user and sends user commands to the Controller.

Controller: 
Acts as an intermediary between Model and View. 
It listens to user input, processes it (including commands to the Model to update data), and updates the View accordingly
*/