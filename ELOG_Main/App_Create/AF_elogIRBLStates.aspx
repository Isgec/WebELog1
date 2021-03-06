<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_elogIRBLStates.aspx.vb" Inherits="AF_elogIRBLStates" title="Add: IR States" %>
<asp:Content ID="CPHelogIRBLStates" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelelogIRBLStates" runat="server" Text="&nbsp;Add: IR States"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLelogIRBLStates" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLelogIRBLStates"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "elogIRBLStates"
    runat = "server" />
<asp:FormView ID="FVelogIRBLStates"
  runat = "server"
  DataKeyNames = "StatusID"
  DataSourceID = "ODSelogIRBLStates"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgelogIRBLStates" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_StatusID" ForeColor="#CC6633" runat="server" Text="Status ID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox ID="F_StatusID" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_Description" runat="server" Text="Description :" /><span style="color:red">*</span>
        </td>
        <td>
          <asp:TextBox ID="F_Description"
            Text='<%# Bind("Description") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            ValidationGroup="elogIRBLStates"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Description."
            MaxLength="50"
            Width="408px"
            runat="server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDescription"
            runat = "server"
            ControlToValidate = "F_Description"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "elogIRBLStates"
            SetFocusOnError="true" />
        </td>
      </tr>
    </table>
    </div>
  </InsertItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSelogIRBLStates"
  DataObjectTypeName = "SIS.ELOG.elogIRBLStates"
  InsertMethod="elogIRBLStatesInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.ELOG.elogIRBLStates"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>
