<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AssetValidator.aspx.vb" Inherits="AssetImporter.AssetValidator" trace="True" buffer="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AssetValidator</title>
		<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet 
href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<script>
			</script>
			<table class="stdTable" borderColor="#000000" cellSpacing="0" cellPadding="2" width="580"
				border="0">
				<tr class="heading">
					<td colSpan="3">Asset Importer Validation.</td>
				</tr>
				<tr class="even">
					<td class="new" noWrap width="20%"><B>New / Changes</B></td>
					<td class="white" align="center" width="80%" rowSpan="3"><A href="default.aspx">Return 
							to Importer Main Page</A>
					</td>
				</tr>
				<tr class="even">
					<td class="Possible" noWrap><B>Caution / Possible Problem</B></td>
				</tr>
				<tr class="even">
					<td class="Critical" noWrap><B>Critical / Will not Import</B></td>
				</tr>
				<tr class="heading">
					<td colSpan="2" height="2"></td>
				</tr>
				<tr class="even">
					<td class="white" colSpan="2"></td>
				</tr>
				<tr class="heading">
					<td colSpan="2" height="2"></td>
				</tr>
			</table>
			<table class="stdTable" style="BORDER-COLLAPSE: collapse" cellSpacing="0" cellPadding="2"
				width="580" border="1">
				<tr class="even">
					<td class="white"><FONT color="red"><B>NOTE:</B></FONT>
					</td>
				</tr>
			</table>
			<br>
			<table class="stdTable" borderColor="#999999" cellSpacing="0" cellPadding="2" width="580"
				border="0">
				<tr class="Heading">
					<td colSpan="4">Client :
						<asp:label id="lblClientname" runat="server">lblClientname</asp:label></td>
				</tr>
				<tr class="even">
					<td class="title" noWrap>File Name :</td>
					<td class="white"><asp:label id="lblFileName" runat="server">lblFileName</asp:label></td>
					<td class="title" noWrap>Revision Number :</td>
					<td class="white"><asp:label id="lblRevisionNumber" runat="server">lblRevisionNumber</asp:label></td>
				</tr>
				<tr class="even">
					<td class="title" noWrap>Date Uploaded :</td>
					<td class="white"><asp:label id="lblDateUploaded" runat="server">lblDateUploaded</asp:label></td>
					<td class="title" noWrap>Imported By :</td>
					<td class="white"><asp:label id="lblImportedBy" runat="server">lblImportedBy</asp:label></td>
				</tr>
				<tr class="even">
					<td class="title" noWrap>Org Unit Levels :</td>
					<td class="white"><asp:label id="lblOrgUnitlevels" runat="server">lblOrgUnitlevels</asp:label></td>
					<td class="title" noWrap>Import Type</td>
					<td class="white"><asp:label id="lblImportType" runat="server">lblImportType</asp:label></td>
				</tr>
				<tr class="even">
					<td class="title" noWrap>Billing Data Move Type :</td>
					<td class="white"><asp:label id="lblMoveType" runat="server">lblMoveType</asp:label></td>
					<td class="title" noWrap>Billing Data Move Date :</td>
					<td class="white"><asp:label id="lblMoveDate" runat="server">lblMoveDate</asp:label></td>
				</tr>
				<tr class="even">
					<td class="title" noWrap>Import State :</td>
					<td class="white"><asp:label id="lblImportState" runat="server">lblImportState</asp:label></td>
					<td class="title" noWrap></td>
					<td class="white"></td>
				</tr>
				<tr class="even">
					<td class="title" colSpan="4" height="2"></td>
				</tr>
				<tr class="even">
					<td class="white" colSpan="4"><A href="#StartTable">Skip to Table</A></td>
				</tr>
			</table>
			<P><br>
				<hr>
				<asp:label id="lblStatis" runat="server">Label</asp:label>
				<hr>
				<br>
				<a name="StartTable"></a>
				<asp:label id="Label1" runat="server">Label</asp:label>
			<P></P>
			<P><asp:hyperlink id="hlProcess" runat="server">Process Details</asp:hyperlink><br>
			</P>
		</form>
	</body>
</HTML>
