/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

import javax.xml.registry.infomodel.User;

/**
 *
 * @author Supercheap Computer
 */



public class UserDao {
   
public boolean add(User user) {
       String sql="insert into stu(username,gender,password)";
    try {
        
        pstmt=con.prepareStatement(sql);
        pstmt.setString(1, stu.getNo());
        pstmt.setString(2, stu.getName());
        pstmt.setString(3, stu.getPhone());
        pstmt.executeUpdate();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        returnfalse;
    } catch (SQLException e) {
        e.printStackTrace();
        returnfalse;
    } finally{
        DBUtil.close(con, pstmt, rs);
    }
    returntrue;
}

//查看学生列表（1所有）
public List<Stu> list() {
       List<Stu> list=newArrayList<Stu>();//是线性列表，ArrayList是
    
       String sql="select * from stu";
    
    try {
        con=DBUtil.getCon();
        pstmt=con.prepareStatement(sql);
//pstmt.executeUpdate();//用于增删改
        rs=pstmt.executeQuery();//用于查询
        while (rs.next()) {
            
//Stustu=new Stu(rs.getString("stu_no"),rs.getString("stu_name"),rs.getString("phone"));
            //上行写法亦可为：
            Stu stu=new Stu();
            stu.setNo(rs.getString("stu_no"));//取结果集里面学号这一列的值赋给
            stu.setName(rs.getString("stu_name"));
            stu.setPhone(rs.getString("phone"));
            
            list.add(stu);
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally{
        DBUtil.close(con, pstmt, rs);
    }
    return list;
}
//查看学生列表（2根据学生学号显示学生信息）
    public Stu findSomeone(String no) {
           Stu stu=null;
           String sql="select * from stu where stu_no=?";
        
        try {
            con=DBUtil.getCon();
            pstmt=con.prepareStatement(sql);
//pstmt.executeUpdate();//用于增删改
            pstmt.setString(1,no);
            rs=pstmt.executeQuery();//用于查询
            while (rs.next()) {
                
//Stustu=new Stu(rs.getString("stu_no"),rs.getString("stu_name"),rs.getString("phone"));
                //上行写法亦可为：
                stu=new Stu();
                stu.setNo(rs.getString("stu_no"));//取结果集里面学号这一列的值赋给
                stu.setName(rs.getString("stu_name"));
                stu.setPhone(rs.getString("phone"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{
            DBUtil.close(con, pstmt, rs);
        }
        returnstu;
    }
//修改学生信息
publicboolean update(Stu stu) {
       String sql="update stu set stu_name=?,phone=? wherestu_no=?";
    try {
        con=DBUtil.getCon();
        pstmt=con.prepareStatement(sql);
        pstmt.setString(3, stu.getNo());
        pstmt.setString(1, stu.getName());
        pstmt.setString(2, stu.getPhone());
        pstmt.executeUpdate();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        returnfalse;
    } catch (SQLException e) {
        e.printStackTrace();
        returnfalse;
    } finally{
        DBUtil.close(con, pstmt, rs);
    }
    returntrue;
   }

//删除学生信息
publicboolean del(String id) {
       String sql="delete from stu where stu_no=?";
    try {
        con=DBUtil.getCon();
        pstmt=con.prepareStatement(sql);
        pstmt.setString(1,id);
        
        pstmt.executeUpdate();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        returnfalse;
    } catch (SQLException e) {
        e.printStackTrace();
        returnfalse;
    } finally{
        DBUtil.close(con, pstmt, rs);
    }
    returntrue;
   }
}
