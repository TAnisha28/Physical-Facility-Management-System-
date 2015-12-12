using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PhysicalManagementSystemApp.Model;
using System.Configuration;
namespace PhysicalManagementSystemApp.DAL
{
    public class OrganizationGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["PhysicalFacilityConDB"].ConnectionString;
        public List<Organization> GetData()
        
        {
            List<Organization> orgList = new List<Organization>();

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select * from Details order by type desc";
            SqlCommand cmd = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Organization org = new Organization();
                org.Name = dr.GetValue(0).ToString();
                org.Details = dr.GetValue(1).ToString();
                org.Type = dr.GetValue(2).ToString();
                orgList.Add(org);
            }
            connection.Close();
            return orgList;
            
        }
        public bool SaveOrganization(string nam,string email)
        {
          
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select * from details where upper(name)=upper(@nam)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@nam", nam);            
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                
                return false;
            }
            connection.Close();
            
            
           
            query = "insert into Details ( Name,Details,type)values (@name,@email,'Dept') ";
            cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@name", nam);
            cmd.Parameters.AddWithValue("@email", email);
            connection.Open();
            int n=cmd.ExecuteNonQuery();
            connection.Close();

            if (n > 0)
            {
                return true;
            }
            else
                return false;
        }
        public bool DeleteData(string name)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "delete from Details where Name=@name ";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@name", name);
            connection.Open();
            int n = cmd.ExecuteNonQuery();
            connection.Close();
            if (n > 0)
            {
                return true;
            }
            else
                return false;
           
        }
        public bool UpdateData(string name,string email)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "update Details set details=@email where Name=@name ";
            SqlCommand cmd = new SqlCommand(query, connection);
           
            cmd.Parameters.AddWithValue("@name",name);
            
            cmd.Parameters.AddWithValue("@email", email);
          

            connection.Open();
           int i= cmd.ExecuteNonQuery();
            connection.Close();
            if (i > 0)
                return true;
            else
                return false;

        }

    }
}