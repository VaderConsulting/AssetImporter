<%@ Page Language="vb" AutoEventWireup="false" Codebehind="FileUploadRecord.aspx.vb" Inherits="AssetImporter.FileUploadRecord" trace="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>FileUploadRecord</title>
		<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK id="stylesheet" href='<% Response.Write(Session("Style")) %>' type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table class='stdTable' width='90%' border='0' bordercolor='#000000' cellspacing='0' cellpadding='2'
				style="BORDER-COLLAPSE: collapse">
				<tr class='heading'>
					<td width='33%'>File Upload Record</td>
					<td width='33%' align='center'>
						<asp:DropDownList id="ddlClientSelect" runat="server" AutoPostBack="True"></asp:DropDownList>
					</td>
					<td width='33%' align='right'>
						<asp:imagebutton onmousedown='this.src="../html/images/DefaultButtons/Back-Down.gif";' id="Back"
							onmouseover='this.src="../html/images/DefaultButtons/Back-Over.gif";' onmouseout='this.src="../html/images/DefaultButtons/Back.gif";'
							runat="server" ImageUrl='../html/images/DefaultButtons/Back.gif'></asp:imagebutton>
					</td>
				</tr>
			</table>
			<table class='stdTable' width='90%' border='1' bordercolor='#000000' cellspacing='0' cellpadding='2'
				style="BORDER-COLLAPSE: collapse">
				<asp:Repeater id="rptFileRegister" runat="server">
					<HeaderTemplate>
						<tr class='even'>
							<td class='title'>ID</td>
							<td class='title'>File Name</td>
							<td class='title'>Date Uploaded</td>
							<td class='title'>Imported By</td>
							<td class='title'>Import State</td>
							<td class='title'>Revision Number</td>
							<td class='title'>Import Type</td>
							<td class='title'>Move Type</td>
							<td class='title'>Move Date</td>
							<td class='title'>File Format</td>
						</tr>
					</HeaderTemplate>
					<ItemTemplate>
						<tr class='even'>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "UID" )%></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "UploadFileName" )%></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "UploadDate","{0:d}") %></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "ImportedBy" )%></td>
							<td class='white'><%# GetImportState(DataBinder.Eval(Container.DataItem, "ImportState" ))%></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "RevisionNumber" )%></td>
							<td class='white'><%# GetImportType(DataBinder.Eval(Container.DataItem, "ImportType" ))%></td>
							<td class='white'><%# GetMoveType(DataBinder.Eval(Container.DataItem, "MoveType" ))%></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "MoveDate" )%></td>
							<td class='white'><%# DataBinder.Eval(Container.DataItem, "UploadFormat" )%></td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
			</table>
		</form>
	</body>
</HTML>
