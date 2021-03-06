<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_elogLocationCountries.aspx.vb" Inherits="GF_elogLocationCountries" title="Maintain List: Location Country" %>
<asp:Content ID="CPHelogLocationCountries" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelelogLocationCountries" runat="server" Text="&nbsp;List: Location Country"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLelogLocationCountries" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLelogLocationCountries"
      ToolType = "lgNMGrid"
      EditUrl = "~/ELOG_Main/App_Edit/EF_elogLocationCountries.aspx"
      AddUrl = "~/ELOG_Main/App_Create/AF_elogLocationCountries.aspx"
      ValidationGroup = "elogLocationCountries"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSelogLocationCountries" runat="server" AssociatedUpdatePanelID="UPNLelogLocationCountries" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVelogLocationCountries" SkinID="gv_silver" runat="server" DataSourceID="ODSelogLocationCountries" DataKeyNames="LocationCountryID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle HorizontalAlign="Center" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Location Country" SortExpression="LocationCountryID">
          <ItemTemplate>
            <asp:Label ID="LabelLocationCountryID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("LocationCountryID") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignright" />
          <HeaderStyle CssClass="alignright" Width="40px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description" SortExpression="Description">
          <ItemTemplate>
            <asp:Label ID="LabelDescription" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("Description") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="" />
        <HeaderStyle CssClass="" Width="100px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSelogLocationCountries"
      runat = "server"
      DataObjectTypeName = "SIS.ELOG.elogLocationCountries"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "elogLocationCountriesSelectList"
      TypeName = "SIS.ELOG.elogLocationCountries"
      SelectCountMethod = "elogLocationCountriesSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVelogLocationCountries" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>
