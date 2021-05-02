<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List of trash</title>
    <link rel="icon" href="Content/5.jpg" />
    <style>
      
        #ImageButton1{
            background-image:url("Content/4.jpg");
            background-size:200px;
        }
        #ImageButton2{
            background-image:url("Content/4.jpg");
            background-size:200px;
        }
        #Button1,#Button3 {
	border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
            }
#Button1:active,#Button3:active {
	transform: scale(0.95);
}

#Button1:focus,#Button3:focus {
	outline: none;
}

#Button1.ghost,#Button3.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}
input {
	    border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #eee;
	        padding: 12px 15px;
	        margin: 8px 0;
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:170px ; margin-top:30px">
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="TrashNo" DataSourceID="SqlDataSource1" RepeatColumns="3" >
            <ItemTemplate><asp:Panel ID="Panel1" runat="server" BorderColor="#FF9933" 
            BorderWidth="3px" Height="450px" Width="320px">
                 <table    >
        <tr >
        <td align="center"   style="color: #FF0000; font-weight: bold" align="center">
            <asp:Image ID="Image1" runat="server" Height="250" Width="300px" src="Content/4.jpg"/>
            </td>
        </tr>
        <tr >
            <td align="center"   style="color: #0000FF; align="center"  font-weight: bold">
                TrashNo:
                <asp:Label ID="TrashNoLabel" runat="server" Text='<%# Eval("TrashNo") %>' Font-Bold="True" Font-Size="Large" /> </td></tr>
                <tr >
        <td align="center"   style="color: #0000FF; align="center"  font-weight: bold">
                     
                Postion:
                <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' Font-Bold="True" Font-Size="Large"/>
                </td></tr>
                    
                      <tr >
        <td align="center"   style="color: #0000FF; align="center"  font-weight: bold">
            <asp:Button ID="Button2" runat="server" Text="Show" OnClick="Button1_Click" />
            </td></tr>
<br />
                </table> </asp:Panel>
            </ItemTemplate>


        </asp:DataList>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TrashNo], [Postion] FROM [TrashDe]"></asp:SqlDataSource>
        

        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 558px" placeholder="Trash Number"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="150px" placeholder="Postion"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="color: #FFFFFF; font-weight: 700; background-color: #FF3300" Text="Add Trash" Width="150px" />
        
        <br />
        
        <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight: 700; background-color: #FFCC99; padding:3px; font-family:Arial; font-size:small;  text-align: center;" Visible="False" Width="81.5%"></asp:Label>
        <br />
        <asp:Button ID="Button3" runat="server" Text="SIGN OUT" style="margin-left: 81%;" OnClick="Button3_Click" />
        
        
        

    </div>
      
    </form>
    
</body>
</html>
