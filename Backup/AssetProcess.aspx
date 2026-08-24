<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AssetProcess.aspx.vb" Inherits="AssetImporter.AssetProcess" Trace="False" buffer="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AssetProcess</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK id=stylesheet href='<% Response.Write(Session("Style")) %>' type=text/css rel=stylesheet>
		<Script>
		function showpopup(message)
		{
			msgWindow=window.open('','Status','width=180,height=220')
			msgWindow.document.write('<LINK id=stylesheet href=""" & Session("Style") & """ type=text/css rel=stylesheet>')
			msgWindow.document.write('<BODY>')
			msgWindow.document.write('<div align=center>' + message + '</div>')
			msgWindow.document.write('<center><img src=../images/timer.gif>')
			msgWindow.document.write('<form name=StatusForm>')
			msgWindow.document.write('<input type=text name=tbxStatus>')
			msgWindow.document.write('</form>')
			msgWindow.document.write('')
			msgWindow.document.write('</center></BODY>')
			msgWindow.document.close();
		}

		function closepopup()
		{
			If (!msgWindow.closed) 
			msgWindow.close();
		}

		showpopup('Please wait.');
		</Script>
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
