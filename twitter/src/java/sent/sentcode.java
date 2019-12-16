/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sent;

/**
 *
 * @author Mitasha
 */

import java.util.*;
import java.io.*;
import javax.mail.*;
import javax.mail.internet.*;
public class sentcode {
    public  static void send( String email,String code)
    {
        Properties prop=new Properties();
        prop.put("mail.smtp.host","smtp.gmail.com");
         prop.put("mail.smtp.port","587");
          prop.put("mail.smtp.auth","true");
           prop.put("mail.smtp.starttls.enable","true"); //relay hoga
           
    Session session=Session.getInstance(prop, new javax.mail.Authenticator() {
            @Override
    protected PasswordAuthentication getPasswordAuthentication(){return new PasswordAuthentication("soniyamaheshwari98@gmail.com","a12345678@a"); }
    });
    try{
        MimeMessage mail=new MimeMessage(session); 
        mail.setFrom(new InternetAddress("soniyamaheshwari98@gmail.com") );
        mail.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
        mail.setSubject("Verification code");
        mail.setText(code + "\nplease verify your account using this one time password"); // function bna lena random no ka
        Transport.send(mail);
            
    }catch(Exception exc){
        exc.printStackTrace();
    }
       
    }
}

