<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="Proyecto.Web.Views.Eventos.Eventos" %>

<asp:Content ID="contentHeader" ContentPlaceHolderID="header" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="contenedor" runat="server">


<div class="mx-auto mt-5">

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <h1>
                        <b >Informacion sobre el Evento</b>
                        <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                    </h1>
                </div>
            </div>
        </div>
        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblcodigoEvento" runat="server" Visible="false"></asp:Label>
                   <asp:TextBox ID="txtCodigoEvento" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCodigoEvento" runat="server"
                                TargetControlID="txtCodigoEvento"
                                WatermarkText="Codigo Evento" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblNuevoEvento" runat="server" Text="Nuevo Evento"></asp:Label>
                   <asp:TextBox ID="txtNuevoEvento" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNuevoEvento" runat="server"
                                TargetControlID="txtNuevoEvento"
                                WatermarkText="Nuevo Evento" />
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblUbicacion" runat="server" Text="Ubicacion"></asp:Label>
                   <asp:Textbox ID="txtUbicacion" runat="server" CssClass="form-control"></asp:Textbox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtUbicacion" runat="server"
                                TargetControlID="txtUbicacion"
                                WatermarkText="Ubicacion" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblParticipantes" runat="server" Text="Participantes"></asp:Label>
                   <asp:TextBox ID="txtParticipantes" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtParticipantes" runat="server"
                                TargetControlID="txtParticipantes"
                                WatermarkText="Participantes" />
                </div>
            </div>
        </div>


    <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblTodoDia" runat="server" Text="Todo el Dia"></asp:Label>
                   <asp:CheckBox ID="ChecTodoDia" runat="server" CssClass="form-control"></asp:CheckBox>
                </div>
            </div>
        </div>
       
     
      <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                   <asp:Label ID="lblFecha" runat="server" Text="Fecha"></asp:Label>
                   <asp:calendar ID="calenFecha" runat="server" CssClass="form-control"></asp:calendar>
                </div>
                <div class="col-md-6">
                   <asp:Label ID="lblRelacionado" runat="server" Text="Relacionado Con"></asp:Label>
                   <asp:DropDownList ID="txtdropRelacionado" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
        </div>
      

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblInformacionDescripcion" runat="server" Text="Informacion de la Descripcion"></asp:Label>
                   <asp:TextBox ID="txtInformacionDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtInformacionDescripcion" runat="server"
                                TargetControlID="txtInformacionDescripcion"
                                WatermarkText="Informacion de la Descripcion" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">      
                   <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-prymary" OnClick=""></asp:Button>
                   <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-prymary" OnClick=""></asp:Button>
                   <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-prymary" OnClick=""></asp:Button>
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
                              <asp:label runat="server" ID="lblcodigoEvento" text='<%# Bind("evenCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>

                          <asp:BoundField HeaderText="NuevoEvento" DataField="evenNombre" />
                          <asp:BoundField HeaderText="Ubicacion" DataField="evenUbicacion" />
                          <asp:BoundField HeaderText="Participantes" DataField="evenUbicacion" />
                          <asp:BoundField HeaderText="TodoDia" DataField="evenTodoDia" />
                          <asp:BoundField HeaderText="Fecha" DataField="evenFechaInicio" />
                          <asp:BoundField HeaderText="Telefono" DataField="" />
                          <asp:BoundField HeaderText="RelacionadoCon" DataField="evenRelacionadoCon" />
                          <asp:BoundField HeaderText="InformacionDescripcion" DataField="evenDescripcion" />           

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
