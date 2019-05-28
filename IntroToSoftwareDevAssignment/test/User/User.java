/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;




//实体类，封装学生类数据
/**
 */
public class User 
{
private String name;  //学号
private String gender;  //姓名
private String password;  //手机号

//getter setter
    public String getName() {
        return name;
    }
    public void setNo(String name) {
        this.name = name;
    }
    public String getGender() {
        return gender;
    }
    public void setName(String password) {
        this.password = password;
    }
    
    //无参构造函数
    public User() {
        super();
        // TODO Auto-generated constructor stub
      }
    //有参构造函数
    public User(String name, String gender, String password) {
        super();
        this.name = name;
        this.gender = gender;
        this.password = password;
     }
}