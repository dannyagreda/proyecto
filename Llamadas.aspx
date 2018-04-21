<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Llamada.aspx.cs" Inherits="Proyecto.Web.Views.Llamada.Llamada" %>

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
                   <asp:Label ID="lblcodigoLLamada" runat="server" Visible="false"></asp:Label>
                   <asp:TextBox ID="txtCodigoLlamada" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCodigoLlamada" runat="server"
                                TargetControlID="txtCodigoLlamada"
                                WatermarkText="Codigo Llamada" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblNombrellamada" runat="server" Text="Nombre de contacto"></asp:Label>
                    <asp:TextBox ID="txtNombreLlamada" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNombreContacto" runat="server"
                                TargetControlID="txtNombreContacto"
                                WatermarkText="Nombre de contacto" />
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblAsunto" runat="server" Text="Asunto"></asp:Label>
                   <asp:TextBox ID="txtAsunto" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtAsunto" runat="server"
                                TargetControlID="txtAsunto"
                                WatermarkText="Asunto" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">          
                <div class="col-md-6">
                   <asp:Label ID="lblPropositollamada" runat="server" Text="Proposito de la llamada"></asp:Label>
                   <asp:dropdownlist ID="droPropositollamada" runat="server" CssClass="form-control"></asp:dropdownlist>
                </div>
                 <div class="col-md-6">
                   <asp:Label ID="lblRelacionadocon" runat="server" Text="Relacionado con"></asp:Label>
                   <asp:dropdownlist ID="droRelacionadoCon" runat="server" CssClass="form-control"></asp:dropdownlist>
                </div>               
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblTipollamada" runat="server" Text="Tipo de llamada"></asp:Label>
                   <asp:TextBox ID="txtTipollamada" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTipollamada" runat="server"
                                TargetControlID="txtTipollamada"
                                WatermarkText="Tipo de llamada" />
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblDetallesllamada" runat="server" Text="Detalles de la llamada"></asp:Label>
                   <asp:TextBox ID="txtDetallesllamada" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDetallesllamada" runat="server"
                                TargetControlID="txtDetallesllamada"
                                WatermarkText="Detalles de la llamada" />
                </div>            
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                   <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDescripcion" runat="server"
                                TargetControlID="txtDescripcion"
                                WatermarkText="Descripcion" /> 
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                 <div class="col-md-12">
                   <asp:Label ID="lblResultadollamada" runat="server" Text="Resultado de la llamada"></asp:Label>
                   <asp:TextBox ID="txtResultadollamada" runat="server" CssClass="form-control"></asp:TextBox>
                     <ajaxToolkit:TextBoxWatermarkExtender ID="twmtResultadollamada" runat="server"
                                TargetControlID="txtResultadollamada"
                                WatermarkText="Resultado de la llamada" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">      
                   <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-prymary" OnClick="btnGuardar_Click"></asp:Button>
                   <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn btn-prymary" OnClick="btnConsultar_Click"></asp:Button>
                   <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-prymary"></asp:Button>
                   <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-prymary" OnClick="btnCancelar_Click"></asp:Button>
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
                              <asp:label runat="server" ID="lblcodigoLLamada" text='<%# Bind("llamCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>

                          <asp:BoundField HeaderText="NombreLlamada" DataField="contCodigo" />
                          <asp:BoundField HeaderText="Asunto" DataField="clieCodigo" />
                          <asp:BoundField HeaderText="Propositollamada" DataField="propCodigo" />
                          <asp:BoundField HeaderText="relacionadocon" DataField="llamRelacionadoCon" />
                          <asp:BoundField HeaderText="tipollamada" DataField="llamTipoLlamada" />
                          <asp:BoundField HeaderText="detallesllamada" DataField="llamDetalles" />
                          <asp:BoundField HeaderText="descripcion" DataField="llamDescripcion" />
                          <asp:BoundField HeaderText="resultadollamada" DataField="llamDuracionLlamada" />                  

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

