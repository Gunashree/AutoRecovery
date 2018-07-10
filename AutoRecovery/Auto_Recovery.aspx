<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auto_Recovery.aspx.cs" Inherits="AutoRecovery.Auto_Recovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <link href="Styling/AutoRecovery.css" rel="stylesheet" /> 
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script src="scripts/Try.js"></script>
    <%--<script src="scripts/garlic.js"></script>--%>
    <script src="scripts/auto_Recovery.js"></script>   
    <script src="scripts/pbkdf2.js"></script>
    <script src="scripts/aes.js"></script>    
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <title></title>    
</head>
<body>
    <form id="autoRecFrm" runat="server" data-persist="garlic" method="post">
    <table class="DocContainer" id="ClinicalNoteForm">    
    <tr>
       <td class="DocContainerLeft">
          <table class="DocOutline">
            <tr>
              <td class="DocTitleRow" colspan="2">
                <table class="DocTitle" >
                  <tr>
                    <td class="DocTitle">Case Note</td>                    
                  </tr>
                </table>
              </td>
            </tr>
            <tr>
                <td class="DocLabelLeft" style="width:88px">
					 <div id="lblAuthor" class="FalseLink ClinicalNoteForm_Author">Author*</div>
	    	    </td>
                <td class="DocValue">
                    <asp:TextBox ID="AuthorStaffDesc" class="ClinicalNoteForm_AuthorStaffDesc" runat="server">Keerthana N P</asp:TextBox>                    
                </td>
            </tr>
            <tr id="SeperateCategoryRow">
                <td class="DocLabelLeft" >
                    <div id="lblNoteCategory" class="FalseLink ClinicalNoteForm_Category">Category*</div>
                </td>
                <td class="DocValue">
                    <asp:TextBox ID="ClinicalNoteCategoryDesc" class="ClinicalNoteForm_ClinicalNoteCategoryDesc" runat="server">Category</asp:TextBox>
                </td>                
               
            </tr>            
            <tr>
                <td class="DocLabelLeft DocValue" >
                <div id="lblNoteType" class="FalseLink ClinicalNoteForm_Type">Type*</div>
                </td>							
				<td class="DocValue" >                                                                         
                    <asp:TextBox ID="ClinicalNoteTypeDesc" class="ClinicalNoteForm_ClinicalNoteTypeDesc" runat="server">Type</asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="DocLabelLeft">Summary*</td>
                <td class="DocValue">
                    <asp:TextBox ID="ClinicalNoteSummary" class="ClinicalNoteForm_ClinicalNoteSummary garlic-auto-save" runat="server" MaxLength="255"></asp:TextBox>
                </td>		    
            </tr>
          </table>
        </td>
       <td class="DocContainerRight">
          <table class="DocOutline" >
            <tr>
              <td class="DocTitleRow" colspan="2">
                <table class="DocTitle" >
                  <tr>
                    <td class="DocTitle">Note Date</td>
					<td class="DocTitleQuarter"></td>
                  </tr>
                </table>
              </td>
            </tr>
            <tr>
              <td class="DocLabelLeft"><div id="lblClinicalNoteDate_IconLabel" class="DateLabel garlic-auto-save">Date*</div></td>
			  <td class="DocValue ClinicalNoteForm_ClinicalNoteDate">
			     <asp:TextBox id="ClinicalNoteDate" runat="server" CssClass="Date" MaxLength="10" ></asp:TextBox>			     
			  </td>
            </tr>
            <tr>
              <td class="DocLabelLeft">Time*</td>
			  <td class="DocValue ClinicalNoteForm_ClinicalNoteTime">
                 <asp:TextBox ID="ClinicalNoteTime" runat="server" class="garlic-auto-save" CssClass="Time" MaxLength="5"></asp:TextBox> (Eg:15:22)
			  </td>
            </tr>
            <tr>
                <td class="DocLabelLeft">Date Entered:
			    </td>
			    <td class="DocValue">&nbsp;
							                 
                    <asp:TextBox id="EntryDate" class="ClinicalNoteForm_EntryDate" runat="server" CssClass="Date" MaxLength="10" BorderStyle="None" BorderColor="White"></asp:TextBox>
                    <asp:TextBox ID="EntryTime" class="ClinicalNoteForm_EntryTime" runat="server" CssClass="Time" MaxLength="5" BorderStyle="None" BorderColor="White"></asp:TextBox>
						
			    </td>
            </tr>
            
            <tr id="SeperateCategoryRow2">
		        <td class="DocLabelLeft">&nbsp;</td>
			    <td class="DocValue">
                    &nbsp;
		        </td>
		    </tr>
            
           </table>
         </td>
    </tr>
    <tr>
        <td class="DocContainerFull" colspan="2" style="padding-top:0">
            <table class="DocOutline">
                <tr>
                    <td class="DocLabelLeft" style="vertical-align:top; width:88px">
                        <div id="lblClinicalNote" class="FalseLink ClinicalNoteForm_Note garlic-auto-save">Note</div>
                    </td>
                    <td class="DocValue">
                        <asp:TextBox ID="ClinicalNoteText" class="ClinicalNoteForm_ClinicalNoteText garlic-auto-save" runat="server" Rows="16" TextMode="MultiLine" Style="width: 98%"></asp:TextBox>
                        <div id="ClinicalNoteTextRichTextConfirmed" runat="server" style="height: 212px; background-color: #F0F0F0; overflow: auto; width: 98%; border: 2px solid; border-color: white; display: none"></div>
                    </td>
			    </tr>
            </table>
        </td>
    </tr>    
    </table>
    </form>     
</body>
</html>
