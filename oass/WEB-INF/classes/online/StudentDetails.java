/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package online;

/**
 *
 * @author Viveck
 */


import java.sql.*;
import java.util.Vector;


public class StudentDetails
{
    ConnectionPool c;
    String EnrollNo;
    String Name;
    String Password;
    int Semester;

    public StudentDetails()
    {
        EnrollNo=new String();
        Name=new String();
        Password=new String();
        Semester= 0;

    }

//    public StudentDetails(String Password)
//   {
//     this.Password = Password;
//   }


      public StudentDetails(String EnrollNo,String Password)
    {
        this.EnrollNo=EnrollNo;
        this.Password=Password;

    }


    public StudentDetails(ConnectionPool c, String EnrollNo, String Name, String Password, int Semester) {
        this.c = c;
        this.EnrollNo = EnrollNo;
        this.Name = Name;
        this.Password = Password;
        this.Semester = Semester;
    }


    public StudentDetails(String Password)
    {
         this.Password = Password;
         Name=new String();
     
    }




    public StudentDetails(String EnrollNo, String Name, String Password,int Semester)
    {
        this.EnrollNo = EnrollNo;
        this.Name = Name;
        this.Password = Password;
        this.Semester = Semester;
    }


    public String getEnrollNo()
    {
        return EnrollNo;
    }

    public void setEnrollNo(String EnrollNo)
    {
        this.EnrollNo = EnrollNo;
    }

    public String getName()
    {
        return Name;
    }

    public void setName(String Name)
    {
        this.Name = Name;
    }

    public String getPassword()
    {
        return Password;
    }

    public void setPassword(String Password)
    {
        this.Password = Password;
    }

    public int getSemester()
    {
        return Semester;
    }

    public void setSemester(int Semester)
    {
        this.Semester = Semester;
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
      String sql="Insert into studentdetails(EnrollNo,Name,Password,Semester) values('"+ getEnrollNo() +"','"+ getName() +"','"+ getPassword() +"',"+ getSemester() +")";
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
      String sql= "Update online set Name='"+ getName() +"',Password='"+ getPassword() +"',Semester='"+ getSemester() +"' where EnrollNo = " + getEnrollNo();
      y = stmt.executeUpdate(sql);
         System.out.println(sql);

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
     String sql = "delete from online where EnrollNo= " + getEnrollNo();
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
String sql="Select * from studentdetails";
ResultSet rs=stmt.executeQuery(sql);
while( rs.next() )
{
Vector cr = new Vector();
cr.addElement(rs.getString(1));
cr.addElement(rs.getString(2));
cr.addElement(rs.getString(3));
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


public static StudentDetails  getRecord(String EnrollNo)
{
StudentDetails obj = new StudentDetails ();
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
obj = new StudentDetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4));
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





          public static StudentDetails getVerify(String Enrollno,String Name)
       {
           StudentDetails obj= new StudentDetails();
           try
           {
               Connection conn=null;
               ConnectionPool c=null;
               if(c==null)
               {
                   c=ConnectionPool.getInstance();
                   c.initialize();
               }
               conn = c.getConnection();
               Statement stmt = conn.createStatement();
               String sql= "Select * from studentdetails where Enrollno='" +Enrollno+"'and Password='"+Name+"';";
               ResultSet rs = stmt.executeQuery(sql);
               if(!rs.next())
               return null;
               obj= new StudentDetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4));
               c.putConnection(conn);
               System.out.println(sql);

           }
           catch(Exception e)
           {
               System.out.println(e);
           }
           return obj;
       }





 public static StudentDetails  getRecord1(String EnrollNo,String password)
{
StudentDetails obj = new StudentDetails ();
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
String sql="Select * from studentdetails where  EnrollNo ="+EnrollNo+"and Password="+password;
ResultSet rs=stmt.executeQuery(sql);
if(!rs.next())
return null;
obj = new StudentDetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4));
c.putConnection(conn) ;
System.out.println(sql);
}catch(Exception e){System.out.println(e); }
return obj;
}







 public boolean update1()
    {
     int y = 0;
     boolean isCheck=false;
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
      String sql= "SELECT * FROM studentdetails where Password='"+getPassword()+"'";
      ResultSet rs = stmt.executeQuery(sql);
        if(rs.next())
        {
        isCheck=true;
        }
         System.out.println(sql);



      c.putConnection(conn);
    }
    catch(Exception e)
    {
     System.out.println(e);
     return false;
    }



  return isCheck;
  }













public static void main(String args[])
{

//    StudentDetails s = new StudentDetails("0186it071050", "971381102700");
//     s.verify();


// System.out.println(k);

//StudentDetails e = new StudentDetails("0186it071059","ViveckSinghal","971381102700",4);
//  System.out.println(e.add());


//   Vector rows = StudentDetails.getRecords();
//    for(int i = 0; i < rows.size() ; i++)
//	System.out.println(rows.elementAt(i));



//
//    StudentDetails e = StudentDetails.getVerify("0186it071056", "0186it071056");
//        System.out.println(e.getName());
//
//        String str = e.getEnrollNo();


    StudentDetails st = new StudentDetails("971381102700");
//    System.out.println(st.update1());

  boolean b=  st.update1();
  if (b)
  {
      System.out.println("Completed");
  }
  else
       System.out.println("Co");


}

}













