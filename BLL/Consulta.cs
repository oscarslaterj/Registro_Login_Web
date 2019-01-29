﻿using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Consulta
    {
        private int ToInt(object valor)
        {
            int retorno = 0;
            int.TryParse(valor.ToString(), out retorno);

            return retorno;
        }

        public static List<Usuarios> Consultar(int index, string criterio)
        {
            Expression<Func<Usuarios, bool>> filtro = p => true;
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            List<Usuarios> listUsuarios = new List<Usuarios>();
            int id = 0;

            switch (index)
            {
                case 0://Todo
                    break;

                case 1://UsuarioId
                    id = Convert.ToInt32(criterio);
                    filtro = p => p.UsuarioId == id;
                    break;

                case 2://Nombre
                    filtro = p => p.Nombre.Contains(criterio);
                    break;
                case 3://Email
                    filtro = p => p.Email.Contains(criterio);
                    break;
            }
            listUsuarios = repositorio.GetList(filtro);

            return listUsuarios;
        }
    }
}
