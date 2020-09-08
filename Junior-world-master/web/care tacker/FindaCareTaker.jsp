

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FindCareTaker</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
            <!--<script type="text/javascript">
        function validate_form() {
            if (document.emp.emp_name.value == "") {
                alert("Please fill in the 'Enter Your Name' box.");
                return false;
            }
            if (document.emp.num.value == "") {
                alert("Enter mobile Number");
                return false;
            }
            alert("sucessfully Submitted");
 
 
 
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.emp.email_id.value)) {
                alert("You have entered an invalid email address!")
                return (false)
            }
        }
 
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode != 46 && charCode > 31 &&
                (charCode < 48 || charCode > 57)) {
                alert("Enter Number");
                return false;
            }
            return true;
        }
 
 
       
    </script>-->
        <style>
              body,html{
                 height: 100%;
             }
            .img{
                background-image: url("images/ct2.jpg");
                background-size: cover;
                background-position: center;
                height: 100%;
                 width: 100%;
                    background-repeat: no-repeat;
                top:0;
                left:0;
            }
        </style>
    </head>
    <body >
        <div class="img">
        <center><h1>Fill the required details</h1><hr>
    <form  name= "RegForm" id="registration1" action="CareTakerDbms.jsp" method="post">
        <label><b>Enter your name</b></label>
        <input type="text" value="" name="Yourname" size="65"><br><br><br>
        <label><b>When do you need caretaker?</b></label>
                <select >
                    <option value="Right Now">Right Now</option>
                    <option value="with in a week">with in a week</option>
                    <option value="In 1-2 months">In 1-2 months</option>
                <option value="just browsing">just browsing</option>
                </select><br><br><br><br>
                
                <label><b>What Kind Of Care Are You Looking For?</b></label>
                <select>
                <option value="Nannies and baby sitters">Nannies and baby sitters</option>
                <option value="Date night sitter">Date night sitter</option>
                <option value="After School Sitter">After School Sitter</option>
                <option value="Day Care Centre">Day Care Centre</option>
                </select><br><br><br><br>
                
                <label><b>Minimum years of experience for your ideal Caretaker</b></label>
                <select>
                    <option value="Any">Any</option>
                    <option value="1+">1+</option>
                    <option value="2+">2+</option>
                    <option value="3+">3+</option>
                    <option value="4+">4+</option>
                    <option value="5+">5+</option>
                    <option value="6+">6+</option>
                    <option value="7+">7+</option>
                    <option value="8+">8+</option>
                    <option value="9+">9+</option>
                    <option value="10+">10+</option>
                </select><br><br><br><br>
                
                <label><b>Able to care for</b></label>
                <select>
                
                    <option value="1 child">1 child</option>
                    <option value="2 children">2 child</option>
                    <option value="3 children">3 child</option>
                   
                    <option value="4 children">4 child</option>
                    <option value="5+ children">5+ child</option>
                </select><br><br><br><br>
                
                <label><b>Required age band:</b></label>
                    <select>
                        <option value="Any">Any</option>
                        <option value="15-18 yr">15-18 yr</option>
                <option value="18-20 yr">18-20 yr</option>
                <option value="20-25 yr">20-25 yr</option>
                <option value="25-30 yr">25-30 yr</option>
                <option value="30-35 yr">30-35 yr</option>
                <option value="35-40 yr">35-40 yr</option>
                <option value="40-45 yr">40-45 yr</option>
                <option value="45-50 yr">45-50 yr</option>
                <option value="50-55 yr">50-55 yr</option>
                
                <option value="55-60 yr">55-60 yr</option>
                <option value="60-65 yr">60-65 yr</option>
                <option value="65-70+ yrs">65-70+ yr</option>
                    </select><br><br><br><br>
                    
                    <label><b>Select the prefered gender of caretaker:</b></label><br>
                 <input type="radio" name="gender" value="female">Female<br>
                 <input type="radio" name="gender" value="male">male<br>
                 <input type="radio" name="gender" value="Any">Any<br><br><br><br>
                 
                 <label><b>Enter your Aadhar card number:</b></label>
                 <input type="text" id="txtAadhar" onblur="AadharValidate();"/> 
                 <script type="text/javascript">
                     function AadharValidate() {
                         var aadhar = document.getElementById("txtAadhar").value;
                         var adharcardTwelveDigit= /^\d{12}$/;
                         var adharSixteenDigit = /^\d{16}$/;
                         if(aadhar !=''){
                             if(aadhar.match(adharcardTwelveDigit)){
                                 return true;
                              }
                              else if (adhar.match(adharSixteenDigit)){
                                  return true;
                              }
                              else{
                                  alert("Enter Valid Aadhar Number");
                                  return false;
                              }
                         }
                     }
                                  </script><br>
                                  <br>
                                  
                 <input type="submit" value="submit" id="button1">
                  <input type="reset" value="  Reset All   " id="button1" name="B5">
            </div></form></center>
        
        
    </body>
</html>
