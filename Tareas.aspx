<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Tareas.aspx.cs" Inherits="Proyecto.Web.Views.CRUD_TAREAS.Tareas" %>

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
                        <b > Informacion sobre la Tareas</b>
                        <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                    </h1>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblCodigoTarea" runat="server" Visible="false"></asp:Label>
                   <asp:TextBox ID="txtCodigoTarea" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCodigoTarea" runat="server"
                                TargetControlID="txtCodigoTarea"
                                WatermarkText="Codigo Tarea" />
                </div>
            </div>
        </div>
       
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblTitularTarea" runat="server" Text="Titular de la Tarea" ></asp:Label>
                   <asp:TextBox ID="txtTitularTarea" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTitularTarea" runat="server"
                                TargetControlID="txtTitularTarea"
                                WatermarkText="Titular de la Tarea" />
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblAsunto" runat="server" Text="Asunto"></asp:Label>
                   <asp:Textbox ID="txtAsunto" runat="server" CssClass="form-control"></asp:Textbox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtAsunto" runat="server"
                                TargetControlID="txtAsunto"
                                WatermarkText="Asunto" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblFechaVencimiento" runat="server" Text="Fecha de Vencimiento"></asp:Label>
                   <asp:Calendar ID="calFechaVencimiento" runat="server" CssClass="form-control"></asp:Calendar>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtFechaVencimiento" runat="server"
                                TargetControlID="txtFechaVencimiento"
                                WatermarkText="Fecha Vencimiento" />
                   <ajaxToolkit:CalendarExtender ID="ceFechaVencimiento" runat="server" TargetControlID="txtFechaVencimiento" Format="yyyy-MM-dd" />
               
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblCOntacto" runat="server" Text="Contacto"></asp:Label>
                   <asp:TextBox ID="txtContacto" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtContacto" runat="server"
                                TargetControlID="txtContacto"
                                WatermarkText="Contacto" />
                </div>
            </div>
        </div>


        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblCuenta" runat="server" Text="Cuenta"></asp:Label>
                   <asp:TextBox ID="txtCuenta" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCuenta" runat="server"
                                TargetControlID="txtCuenta"
                                WatermarkText="Cuenta" />
        </div>
                <div class="col-md-3">
                   <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                   <asp:DropDownList ID="DropEstado" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                 <div class="col-md-6">
                   <asp:Label ID="lblPrioridad" runat="server" Text="Prioridad"></asp:Label>
                   <asp:DropDownList ID="DropPrioridad" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
        </div>


         <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblEnviarMensaje" runat="server" Text="Enviar Mensaje de Correo Electronico de Notificacion"></asp:Label>
                   <asp:CheckBox ID="checEnviarMensaje" runat="server" CssClass="form-control"></asp:CheckBox>
                </div>

                <div class="col-md-6">
                   <asp:Label ID="lblRepetir" runat="server" Text="Repetir"></asp:Label>
                   <asp:CheckBox ID="ChecRepetir" runat="server" CssClass="form-control"></asp:CheckBox>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblInformacionDescripcion" runat="server" Text="Descripcion"></asp:Label>
                   <asp:TextBox ID="txtInformacionDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDescripcion" runat="server"
                                TargetControlID="txtInformacionDescripcion"
                                WatermarkText="Descripcion" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">      
                   <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-prymary" OnClick="btnGuardar_Click"></asp:Button>
                    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn btn-prymary" OnClick="btnConsultar_Click"></asp:Button>
                   <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-prymary"></asp:Button>
                   <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-prymary" OnClick="btnCancelar_Click" ></asp:Button>

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
                              <asp:label runat="server" ID="lblCodigoTarea" text='<%# Bind("tareCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>
                          <asp:BoundField HeaderText="AsuntoTarea" DataField="tareAsunto" />
                          <asp:BoundField HeaderText="FechaVencimientoTarea" DataField="tareFechaVencimiento" />
                          <asp:BoundField HeaderText="ContactoTarea" DataField="contCodigo" />
                          <asp:BoundField HeaderText="CuentaTarea" DataField="clieCodigo" />
                          <asp:BoundField HeaderText="EstadoTarea" DataField="" />
                          <asp:BoundField HeaderText="PrioridadTarea" DataField="prioCodigo" />
                          <asp:BoundField HeaderText="EnviarMensajeTarea" DataField="TareEnvioCorreo" />
                          <asp:BoundField HeaderText="RepetirTarea" DataField="TareRecordatorio" />
                          <asp:BoundField HeaderText="InformacionTarea" DataField="TareDescripcion" />                   

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
