<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="PosiblesClientes.aspx.cs" Inherits="Proyecto.Web.Views.CrearCliente.PosiblesClientes" %>

<asp:Content ID="contentHeader" ContentPlaceHolderID="header" runat="server">
 </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="contenedor" runat="server">
    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    <div class="mx-auto mt-5">

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <h1>
                        <b >Posibles Clientes</b>
                        <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                    </h1>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblClieCodigo" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtClieCodigo" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtClieCodigo" runat="server"
                                TargetControlID="txtClieCodigo"
                                WatermarkText="Codigo Cliente" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                   <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtEmpresa" runat="server"
                                TargetControlID="txtEmpresa"
                                WatermarkText="Empresa" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblPrimerNombre" runat="server" Text="Nombre"></asp:Label>
                   <asp:Textbox ID="txtPrimerNombre" runat="server" CssClass="form-control"></asp:Textbox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtPrimerNombre" runat="server"
                                TargetControlID="txtPrimerNombre"
                                WatermarkText="Nombre" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblPrimerApellido" runat="server" Text="Apellido"></asp:Label>
                   <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtPrimerApellido" runat="server"
                                TargetControlID="txtPrimerApellido"
                                WatermarkText="Apellido" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblTitulo" runat="server" Text="Titulo"></asp:Label>
                   <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTitulo" runat="server"
                                TargetControlID="txtTitulo"
                                WatermarkText="Titulo" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                   <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCorreo" runat="server"
                                TargetControlID="txtCorreo"
                                WatermarkText="Correo" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                   <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTelefono" runat="server"
                                TargetControlID="txtTelefono"
                                WatermarkText="Telefono" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblFax" runat="server" Text="Fax"></asp:Label>
                   <asp:TextBox ID="txtFax" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtFax" runat="server"
                                TargetControlID="txtFax"
                                WatermarkText="Fax" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblMovil" runat="server" Text="Movil"></asp:Label>
                   <asp:TextBox ID="txtMovil" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtMovil" runat="server"
                                TargetControlID="txtMovil"
                                WatermarkText="Movil" />
                </div>
            </div>
        </div>


        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblSitioWeb" runat="server" Text="Sitio Web"></asp:Label>
                   <asp:TextBox ID="txtSitioWeb" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtSitioWeb" runat="server"
                                TargetControlID="txtSitioWeb"
                                WatermarkText="Sitio Web" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblFuentePosibleCliente" runat="server" Text="Fuente de Posible Cliente"></asp:Label>
                   <asp:dropdownlist ID="DropFuentPosibleCliente" runat="server" CssClass="form-control"></asp:dropdownlist>
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblEstadoPosibleCliente" runat="server" Text="Estado de posible Cliente"></asp:Label>
                   <asp:dropdownlist ID="DropEstadoPosibleClien" runat="server" CssClass="form-control"></asp:dropdownlist>  
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblSector" runat="server" Text="Sector"></asp:Label>
                   <asp:dropdownlist ID="DropSector" runat="server" CssClass="form-control"></asp:dropdownlist>  
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                 <div class="col-md-3">
                   <asp:Label ID="lblCantidadEmpleado" runat="server" Text="Cantidad de Empleados"></asp:Label>
                   <asp:TextBox ID="txtCantidadEmpleado" runat="server" CssClass="form-control"></asp:TextBox>
                     <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCantidadEmpreado" runat="server"
                                TargetControlID="txtCantidadEmpleado"
                                WatermarkText="Cantidad de Empleados" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblIngresoAnual" runat="server" Text="Ingresos Anuales"></asp:Label>
                   <asp:TextBox ID="txtIngresoAnual" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtIngresoAnual" runat="server"
                                TargetControlID="txtIngresoAnual"
                                WatermarkText="Ingresos Anuales" />
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblCalificacion" runat="server" Text="Calificacion"></asp:Label>
                   <asp:dropdownlist ID="DropCalificacion" runat="server" CssClass="form-control"></asp:dropdownlist>
                </div>
            </div>
        </div>


         <div class="form-group">
            <div class="form-row">
                <div class="col-md-4">
                   <asp:Label ID="lblIdSkype" runat="server" Text="ID de Skype"></asp:Label>
                   <asp:TextBox ID="txtIdSkype" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtIdSkype" runat="server"
                                TargetControlID="txtIdSkype"
                                WatermarkText="ID de Skype" />
                </div>
                <div class="col-md-4">
                   <asp:Label ID="lblTwitter" runat="server" Text="Twitter"></asp:Label>
                   <asp:TextBox ID="txtTWitter" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTwitter" runat="server"
                                TargetControlID="txtTwitter"
                                WatermarkText="Twitter" />
                </div>
                <div class="col-md-4">
                   <asp:Label ID="lblCorreoSecundario" runat="server" Text="Correo Electronico Secundario"></asp:Label>
                   <asp:TextBox ID="txtCorreoSecundario" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCorreoSecundario" runat="server"
                                TargetControlID="txtCorreoSecundario"
                                WatermarkText="Correo Electronico Secundario" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">      
                   <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-prymary" OnClick="btnGuardar_Click"></asp:Button>
                   <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn btn-prymary" OnClick="btnConsultar_Click"></asp:Button>
                   <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-prymary"></asp:Button>
                   <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-prymary" OnClick="btnCancelar_Click1"></asp:Button>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">      
                   <h1>
                        <b >Resultados</b>
                  </h1>
            </div>
        </div>
            <div class="form-group">
            <div class="form-row">
                <div class="col-md-12" style="overflow:auto">      
                  <asp:GridView runat="server" ID="gvwDatos" Width="100%" AutoGenerateColumns="False" EmptyDataText="No se encontraron registros" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvwDatos_RowCommand" >

                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                      <columns>
                          <asp:templatefield HeaderText="Codigo">
                              <ItemTemplate>
                              <asp:label runat="server" ID="lblClieCodigo" text='<%# Bind("clieCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>

                          <asp:BoundField HeaderText="Empresa" DataField="clieEmpresa" />
                          <asp:BoundField HeaderText="Nombre" DataField="cliePrimerNombre" />
                          <asp:BoundField HeaderText="Apellido" DataField="cliePrimerApellido" />
                          <asp:BoundField HeaderText="Titulo" DataField="clieTitulo" />
                          <asp:BoundField HeaderText="CorreoElectronico" DataField="clieCorreo" />
                          <asp:BoundField HeaderText="Telefono" DataField="clieTelefono" />
                          <asp:BoundField HeaderText="Fax" DataField="clieFax" />
                          <asp:BoundField HeaderText="Movil" DataField="clieMovil" />
                          <asp:BoundField HeaderText="SitioWeb" DataField="clieSitioWeb" />
                          <asp:BoundField HeaderText="FuentedePosibleCliente" DataField="fuenCodigo" />
                          <asp:BoundField HeaderText="Estadodeposiblecliente" DataField="esclCodigo" />
                          <asp:BoundField HeaderText="Sector" DataField="sectCodigo" />
                          <asp:BoundField HeaderText="Cantidaddeempleados" DataField="clieCantidadEmpleados" />
                          <asp:BoundField HeaderText="Ingresoanual" DataField="clieIngresosAnuales" />
                          <asp:BoundField HeaderText="Calificacion" DataField="caliCodigo" />
                          <asp:BoundField HeaderText="Iddeskype" DataField="clieIdSkype" />
                          <asp:BoundField HeaderText="twitter" DataField="clieTwitter" />
                          <asp:BoundField HeaderText="Correoelectronicosecundario" DataField="clieCorreoSecundario" />

                          <%-- editar --%>
                          <asp:templatefield HeaderText="Editar">
                              <ItemTemplate>
                              <asp:ImageButton ID="ibEditar" runat="server"  ImageUrl="~/Resources/Imagenes/editar.gif"  
                               commandName="Editar" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" ></asp:ImageButton>
                              </ItemTemplate>
                              <ItemStyle HorizontalAlign="Center" />
                          </asp:templatefield>

                           <%-- ELIMINAR --%>
                          <asp:templatefield HeaderText="Eliminar">
                              <ItemTemplate>
                              <asp:ImageButton ID="ibEliminar" runat="server"  ImageUrl="~/Resources/Imagenes/eliminar.jpg"  
                               commandName="Eliminar" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" ></asp:ImageButton>
                              </ItemTemplate>
                              <ItemStyle HorizontalAlign="Center" />
                          </asp:templatefield>


                      </columns>

                      <EditRowStyle BackColor="#999999" />
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                      <sortedascendingcellstyle backcolor="#E9E7E2" />
                      <sortedascendingheaderstyle backcolor="#506C8C" />
                      <sorteddescendingcellstyle backcolor="#FFFDF8" />
                      <sorteddescendingheaderstyle backcolor="#6F8DAE" />

                  </asp:GridView> 
            </div>
        </div>


    </div>

    </asp:Content>

