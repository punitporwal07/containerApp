/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package online;

import java.sql.*;
import java.util.Vector;


/**
 *
 * @author Viveck
 */
public class StudentAssignment
{
    ConnectionPool c;
    String EnrollNo;
    int Sub1;
    int Sub2;
    int Sub3;

     public StudentAssignment()
    {
        EnrollNo=new String();
        Sub1=0;
        Sub2=0;
        Sub3=0;

    }


     public StudentAssignment(String EnrollNo)
    {
         this.EnrollNo = EnrollNo;
         Sub1=0;
         Sub2=0;
         Sub3=0;
    }

    public StudentAssignment(String EnrollNo, int Sub1, int Sub2, int Sub3)
    {
       
        this.EnrollNo = EnrollNo;
        this.Sub1 = Sub1;
        this.Sub2 = Sub2;
        this.Sub3 = Sub3;
    }


    public String getEnrollNo()
    {
        return EnrollNo;
    }

    public void setEnrollNo(String EnrollNo)
    {
        this.EnrollNo = EnrollNo;
    }

    public int getSub1()
    {
        return Sub1;
    }

    public void setSub1(int Sub1)
    {
        this.Sub1 = Sub1;
    }

    public int getSub2()
    {
        return Sub2;
    }

    public void setSub2(int Sub2)
    {
        this.Sub2 = Sub2;
    }

    public int getSub3()
    {
        return Sub3;
    }

    public void setSub3(int Sub3)
    {
        this.Sub3 = Sub3;
    }


      public boolean add()
    {
     int x=0;
     Connection conn=null;
     try
     {
      if(c==null)
      {
        c=ConnectionPool.getInstance();
        c.initialize();
      }
      conn=c.getConnection();
      Statement stmt = conn.createStatement();
      String sql="Insert into studentass(EnrollNo,Sub1,Sub2,Sub3) values('"+ getEnrollNo() +"',"+ getSub1() +","+ getSub2() +","+ getSub3()+")";
      System.out.println(sql);
      int y = 0;
      y=stmt.executeUpdate(sql);
      if(y==0)
      {
       c.putConnection(conn);
       return false;
      }
     }
     catch(Exception e)
     {
      System.out.println(e);
     }
     c.putConnection(conn);
     return true;
    }

    public boolean update()
    {
     int y = 0;
     Connection conn=null;
     try
     {
      if(c==null)
      {
       c=ConnectionPool.getInstance();
       c.initialize();
      }
      conn=c.getConnection();
      Statement stmt=conn.createStatement();
      String sql= "Update studentass set Sub1="+ getSub1() +",Sub2="+ getSub2() +",Sub3="+ getSub3() +" where EnrollNo = " + getEnrollNo();
      y = stmt.executeUpdate(sql);


      c.putConnection(conn);
    }
    catch(Exception e)
    {
     System.out.println(e);
     return false;
    }

   if(y==0)
   return false;
   else
   return true;
  }


   public boolean delete()
   {
    int x=0;
    Connection conn=null;
    try
    {
     if(c==null)
     {
      c=ConnectionPool.getInstance();
      c.initialize();
     }
     conn=c.getConnection();
     Statement stmt = conn.createStatement();
     String sql = "delete from studentass where EnrollNo= " + getEnrollNo();
      x = stmt.executeUpdate(sql);
      c.putConnection(conn);
    }
    catch(Exception e)
    {
     System.out.println(e);
    }
    if(x==0)
    return false;
    else
    return true;
  }



public static Vector getRecords()
{
Vector rows=new Vector();
ConnectionPool c=null;
Connection conn=null;
try
{
if(c==null)
{
 c=ConnectionPool.getInstance();
c.initialize();
}
conn=c.getConnection();
Statement stmt =conn.createStatement();
String sql="Select * from online";
ResultSet rs=stmt.executeQuery(sql);
while( rs.next() )
{
Vector cr = new Vector();
cr.addElement(rs.getString(1));
cr.addElement(rs.getInt(2));
cr.addElement(rs.getInt(3));
cr.addElement(rs.getInt(4));
rows.addElement(cr);
}
c.putConnection(conn) ;
}
catch(Exception e)
{
System.out.println(e);
}
return rows ;
}
public static StudentAssignment  getRecord(String EnrollNo)
{
StudentAssignment obj = new StudentAssignment ();
try{
ConnectionPool c = null;
Connection conn = null;
if(c == null)
{
c = ConnectionPool.getInstance();
c.initialize();
}
conn = c.getConnection();
Statement stmt = conn.createStatement();
String sql="Select * from online where  EnrollNo =" + EnrollNo ;
ResultSet rs=stmt.executeQuery(sql);
if(!rs.next())
return null;
obj = new StudentAssignment(rs.getString(1),rs.getInt(2),rs.getInt(3),rs.getInt(4));
c.putConnection(conn) ;
System.out.println(sql);
}catch(Exception e){System.out.println(e); }
return obj;
}

 public static String getOptions()
{
String rows =new String();
try{
ConnectionPool c = null;
Connection conn = null;
if(c == null)
{
c = ConnectionPool.getInstance();
c.initialize();
}
conn = c.getConnection();
Statement stmt = conn.createStatement();
String sql = "select *  from online ";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
rows+= " <option value="+rs.getString(1)+"> " +"  "+rs.getString(2)   +"\n";
}
c.putConnection(conn) ;
}
catch(Exception e)
{
System.out.println(e);
 }
return rows;
}

public static void main(String args[])
{



StudentAssignment e = new StudentAssignment("0186it071059",1,2,3);
  System.out.println(e.add());
  StudentAssignment e1 = new StudentAssignment("0186it071050",1,2,3);
  System.out.println(e1.add());



}


}
