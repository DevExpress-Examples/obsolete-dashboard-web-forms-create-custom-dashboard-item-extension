<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DXSample.Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!---->
    <title>Web Dashboard Custom Item Sample</title>
    
    <style>
    </style>
    <script type="text/javascript">
        function onBeforeRender(sender) {
            var dashboardControl = sender.GetDashboardControl();
            dashboardControl.registerExtension(implementCustomExtension(dashboardControl));
        }
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: 0; left: 0; bottom: 0; right: 0">
            <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" DashboardStorageFolder="~/App_Data" Width="100%" Height="100%">
                <ClientSideEvents BeforeRender="onBeforeRender" />
            </dx:ASPxDashboard>
        </div>
    </form>
    
    <script src="scripts/customExtension/meta.js" type="text/javascript"></script>
    <script src="scripts/customExtension/icon.js" type="text/javascript"></script>
    <script src="scripts/customExtension/viewer.js" type="text/javascript"></script>
    <script src="scripts/customExtension/customExtension.js" type="text/javascript"></script>
</body>
</html>
