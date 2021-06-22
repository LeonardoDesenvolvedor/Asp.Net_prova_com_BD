
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Funcionario
{
    public partial class inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection();
                cmd.CommandText = @"INSERT INTO funcionario
                                    (nome, sexo, data_nasc, num_cartt, tel_fixo, tel_cel, email, endereco)
                               VALUES(@nome, @sexo, @data_nasc, @num_cartt, @tel_fixo, @tel_cel, @email, @endereco)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", ddlSexo);
                cmd.Parameters.AddWithValue("data_nasc", txtDataN);
                cmd.Parameters.AddWithValue("num_cartt", txtCarteira);
                cmd.Parameters.AddWithValue("tel_fixo", txtTelf);
                cmd.Parameters.AddWithValue("tel_cel", txtCel);
                cmd.Parameters.AddWithValue("email", txtEmail);
                cmd.Parameters.AddWithValue("endereco", txtEndereco);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Inserido com sucesso !";
            }
            catch (Exception ex)
            {
                lblResultado.CssClass = "text text-danger";
                lblResultado.Text = "Falha: " + ex.Message; 
            }
            finally
            {
                Conexao.Desconectar();
            }

        }
    }
}