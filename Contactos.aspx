<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="Proyecto.Web.Views.Contactos.Contectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenedor" runat="server">
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
                   <asp:Label ID="lblContactoCodigo" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtContactoCodigo" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtContactoCodigo" runat="server"
                                TargetControlID="txtContactoCodigo"
                                WatermarkText="Codigo Contacto" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblFuenteCliente" runat="server" Text="Fuente de Posible Cliente"></asp:Label>
                   <asp:dropdownlist ID="dropFuenteCliente" runat="server" CssClass="form-control"></asp:dropdownlist>
                    
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
                   <asp:Label ID="lblNumeroCuenta" runat="server" Text="Numero de Cuenta"></asp:Label>
                   <asp:TextBox ID="txtNuemeroCuenta" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNumeroCuenta" runat="server"
                                TargetControlID="txtNuemeroCuenta"
                                WatermarkText="Numero de Cuenta" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblTitulo" runat="server" Text="Titulo"></asp:Label>
                   <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTitulo" runat="server"
                                TargetControlID="txtTitulo"
                                WatermarkText="Titulo" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblCorreo" runat="server" Text="Correo Electronico"></asp:Label>
                   <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCorreo" runat="server"
                                TargetControlID="txtCorreo"
                                WatermarkText="Correo Electronico" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblDepartamento" runat="server" Text="Departamento"></asp:Label>
                   <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDepartamento" runat="server"
                                TargetControlID="txtDepartamento"
                                WatermarkText="Departamento" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                   <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTelefono" runat="server"
                                TargetControlID="txtTelefono"
                                WatermarkText="Telefono" />
                </div>
            </div>
        </div>


        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblTelefonoParticular" runat="server" Text="Telefono Particular"></asp:Label>
                   <asp:TextBox ID="txtTelefonoParticular" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTelefonoParticular" runat="server"
                                TargetControlID="txtTelefonoParticular"
                                WatermarkText="Telefono Particular" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblOtroTelefono" runat="server" Text="Otro Telefono"></asp:Label>
                   <asp:TextBox ID="txtOtroTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtOtroTelefono" runat="server"
                                TargetControlID="txtOtroTelefono"
                                WatermarkText="Otro Telefono" />
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
                   <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha Nacimiento"></asp:Label>
                   <asp:Calendar ID="calFechaNacimiento" runat="server" CssClass="form-control"></asp:Calendar>
                     
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblAsistencia" runat="server" Text="Asistencia"></asp:Label>
                   <asp:TextBox ID="txtAsistencia" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtAsistencia" runat="server"
                                TargetControlID="txtAsistencia"
                                WatermarkText="Asistencia" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblNumeroTelefonoAsistencia" runat="server" Text="Numero de telefono del asistente"></asp:Label>
                   <asp:TextBox ID="txtNumeroTelefonoAsistencia" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNumeroTelefonoAsistencia" runat="server"
                                TargetControlID="txtNumeroTelefonoAsistencia"
                                WatermarkText="Numero de telefono del asistente" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblRespondeA" runat="server" Text="Responde A"></asp:Label>
                   <asp:TextBox ID="txtRepondeA" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtRespondeA" runat="server"
                                TargetControlID="txtRepondeA"
                                WatermarkText="Responde A" />
                </div>
            </div>
        </div>


         <div class="form-group">
            <div class="form-row">
                <div class="col-md-4">
                   <asp:Label ID="lblNoParticipacionCorreo" runat="server" Text="No participacion del Correo Electronico"></asp:Label>
                   <asp:CheckBox ID="txtNoParticipacionCorreo" runat="server" CssClass="form-control"></asp:CheckBox>    
                </div>
                <div class="col-md-4">
                   <asp:Label ID="lblIdSkype" runat="server" Text="ID skype"></asp:Label>
                   <asp:TextBox ID="txtIdSkype" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtIdSkype" runat="server"
                                TargetControlID="txtIdSkype"
                                WatermarkText="ID skype" />
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
                              <asp:label runat="server" ID="lblClieCodigo" text='<%# Bind("contCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>

                          <asp:BoundField HeaderText="FuenteCliente" DataField="fuenCodigo" />
                          <asp:BoundField HeaderText="Nombre" DataField="contPrimerNombre" />
                          <asp:BoundField HeaderText="Apellido" DataField="contPrimerApellido" />
                          <asp:BoundField HeaderText="NuemeroCuenta" DataField="cuenCodigo" />
                          <asp:BoundField HeaderText="Titulo" DataField="contTitulo" />
                          <asp:BoundField HeaderText="Correo" DataField="contCorreo" />
                          <asp:BoundField HeaderText="Departamento" DataField="contDepartamento" />
                          <asp:BoundField HeaderText="Telefono" DataField="contTelefono" />
                          <asp:BoundField HeaderText="TelefonoParticular" DataField="contTelefonoParticular" />
                          <asp:BoundField HeaderText="OtroTelefono" DataField="contOtroTelefono" />
                          <asp:BoundField HeaderText="Fax" DataField="contFax" />
                          <asp:BoundField HeaderText="Movil" DataField="contMovil" />
                          <asp:BoundField HeaderText="FechaNacimiento" DataField="contFechaNacimiento" />
                          <asp:BoundField HeaderText="Asistencia" DataField="contAsistente" />
                          <asp:BoundField HeaderText="NumeroTelefonoAsistencia" DataField="contTelefonoAsistente" />
                          <asp:BoundField HeaderText="RepondeA" DataField="contResponde" />
                          <asp:BoundField HeaderText="NoParticipacionCorreo" DataField="contResponde" />
                          <asp:BoundField HeaderText="IdSkype" DataField="contIdSkype" />
                          <asp:BoundField HeaderText="CorreoSecundario" DataField="contCorreoSecundario" />

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
