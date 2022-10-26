<%@ Page Title="TDR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FactLab._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="highlight-blue">
        <div class="container-fluid mt-4">
                 <div class="card" style="box-shadow: 10px 10px 55px 0px rgba(5,5,5,0.36);-webkit-box-shadow: 10px 10px 55px 0px rgba(5,5,5,0.36);-moz-box-shadow: 10px 10px 55px 0px rgba(5,5,5,0.36);">
                  <div class="card-header">
                    <b>Generación Masiva de Facturas</b>
                  </div>
                  <div class="card-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-row">
                                <div class="form-group col-sm-12">
                                 
                                    <asp:UpdatePanel runat="server" ID="up">
                                        <ContentTemplate>
                                            <table class="table">
                                                <tr>
                                                    <td colspan="4">
                                                        <div>
                                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:10%">
                                                         <label for="FileUpload1"><b>Cliente</b></label>
                                                        
                                                    </td>
                                                    <td style="width:40%">
                                                        <div class="form-group">
                                                            <asp:DropDownList CssClass="form-control" ID="lstCliente" runat="server" >
                                                            </asp:DropDownList>
                                                           
                                                        </div>
                                                    </td>
                                                     <td style="width:10%">
                                                         <label for="FileUpload2"><b>Elaborada</b></label>
                                                        
                                                    </td>
                                                    <td style="width:40%">
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="lstElaborada" CssClass="form-control" runat="server">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="text-align:center; font-size:17px">
                                                        <asp:Button CssClass="btn btn-primary" ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" /><asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                                            <ProgressTemplate>
                                                                <asp:Image ID="Image2" runat="server"  ImageUrl="img/indicator.gif" />
                                                                <asp:Label ID="lblProgress" runat="server" Text="Generando Busqueda....."></asp:Label>
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                         <ContentTemplate>
                                             <table class="table">
                                                 <tr>
                                                     <td>
                                                         <div class="form-check">
                                                         <asp:CheckBox ID="chkSelectAll" CssClass="form-check-input" runat="server" Text=" Seleccionar todos" AutoPostBack="True" OnCheckedChanged="chkSelectAll_CheckedChanged" /><br />
                                                         </div>
                                                             <center>
                                                                <asp:PlaceHolder ID="gridPlace" runat="server"></asp:PlaceHolder>
                                                            </center>
                                                     </td>
                                                 </tr>
                                             </table>
                                         </ContentTemplate>
                                          <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnBuscar" /> 
                                                <asp:AsyncPostBackTrigger ControlID="chkSelectAll" />    
                                          </Triggers>
                                     </asp:UpdatePanel>
                                    <table class="table">
                                        <tr>
                                            <td style="text-align:center">
                                               
                                               <asp:Button ID="btnGuarda" CssClass="btn btn-success" runat="server" OnClick="Button1_Click" Text="Generar CFDi" CausesValidation="False"  /><br />
                                                    
                                            </td>
                                        </tr>
                                    </table>
                                     
                                </div>
                                <div class="form-group col-sm-2">
                                  
                                </div>
                            </div>
                        </div>
                        <hr />
                        
                            
                            
                        

                    </div>
                      
                   
                  </div>

                </div>
             
        </div>
       
    </div> 

</asp:Content>
