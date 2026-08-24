<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UploadFiles.aspx.vb" Inherits="AssetImporter.UploadFiles" Trace="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<LINK id="stylesheet" href='<% Response.Write(Session("Style")) %>' type="text/css" rel="stylesheet">
		<body>
			<form id="Form1" action="fileupload.aspx" method="post" encType="multipart/form-data"
				runat="server">
				<table class='stdTable' width='90%' border='0' cellspacing='0' cellpadding='3'>
					<tr class='heading'>
						<td colspan='2' align='center'>Asset Importer File Uploader</td>
					</tr>
					<tr class='even'>
						<td class='white' colspan='2'>Please select the file required for uploading and 
							then click 'Upload'</td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Select A Client:</td>
						<td class='white'>
							<asp:DropDownList id="ddlClientSelect" runat="server"></asp:DropDownList></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Revision number of AIT:</td>
						<td class='white'>
							<asp:TextBox id="tbxRevision" runat="server"></asp:TextBox></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Date Uploaded:</td>
						<td class='white'>
							<asp:Label id="lblDateUploaded" runat="server">Label</asp:Label></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Imported By:</td>
						<td class='white'>
							<asp:Label id="lblImportedBy" runat="server">Label</asp:Label></td>
					</tr>
					<TR class='even'>
						<TD class="title" width='10%' valign='top' nowrap>Import State:</TD>
						<TD class="white">
							<asp:DropDownList id="ddlImportState" runat="server"></asp:DropDownList></TD>
					</TR>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Import Type:</td>
						<td class='white'>
							<asp:DropDownList id="ddlImportType" runat="server" AutoPostBack="True">
								<asp:ListItem Value="1">Add Assets</asp:ListItem>
								<asp:ListItem Value="2" Selected="True">Skip Assets</asp:ListItem>
								<asp:ListItem Value="3">Update Assets</asp:ListItem>
								<asp:ListItem Value="4">Org Structure</asp:ListItem>
							</asp:DropDownList></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Billing Data Move Type:</td>
						<td class='white'>
							<asp:DropDownList id="ddlMoveType" runat="server" AutoPostBack="True">
								<asp:ListItem Value="1">Move All</asp:ListItem>
								<asp:ListItem Value="2">Move From Set Date</asp:ListItem>
								<asp:ListItem Value="3" Selected="True">Don’t Move</asp:ListItem>
							</asp:DropDownList><BR>
							<asp:TextBox id="txbMoveDate" runat="server" Enabled="False"></asp:TextBox>
							<asp:Calendar id="calMoveDate" runat="server" Enabled="False"></asp:Calendar></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>Select File To Upload to 
							Server:</td>
						<td class='white'><input id="MyFile" type="file" name="MyFile" runat="server">
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="File Required" ControlToValidate="MyFile"></asp:RequiredFieldValidator></td>
					</tr>
					<tr class='even'>
						<td colspan='2' class='white' align='center'>
							<asp:imagebutton onmousedown='this.src="../html/images/DefaultButtons/Upload-Down.gif";' id="btnUpload"
								onmouseover='this.src="../html/images/DefaultButtons/Upload-Over.gif";' onmouseout='this.src="../html/images/DefaultButtons/Upload.gif";'
								runat="server" ImageUrl='../html/images/DefaultButtons/Upload.gif'></asp:imagebutton>
						</td>
					</tr>
					<tr class='heading'>
						<td colspan='2'></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>File Name:</td>
						<td class='white'><span id="FileName" runat="server"></span></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>File Type:</td>
						<td class='white'><span id="MyContentType" runat="server"></span></td>
					</tr>
					<tr class='even'>
						<td class='title' width='10%' valign='top' nowrap>File Length (bytes):</td>
						<td class='white'><span id="ContentLength" runat="server"></span></td>
					</tr>
					<tr class='heading'>
						<td colspan='2'></td>
					</tr>
					<tr class='even'>
						<td class='white' width='10%' valign='top' nowrap><a href='FileUploadRecord.aspx'>File 
								Upload Record</a></td>
						<td class='white' align='right'>
							<asp:imagebutton onmousedown='this.src="../html/images/DefaultButtons/Back-Down.gif";' id="Back"
								onmouseover='this.src="../html/images/DefaultButtons/Back-Over.gif";' onmouseout='this.src="../html/images/DefaultButtons/Back.gif";'
								runat="server" ImageUrl='../html/images/DefaultButtons/Back.gif'></asp:imagebutton>
						</td>
					</tr>
				</table>
			</form>
		</body>
</HTML>
