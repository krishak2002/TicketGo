package opt_spot.japneet.controllers;

import jakarta.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.sql.*;
import java.util.StringTokenizer;
import opt_spot.japneet.database.DBLoader;
import opt_spot.japneet.database.RDBMS_TO_JSON;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class MyRestController {

    @PostMapping("/signup")
    public String go(@RequestParam String nm, @RequestParam String em, @RequestParam String mb, @RequestParam String ps, @RequestPart MultipartFile f1) {
        String ans = null;
        String orig_name = f1.getOriginalFilename();

        // Now Save File On Server //
        try {
            ResultSet rs = DBLoader.executeSQL("select * from users where email='" + em + "'");

            if (rs.next()) {
                ans = "already exist";
            } else {
                String abspath = "C:/Users/Hp/Documents/NetBeansProjects/opt_spot/src/main/webapp/MyUploads";
                String path = abspath + "/" + orig_name;

                byte b[] = f1.getBytes();

                FileOutputStream fos = new FileOutputStream(abspath + "/" + orig_name);

                fos.write(b);

                // 1. create a blank row
                rs.moveToInsertRow();

                // 2. fill row
                rs.updateString("name", nm);
                rs.updateString("email", em);
                rs.updateString("mobile", mb);
                rs.updateString("password", ps);
                rs.updateString("photo", path);

                // 3. insert row
                rs.insertRow();

                ans = "SUCCESS";
            }

            return ans;
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return ans;
    }

    @PostMapping("/multisignup")
    public String go2(@RequestParam String nm, @RequestParam String em, @RequestParam String mb, @RequestParam String ps,
            @RequestParam String ad, @RequestParam String ct, @RequestParam String st,
            @RequestParam String country, @RequestParam String sc, @RequestPart MultipartFile f1) {
        String ans = null;
        String orig_name = f1.getOriginalFilename();

        // Now Save File On Server //
        try {
            ResultSet rs = DBLoader.executeSQL("select * from multiplex where email='" + em + "'");

            if (rs.next())
            {
                ans = "already exist";
            } 
            else {
                String abspath = "C:/Users/Hp/Documents/NetBeansProjects/opt_spot/src/main/webapp/MyUploads";
                String path = abspath + "/" + orig_name;

                byte b[] = f1.getBytes();

                FileOutputStream fos = new FileOutputStream(abspath + "/" + orig_name);

                fos.write(b);

                // 1. create a blank row
                rs.moveToInsertRow();

                // 2. fill row
                rs.updateString("multiplexname", nm);
                rs.updateString("email", em);
                rs.updateString("mobile", mb);
                rs.updateString("password", ps);
                rs.updateString("address", ad);
                rs.updateString("city", ct);
                rs.updateString("state", st);
                rs.updateString("country", country);
                rs.updateString("noofscreens", sc);
                rs.updateString("photo", path);
                rs.updateString("status", "pending");

                // 3. insert row
                rs.insertRow();

                ans = "SUCCESS";
            }

            return ans;
        } 
        catch (Exception ex) {
            ex.printStackTrace();
        }

        return ans;
    }
    
     @GetMapping("/login")
    public String go3( @RequestParam String em1, @RequestParam String ps1, HttpSession session) {
        String ans = null;
        // Now Save File On Server //
         try
       {
          ResultSet rs = 
          DBLoader.executeSQL("select * from users where email='"+em1+"' and password='"+ps1+"'");
        
          if(rs.next())
          {
               String email= rs.getString("email");
              session.setAttribute("email", email);
              ans= "true";
          }
          else
          {
              ans= "false";
          }
       }
       catch(Exception ex)
       {
           ans="FAIL"; 
           ex.toString();         
       }

        return ans;
    }
    
    
     @GetMapping("/multilogin")
    public String go4( @RequestParam String em1, @RequestParam String ps1,HttpSession session) {
        String ans = null;
        // Now Save File On Server //
         try
       {
          ResultSet rs = 
          DBLoader.executeSQL("select * from multiplex where email='"+em1+"' and password='"+ps1+"' and status='approve'");
          
          
          if(rs.next())
          {
              int id= rs.getInt("id");
              session.setAttribute("id", id);
              ans= "true";
          }
          else
          {
              ans= "false";
          }
       }
       catch(Exception ex)
       {
           ans="FAIL"; 
           //ex.toString();
           
           
       }

        return ans;
    }
    
    @PostMapping("/screenlayout")
    String go5(@RequestParam String layout, @RequestParam String screenname ,HttpSession session)
    {
        try
        {
             int id=  (int) session.getAttribute("id");
             System.out.println(id);
            ResultSet rs=DBLoader.executeSQL("select * from screens where screenname='"+screenname+"'");
            if(rs.next())
            {
                return "fail";
            }
            else
            {
                rs.moveToInsertRow();

                // 2. fill row
               
                rs.updateString("screenname", screenname);
                rs.updateString("layout", layout);
                rs.updateInt("multiplexid", id);

                // 3. insert row
                rs.insertRow();
                 return "success";
            }
            
        }
        catch(Exception ex)
        {
            return ex.toString();
        }
    }
    
     @PostMapping("/viewscreens")
    String go6(HttpSession session)
    {
        try
        {
             int mid=  (int) session.getAttribute("id");
             System.out.println(mid);
             String s = new RDBMS_TO_JSON().generateJSON("select * from screens where multiplexid="+mid);
             return s;
        }
        catch(Exception ex)
        {
            return ex.toString();
        }
    }
    
    @PostMapping("/shows")
    public String go7(@RequestParam int nm, @RequestParam int mn, @RequestParam int sc, @RequestParam String dt, @RequestParam String tm ) {
        String ans = null;
        try {
            ResultSet rs = DBLoader.executeSQL("select * from shows where multiplex='" + mn + "'");

                // 1. create a blank row
                rs.moveToInsertRow();

                // 2. fill row
                rs.updateInt("movie", nm);
                rs.updateInt("multiplex", mn);
                rs.updateInt("screens", sc);
                rs.updateString("date", dt);
                rs.updateString("time", tm);

                // 3. insert row
                rs.insertRow();

                ans = "SUCCESS";
            

            return ans;
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }

        return ans;
    }
    
     @PostMapping("/seatsbook")
    String go8(@RequestParam int screenid, @RequestParam int showid, @RequestParam int total_amount, @RequestParam String totalseats, @RequestParam String date, HttpSession session)
    {
        try
        {
             String em=  (String)session.getAttribute("email");
             System.out.println(em);
              ResultSet rs=DBLoader.executeSQL("select * from booking where email='"+em+"' and show_id="+showid);
            
                rs.moveToInsertRow();

                // 2. fill row
                
               rs.updateString("email", em);
                rs.updateInt("show_id", showid);
                rs.updateInt("total_amount", total_amount);
                rs.updateString("date", date);
                rs.updateInt("screen", screenid);
                rs.updateString("QR", null);

                // 3. insert row
                rs.insertRow();
                
                
                 ResultSet rs2=DBLoader.executeSQL("select max(id) from booking");
                 int id=0;
                 if(rs2.next())
                 {
                     id=rs2.getInt("max(id)");
                 
                 }
                 
                 StringTokenizer st= new StringTokenizer(totalseats,",");
                 int n= st.countTokens();
                 ResultSet rs3=DBLoader.executeSQL("select * from booking_details ");
                 for(int i=0;i<n;i++)
                 {
                     String a=st.nextToken();
                      rs3.moveToInsertRow();
                     rs3.updateInt("bookid",id);
                     rs3.updateString("seat",a);
                     rs3.insertRow();
                 }
                 
                
                 return "success";
            

        }
        catch(Exception ex)
        {
            return ex.toString();
        }
    }
    
   
    
    @GetMapping("/adminlogin")
    public String go9( @RequestParam String em1, @RequestParam String ps1,HttpSession session) {
        String ans = null;
        // Now Save File On Server //
         try
       {
          ResultSet rs = 
          DBLoader.executeSQL("select * from admin where email='"+em1+"' and password='"+ps1+"'");
          
          
          if(rs.next())
          {
              ans= "true";
          }
          else
          {
              ans= "false";
          }
       }
       catch(Exception ex)
       {
           ans="FAIL"; 
           //ex.toString();
           
           
       }

        return ans;
    }
    
     @GetMapping("/adminallow")
    public String go10(  @RequestParam String st1,@RequestParam int id) {
        String ans = null;
        // Now Save File On Server //
         try
       {
          ResultSet rs = 
          DBLoader.executeSQL("select * from multiplex where id="+id);
            
          if(rs.next())
          {
              rs.updateString("status", st1);
              rs.updateRow();
              ans= "true";
          }
          else
          {
              ans= "false";
          }
       }
       catch(Exception ex)
       {
           ans="FAIL"; 
           //ex.toString();
           
           
       }

        return ans;
    }
    
    @PostMapping("/addcity")
    public String go11(@RequestParam String usercity, HttpSession session ) {
        String ans = null;
        try {
              session.setAttribute("usercity", usercity);
              ans= "true";
            return ans;
        } 
        catch (Exception ex) {
            ex.printStackTrace();
            ans="false";
            return ans;
        }

    }
    
    @GetMapping("/viewbooking")
    public String go12(@RequestParam int id ) {
         JSONObject jsonobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        
          try
         {
          
           ResultSet rs = DBLoader.executeSQL("select * from booking where id="+id);
           while(rs.next())
           {
            
             jsonobj.put("id", rs.getInt("id"));
             jsonobj.put("email", rs.getString("email"));
             int show = rs.getInt("show_id");
             ResultSet rs1 = DBLoader.executeSQL("select * from shows where id="+show);
             if(rs1.next())
             {
                 ResultSet rs3 = DBLoader.executeSQL("select * from movies where id="+rs1.getInt("movie"));
                 if(rs3.next())
                 {
                     jsonobj.put("moviename", rs3.getString("moviename"));
                 }
                  ResultSet rs4 = DBLoader.executeSQL("select * from multiplex where id="+rs1.getInt("multiplex"));
                 if(rs4.next())
                 {
                     jsonobj.put("multiplex", rs4.getString("multiplexname"));
                 }
             }
               int bookid = rs.getInt("id");
               ResultSet rs2 = DBLoader.executeSQL("select * from booking_details where bookid="+ bookid);
               while(rs2.next())
               {
                     
                  JSONObject obj = new JSONObject();
                   obj.put("seat", rs2.getString("seat"));
                   jsonarray.add(obj);
               }
             
               
           }
              jsonobj.put("ans", jsonarray);
              JSONObject json = jsonobj;
             // System.out.println(json.toJSONString());
              return json.toJSONString();
         }
         catch(Exception ex)
         {
            return ex.toString();
         }
        
    

    }
    
        @PostMapping("/saveQR")
    public String go13(@RequestParam String qr, @RequestParam String id) {
        try {
              ResultSet rs = DBLoader.executeSQL("select * from booking where id="+id);
                 if(rs.next())
                 {
                     rs.updateString("QR",qr);
                     rs.updateRow();
                 }
                 return "success";
        } 
        catch (Exception ex) {
          return  ex.toString();
            
        }

    }
    
}
