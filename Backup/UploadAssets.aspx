<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UploadAssets.aspx.vb" Inherits="AssetImporter.UploadAssets" Trace="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UploadAssets</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK id=stylesheet href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class="stdTable" borderColor="#000000" cellSpacing="0" cellPadding="2" width="580"
				border="0">
				<tr class="heading">
					<td colSpan="4">Asset Importer Processing.</td>
				</tr>
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
					<td class="title" colSpan="4" height="2"></td>
				</tr>
				<tr class="even">
					<td class="white" colSpan="4"><asp:textbox id="tbxLogWindow" runat="server" Width="600px" Height="184px" Wrap="False" TextMode="MultiLine"></asp:textbox></td>
				</tr>
				<tr class="even">
					<td class="white" colSpan="2">
						<asp:imagebutton onmousedown='this.src="../html/images/DefaultButtons/Done-Down.gif";' id="btnDone"
							onmouseover='this.src="../html/images/DefaultButtons/Done-Over.gif";' onmouseout='this.src="../html/images/DefaultButtons/Done.gif";'
							runat="server" ImageUrl="../html/images/DefaultButtons/Done.gif"></asp:imagebutton>&nbsp;</td>
					<td class="white" colSpan="2">
						<asp:HyperLink id="hlLogFile" runat="server">Download Log File</asp:HyperLink>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
