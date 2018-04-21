<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Tratos.aspx.cs" Inherits="Proyecto.Web.Views.CRUD_TRATO.Tratos" %>

<asp:Content ID="contentHeader" ContentPlaceHolderID="header" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="contenedor" runat="server">
    <div class="mx-auto mt-5">

        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <h1>
                        <b >Tratos</b>
                        <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                    </h1>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblCodigoTrato" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtCodigoTrato" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCodigoTrato" runat="server"
                                TargetControlID="txtCodigoTrato"
                                WatermarkText="Codigo Trato" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblImporte" runat="server" Text="Importe"></asp:Label>
                   <asp:TextBox ID="txtImporte" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtImporte" runat="server"
                                TargetControlID="txtImporte"
                                WatermarkText="Importe" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblNombreTrato" runat="server" Text="Nombre de Trato"></asp:Label>
                   <asp:TextBox ID="txtNombreTrato" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNombreTrato" runat="server"
                                TargetControlID="txtNombreTrato"
                                WatermarkText="Nombre de Trato" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblFechaCierre" runat="server" Text="Fecha de Cierre"></asp:Label>
                   <asp:calendar ID="calenFechaCierre" runat="server" CssClass="form-control"></asp:calendar>
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblNumeroCuenta" runat="server" Text="Numero de Cuenta"></asp:Label>
                   <asp:TextBox ID="txtNumeroCuenta" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNumeroCuenta" runat="server"
                                TargetControlID="txtNumeroCuenta"
                                WatermarkText="Numero de Cuenta" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblFase" runat="server" Text="Fase"></asp:Label>
                   <asp:DropDownList ID="DropFase" runat="server"></asp:DropDownList>
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
                  <asp:DropDownList ID="DropTipo" runat="server"></asp:DropDownList>
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblPorbabilidad" runat="server" Text="Probabilidad"></asp:Label>
                   <asp:TextBox ID="txtProbabilidad" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtProbabilidad" runat="server"
                                TargetControlID="txtProbabilidad"
                                WatermarkText="Probabilidad" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblSientePaso" runat="server" Text="Siguiente Paso"></asp:Label>
                   <asp:TextBox ID="txtSiguientePaso" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtSiguientePaso" runat="server"
                                TargetControlID="txtSiguientePaso"
                                WatermarkText="Siguiente Paso" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                   <asp:Label ID="lblIngresosEsperado" runat="server" Text="Ingresos Esperado"></asp:Label>
                   <asp:TextBox ID="txtIngresosEsperado" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtIngresosEsperados" runat="server"
                                TargetControlID="txtIngresosEsperado"
                                WatermarkText="Ingresos Esperado" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblbFuentePosibleCliente" runat="server" Text="Fuente Posible Cliente"></asp:Label>
                  <asp:DropDownList ID="DropFuentePosibleCliente" runat="server"></asp:DropDownList>
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblFuenteCampaña" runat="server" Text="Fuente de Campaña"></asp:Label>
                   <asp:TextBox ID="txtFuenteCampaña" runat="server" CssClass="form-control"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtFuenteCampaña" runat="server"
                                TargetControlID="txtxFuenteCampaña"
                                WatermarkText="Fuente de Campaña" />
                </div>
                <div class="col-md-3">
                   <asp:Label ID="lblNombreContacto" runat="server" Text="Nombre de Contacto"></asp:Label>
                   <asp:TextBox ID="txtNombreContacto" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="twmtNombreContacto" runat="server"
                                TargetControlID="txtNombreContacto"
                                WatermarkText="Nombre de Contacto" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                   <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                   <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                   <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDescripcion" runat="server"
                                TargetControlID="txtDescripcion"
                                WatermarkText="Descripcion" />
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
                              <asp:label runat="server" ID="lblCodigoTrato" text='<%# Bind("tratCodigo") %>'></asp:label>
                              </ItemTemplate>
                          </asp:templatefield>

                          <asp:BoundField HeaderText="Trato" DataField="tratImporte" />
                          <asp:BoundField HeaderText="NombreTrato" DataField="tratNombre" />
                          <asp:BoundField HeaderText="FechaCierre" DataField="tratFechaCierre" />
                          <asp:BoundField HeaderText="numeroCuenta" DataField="cuenCodigo" />
                          <asp:BoundField HeaderText="CorreoElectronico" DataField="clieCorreo" />
                          <asp:BoundField HeaderText="Fase" DataField="faseCodigo" />
                          <asp:BoundField HeaderText="Probabilidad" DataField="tratProbabilidad" />
                          <asp:BoundField HeaderText="SiguientePaso" DataField="tratSiguientePaso" />
                          <asp:BoundField HeaderText="IngresosEsperado" DataField="tratIngresosEsperados" />
                          <asp:BoundField HeaderText="FuenteCampaña" DataField="fuenCodigo" />
                          <asp:BoundField HeaderText="NombreContacto" DataField="contCodigo" />
                          <asp:BoundField HeaderText="Descripcion" DataField="tratDescripcion" />            

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
