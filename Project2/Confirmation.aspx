<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Project2.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #C0C0C0">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1036px;
        }
        .auto-style5 {
            width: 344px;
        }
        .auto-style6 {
            width: 345px;
        }
        .auto-style7 {
            width: 344px;
            text-align: right;
        }
        .auto-style8 {
            width: 408px;
        }
        .auto-style9 {
            width: 344px;
            height: 29px;
        }
        .auto-style11 {
            width: 345px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Image ID="imgLogo" runat="server" Height="60px" ImageUrl="~/NWU-LOgo.png" Width="60px" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" Text="NWU GYM Booking System" Font-Bold="True" Font-Size="XX-Large" ForeColor="#6600CC"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8" rowspan="4">
                        <asp:Calendar ID="calDate" runat="server">
                            <DayHeaderStyle BackColor="#33CCCC" />
                            <DayStyle Font-Underline="True" ForeColor="DarkBlue" BackColor="White" />
                            <OtherMonthDayStyle ForeColor="Silver" />
                            <SelectedDayStyle BackColor="#009999" Font-Underline="True" ForeColor="#CCFF99" />
                            <TitleStyle BackColor="DarkBlue" Font-Bold="True" ForeColor="#99CCFF" />
                            <TodayDayStyle BackColor="#33CCCC" />
                            <WeekendDayStyle BackColor="#CCCCFF" Font-Underline="True" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblGreeting" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblAppointment" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblErroGeneral" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnNewBooking" runat="server" BackColor="#CCFF99" BorderColor="Black" BorderWidth="2px" OnClick="btnNewBooking_Click" Text="New Booking" Width="188px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
