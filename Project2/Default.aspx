<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #C0C0C0">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 834px;
        }
        .auto-style9 {
            width: 208px;
        }
        .auto-style10 {
            height: 23px;
            width: 208px;
        }
        .auto-style11 {
            width: 208px;
            text-align: right;
        }
        .auto-style12 {
            height: 23px;
            width: 208px;
            text-align: right;
        }
        .auto-style13 {
            width: 208px;
            text-align: right;
            height: 26px;
        }
        .auto-style14 {
            width: 208px;
            height: 26px;
        }
        .auto-style15 {
            width: 208px;
            text-align: right;
            height: 25px;
        }
        .auto-style16 {
            width: 208px;
            height: 25px;
        }
        .auto-style17 {
            width: 208px;
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style11">
                        <asp:Image ID="imgLogo" runat="server" Height="60px" ImageUrl="~/NWU-LOgo.png" Width="60px" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" Text="NWU GYM Booking System" Font-Bold="True" Font-Size="XX-Large" ForeColor="#6600CC"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter a valid name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9" rowspan="7">
                        <asp:GridView ID="gdvOutput" runat="server" BackColor="#CCFFFF">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvSurnmae" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter a valid surname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblUniversityNo" runat="server" Text="University No:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtUniversityNo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUniversityNo" ErrorMessage="Please enter a valid number" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblUniError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAge" ErrorMessage="Please enter a valid age" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblAgeError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="rdoFemale" runat="server" GroupName="Genders" Text="Female" />
                        <asp:RadioButton ID="rdoMale" runat="server" GroupName="Genders" Text="Male" />
                        <asp:RadioButton ID="rdoOther" runat="server" GroupName="Genders" Text="Other" />
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblErrorGender" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="lblPortfolio" runat="server" Text="Portfolio:"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:RadioButton ID="rdoStudent" runat="server" GroupName="Portfolio" Text="Student" />
                        <asp:RadioButton ID="rdoStaff" runat="server" GroupName="Portfolio" Text="Staff" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="lblErrorPortfolio" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblType" runat="server" Text="Appointment Type:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlType" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Cardio Sessions</asp:ListItem>
                            <asp:ListItem>Nutrition Consultation</asp:ListItem>
                            <asp:ListItem>Strength/Weight Training</asp:ListItem>
                            <asp:ListItem>Swimming Lessons</asp:ListItem>
                            <asp:ListItem>Yoga Classes</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblErrorAppointment" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnVIew" runat="server" Text="View My Information" BorderColor="#CCFF99" BorderWidth="2px" OnClick="btnVIew_Click" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnConfirmBooking" runat="server" Text="Confirm Booking" BackColor="#CCFF99" BorderWidth="2px" Enabled="False" OnClick="btnConfirmBooking_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblGeneralError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
