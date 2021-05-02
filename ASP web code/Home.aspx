<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="icon" href="Content/5.jpg" />
    <style>
       
        #LinkButton1:active {
    color: #0f0; 
    color: green;
    color: rgb(0,255,0);
}
    #LinkButton2:active {
    color: #0f0; 
    color: green;
    color: rgb(0,255,0);
}  
      #LinkButton3:active {
    color: #0f0; 
    color: green;
    color: rgb(0,255,0);
}  
        #LinkButton4:active {
    color: #0f0; 
    color: green;
    color: rgb(0,255,0);
}
        #LinkButton1, #LinkButton2, #LinkButton3,#LinkButton4 {
    margin-left:120px;
  
    text-decoration: none;
    color: aliceblue;
    font-weight: 700;
    font-family:Arial;
        }

         
        .auto-style1 {
            color: #CCCCFF;
        }
        footer{
            font-family:Arial;
        }
        
        
        
        .auto-style6 {
            margin-right: 0px;
        }
        
        .auto-style7 {
            margin-left: 45%;
            margin-top: -180px;
            font-family:Arial;
        }
        
        .auto-style8 {
            margin-left: 81%;
            margin-top: -180px;
            font-family:Arial;
        }
        
        .auto-style9 {
            text-align: justify;
            font-family:Arial;
        }
        
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            
            <asp:Panel ID="Panel1" runat="server" Height="106px" style="background-color: #FF3300">
               
                 <br />
              
                
                <asp:LinkButton ID="LinkButton1" runat="server">About us</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server">Contact us</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server"  OnClick="LinkButton3_Click">Employee</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Admin</asp:LinkButton>
                <img src="Content/22.png" style="margin-left:900px; margin-top:-70px; width:30%;" />
                
            </asp:Panel>
            <br />
    <div class="w3-content w3-display-container">
  
  
  <img class="mySlides" src="Content/40.png" style="width:100%;"/>
  <img class="mySlides" src="Content/41.png" style="width:100%;"/>
  <img class="mySlides" src="Content/11.png" style="width:100%;"/>
  


          <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 5 seconds
}
</script>
</div>
            </div>
        

         </div>
        <hr />
    <div>
        
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style6" Width="242px">
            <h2 style="font-family:Arial;">Trash Can</h2>
            <p class="auto-style9">
                When you click this button you will see all kinds of trash can available for youlisted on this site, so you can find your desired requirments. 
            </p>
            <p>
                <a href="Search.aspx" style="font-family:Arial;">Learn more &raquo;</a>
            </p>
        </asp:Panel>
        
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7" Width="240px">
            <h2>Components</h2>
            <p class="auto-style9">
               To know just how smart your trash can is and the important sensors it contains that makes it so smart.
            </p>
            <p>
                <a href="Search.aspx">Learn more &raquo;</a></p>
        </asp:Panel>

        
        </div>
        
        <hr />

  
        <footer>
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" Height="204px">
                
                

                    

                    <div style="margin-left:30px;"  >
                        <h4>Follow us on Social media</h4>

                        <div style="margin-left:1134px; margin-top: -40px; width: 147px; height: 137px;">
                            <h4>Useful links</h4>
                            <p>
                                <a href="https://www.alquds.edu/ar/" target="_blank">Al-Quds university</a>
                            </p>
                            <p>
                                <a href="https://www.alquds.edu/ar/" target="_blank">Al-Quds university</a>
                            </p>
                            <p>
                                <a href="https://www.alquds.edu/ar/" target="_blank">Al-Quds university</a>
                            </p>
                        </div>
                        <a href="#">
                        <img src="Content/10.jpg" style="margin-top:-115px; height: 170px; width: 174px;"/>
                        </a> 
                        <div style="margin-top:-220px; margin-left: 45%;">

           <h4>Contact Info</h4>
        


                    <div   >

© 2020 Al-Quds University


 <p>B.O Box-123 AbuDeis,Jerusalem
 </p>
<p>T: +970-2-77-6655
 </p>


                    </div>
                   
                </div>
                        <br />
                    </div>




               
            </asp:Panel>  
        </footer>
  
    
    </form>
</body>
</html>
