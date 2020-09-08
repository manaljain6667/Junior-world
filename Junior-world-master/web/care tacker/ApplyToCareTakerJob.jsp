

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CareTaker</title>
         <link rel="stylesheet" type="text/css" href="mystyle.css">
 <style>
             body,html{
                 height: 100%;
             }
            .img1{
                background-image: url("images/ct3.jpg");
                background-size: cover;
                background-position: center;
                height: 100%;
                 width: 100%;
                    background-repeat: repeat;
               left:0;
               top:0;
            }
        </style>
    </head>
    <body>
         <div class="img1">
        <center><h1>Registration for Caretaker</h1><hr>
            <form  name= "f1" id="registration1" action="CareTakerDbms.jsp" method="post" onsubmit="return matchpass();" onsubmit="return validateemail(); return validate();">
                 <label> <b>First Name</b></label>
                 <input type="text" value="" required name="Yourname" placeholder="first name" size="30"><br><br>
                
                 <label> <b>Last Name</b></label>
                 <input type="text" value="" required name="Yourname" placeholder="last name" size="30"><br><br>
                
                 <label> <b>Upload Photo</b></label>
                 <input type="file" value="" required name="myFile"><br><br>
                 
                 <label> <b>Upload Sign</b></label>
                 <input type="file" value="" required name="myFile"><br><br>
                
                 <label> <b>Date of birth</b></label>
                <input type="date" name="DateOfBirth" required max="1940-12-31" min="2002-01-02" placeholder="select date"/><br><br>
               
                <label> <b>Education Qualification:</b></label>
                 <select required>
                      <option value="none">None</option>
                    <option value="5th standard">5th standard</option>
                    <option value="8th standard">8th standard</option>
                    <option value="High School">High School</option>
                    <option value="Intermediate">Intermediate</option>
                    <option value="Graduate">Graduate</option>
                    <option value="Post Graduate">Post Graduate</option>
                    <option value="Phd">Phd</option>
                    <option value="illiterate">illiterate</option>
                   
                 </select><br><br>
                 <label> <b>What kind of caretaker you want to be?</b></label>
                 <script>
                      var expanded = false;
                      function showCheckboxes1() {
                          var checkboxes = document.getElementById("checkboxes");
                          if(!expanded){
                              checkboxes.style.display="block";
                              expanded=true;
                              
                          }
                          else{checkboxes.style.display="none";
                              expanded=false;
                          }
                      }
                      </script>
                 <div class="multiselect">
                          <div class="selectBox" onclick="showCheckboxes1()">
                              <select required>
                                  <option>Select type</option>
                              </select>
                              <div class="overSelect"></div>
                          </div>
                          <div id="checkboxes">
                              <label for="one">
                                   <input type="checkbox" name="type" value="Nannies and baby sitters" >Nannies and baby sitters<br><br></label>
                 <label for="two">
                     <input type="checkbox" name="type" value="Date night sitter" >Date night sitter<br></label>
                 <label for="three">
                     <input type="checkbox" name="type" value="After School Sitter" >After School Sitter<br></label>
                  <label for="four">
                      <input type="checkbox" name="type" value="Day Care Centre" >Day Care Centre<br></label>
                          </div>
                 </div>
                 
               
                  
                  <label> <b>Father Name</b></label>
                 <input type="text" value="" required name="fathername" placeholder="father's name"><br><br>
                 
                 <label> <b>Mother Name</b></label>
                 <input type="text" value="" required name="mothername" placeholder="mother's name"><br><br>
                 
                 <label> <b>Religion:</b></label>
                 <select required>
                    <option value="Hindu">Hindu</option>
                    <option value="Muslim">Muslim</option>
                    <option value="Sikh">Sikh</option>
                    <option value="Christian">Christian</option>
                     <option value="Jain">Jain</option>
                 </select><br><br>
                 
                <label><b>Aadhar card number:</b></label>
                <script>
                    function validate(){
                        var num=document.f1.num.value;
                        if(isNaN(num)){
                            document.getElementById("numloc").innerHTML="Enter Numeric value only";
                            return false;
                            
                        }
                        else{
                            return true;
                        }
                    }
                </script>
                <input type="text" name="f1"  placeholder="Aadhar no." required onsubmit="validate();"/><br><br>
                 
                 <label><b>Permanant Address</b></label>
                 <textarea rows="6" cols="50" placeholder="Address" required="required"></textarea>
                <!--<input type="text" name="address"  placeholder="Address"/>--><br><br>
                <label><b>Current Address</b></label>
                <textarea rows="6" cols="50" placeholder="Address" required="required"></textarea><br><br>
                 
                <label><b>Current City</b></label>
                <input type="text" name="city" required placeholder="City"/><br><br>
               
                <label><b>State</b></label>
                
                <select required>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chhattisgarh">Chhattisgarh</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal pradesh">Himachal pradesh</option>
                    <option value="jammu and kashmir">jammu and kashmir</option>
                    <option value="jharkhand">jharkhand</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerela">Kerela</option>
                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Manipur">Manipur</option>
                    <option value="Meghalaya">Meghalaya</option>
                    <option value="Mizoram">Mizoram</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Odisha">Odisha</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Sikkim">Sikkim</option>
                    <option value="Tamil Nadu">Tamil Nadu</option>
                    <option value="Telangana">Telangana</option>
                    <option value="Tripura">Tripura</option>
                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                    <option value="Uttrakhand">Uttrakhand</option>
                    <option value="WestBengal">WestBengal</option>
                </select><br><br>
                
                 <label> <b>languages known:</b></label>
                  <script>
                      var expanded = false;
                      function showCheckboxes() {
                          var checkboxes = document.getElementById("checkboxes");
                          if(!expanded){
                              checkboxes.style.display="block";
                              expanded=true;
                              
                          }
                          else{checkboxes.style.display="none";
                              expanded=false;
                          }
                      }
                      </script>
                      <div class="multiselect">
                          <div class="selectBox" onclick="showCheckboxes()">
                              <select required>
                                  <option>Select languages</option>
                              </select>
                              <div class="overSelect"></div>
                          </div>
                          <div id="checkboxes">
                              <label for="one">
                                  <input type="checkbox" name="language1" value="Hindi" >Hindi<br><br></label>
                 <label for="two">
                     <input type="checkbox" name="language2" value="English" >English<br></label>
                 <label for="three">
                     <input type="checkbox" name="language3" value="Urdu" >Urdu<br></label>
                  <label for="four">
                      <input type="checkbox" name="language4" value="Malayalam" >Malayalam<br></label>
                  <label for="five">
                      <input type="checkbox" name="language5" value="Marathi" >Marathi<br></label>
                  <label for="six">
                      <input type="checkbox" name="language6" value="Kashmiri" >Kashmiri<br></label>
                  <label for="seven">
                      <input type="checkbox" name="language1" value="Punjabi" >Punjabi<br></label>
                <label for="eight">
                    <input type="checkbox" name="language1" value="Bengali" >Bengali<br></label>
                <label for="nine">
                    <input type="checkbox" name="language1" value="Odia" >Odia<br></label>
                <label for="ten">
                    <input type="checkbox" name="language1" value="Telugu" >Telugu<br></label>
                <label for="eleven">
                    <input type="checkbox" name="language1" value="Tamil" >Tamil<br></label>
                <label for="twelve">
                    <input type="checkbox" name="language1" value="Gujarati" >Gujarati<br></label>
                <label for="thirteen">
                    <input type="checkbox" name="language1" value="Kannada" >Kannada<br></label>
                <label for="fourteen">
                    <input type="checkbox" name="language1" value="Konkani" >Konkani<br></label>
                <label for="fifteen">
                    <input type="checkbox" name="language1" value="Manipuri" >Manipuri<br></label>
                <label for="sixteen">
                    <input type="checkbox" name="language1" value="Mizo" >Mizo<br></label>
                <label for="seventeen">
                <input type="checkbox" name="language1" value="Bhili" >Bhili<br>
                </label>
                          </div></div><br><br>
                
                <label><b>Mobile Number</b></label>
                <input type="number" value="+91" required id="num"/>
                <input type="number" name="mobile" required id="phone" placeholder="Mobile No."/><br><br>
                
                
                <label><b>Enter Email</b></label>
                <script>
                    function validateemail(){
                        var x=document.f1.email.value;
                        var atposition=x.indexOf("@");
                        var dotposition=x.lastIndexOf(".");
                        if(atposition < a|| dotposition < atposition + 2|| dotposition + 2 >= x.length){
                            alert("please enter a valid email address");
                            return false;
                        }
                    }
                </script>
                <input type="email" name="email" required placeholder="xyz@gmail.com"/><br><br>
                
                <label><b>Create Password:</b></label>
                <input type="password" name="password" required placeholder="......"/><br><br>
                
                <label><b>Re-Enter Password:</b></label>
                <script type="text/javascript">
                    function matchpass(){
                        var firstpassword=document.f1.password.value;
                        var secondpassword = document.f1.password2.value;
                        if(firstpassword==secondpassword){
                            return true;
                        }
                        else{
                            alert("password must be same!");
                            return false;
                        }
                    }
                    
                </script>
                <input type="password" name="password2" required placeholder="......"/><br><br>
                
                <label><b>Enter years of Experience:</b></label>
                <input type="number" min="0" max="100" required name="Experience"/><br><br>
               
                
                 <label><b>Gender:</b></label>
                <input type="radio" name="gender"  value="male" checked/>Male<br>
                <input type="radio" name="gender"  value="female" />Female<br>
                <input type="radio" name="gender"  value="other" />Other<br><br>
                
                
                <label><b>Number of family member:</b></label>
                <input type="number" min="0" max="50" required value="">&nbsp;&nbsp;<br><br>
                
                <label><b>Are you willing to relocate?</b></label>
                <input type="radio" name="op" value="Yes">Yes
                <input type="radio" name="op" value="No">No<br>
                
                <br>
                <input type="checkbox" required>I here by declare that all the information i have provided is correct to my knowledge.<br>If the above information is found wrong legal actions would be taken against me.<br>
                
                <br>
               
                 <input type="submit" id="button1" value="submit" name ="submit">
                <input type="reset" id="button1" value="Reset" name ="Reset">
               
            </form>
         </div>
    </body>
</html>
        
         
    
        
        
        
       