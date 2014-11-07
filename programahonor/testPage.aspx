<%@ Page Language="VB"  %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
  <script runat=server>
      Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
          If Page.IsValid Then
              lblResult.Text = "You Got It!"
              lblResult.ForeColor = Drawing.Color.Green
          Else
              lblResult.Text = "Incorrect"
              lblResult.ForeColor = Drawing.Color.Red
          End If
      End Sub
  </script>
  <html>
  <body>
      <form runat="server">
          <h2>Contact Us</h2>
          <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
          <p><asp:TextBox ID="txtName" runat="server"></asp:TextBox></p>
          <br />
          <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
          <p><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></p>
          <br />
          <asp:Label ID="lblContactNum" runat="server" Text="Contact Number"></asp:Label>
          <p><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></p>
          <br />
          <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
          <p>
              <textarea id="txtMessage" cols="20" name="S1" rows="6"></textarea></p>
          <br />
          <br />
          <asp:Label Visible=true ID="lblResult" runat="server" />
          <recaptcha:RecaptchaControl
              ID="recaptcha"
              runat="server"
              Theme="red"
              PublicKey="6LcMevwSAAAAALGzxtjS26iBJnXgI-D-0M1cfWhl"
              PrivateKey="6LcMevwSAAAAACpYNRaOWVbcHhcYytLqeQURqRto"
              />

          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
      </form>
  </body>
  </html>
