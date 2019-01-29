using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Web.UI;

namespace BLL
{
    public class RepositorioUsuario
    {
        public RepositorioUsuario()
        {

        }

        public static void Autenticar(string email, string password, Page page)
        {
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            Expression<Func<Usuarios, bool>> filtrar = x => true;
            Usuarios usuario = new Usuarios();

            filtrar = t => t.Email.Equals(email) && t.Clave.Equals(password);

            if (repositorio.GetList(filtrar).Count() != 0)
                FormsAuthentication.RedirectFromLoginPage(usuario.Email, true);
            else
                ScriptManager.RegisterStartupScript(page, typeof(Page), "toastr_message", script: "toastr['error'] ('Usuario o Contraseña Incorrecto');", addScriptTags: true);
        }
    }
}

