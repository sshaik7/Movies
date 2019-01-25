<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Homework07.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="newsstyle.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
   
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    

    
</head>
<body>
    <div class="container">
   
   
   
        <asp:DataList ID="DataList1"  runat="server"  CellSpacing="10" DataSourceID="SqlDataSource1"   RepeatColumns="6" RepeatDirection="Horizontal">


<HeaderTemplate>

    MORE OF TODAY'S TOP STORIES
    <hr /> 

</HeaderTemplate>
            <HeaderStyle  Font-Names="Open Sans" Font-Bold="true"/>
           <%-- <ItemStyle  CssClass="tabless" />--%>
            
             <ItemStyle  CssClass="tabless" />
            
            <ItemTemplate>
               
              
                  
                
                <asp:Image  CssClass="row" ID="IMAGELabel" runat="server" ImageUrl='<%# Eval("IMAGE") %>' />
                <br />
                  

                
                  <asp:Label ID="SECTION_TITLELabel"   runat="server" Text='<%# Eval("SECTION_TITLE") %>' />
                <br />
                  
              
                  
               
                        <asp:Label ID="SECTION_TEXTLabel"  runat="server" Text='<%# Eval("SECTION_TEXT") %>' />
                <br />
                    
                  
                  
                   
               
            </ItemTemplate>
        </asp:DataList>
           
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vanscotterConnectionString %>" SelectCommand="SELECT * FROM [NewsTable]"></asp:SqlDataSource>
    
</body>
</html>
