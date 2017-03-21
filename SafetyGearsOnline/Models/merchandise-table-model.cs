using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafetyGearsOnline.Models
{
    public class merchandise_table_model
    {


        public string AddMerchandise(merchandise_table merchandise)
        {



            try
            {
                SGODBEntities1 db = new SGODBEntities1();
                db.merchandise_table.Add(merchandise);

                db.SaveChanges();
                return merchandise.Name + "Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }






        public string DeleteMerchandise(int id)
        {



            try
            {
                SGODBEntities1 db = new SGODBEntities1();
                merchandise_table merchandise = db.merchandise_table.Find(id);

                db.merchandise_table.Attach(merchandise);
                db.merchandise_table.Remove(merchandise);

                db.SaveChanges();
                return merchandise.Name + "Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }






        public string UpdateMerchandise(int id, merchandise_table merchandise)
        {



            try
            {
                SGODBEntities1 db = new SGODBEntities1();
                merchandise_table m = db.merchandise_table.Find(id);

                m.idtype = merchandise.idtype;
                m.Name = merchandise.Name;
                m.Price = merchandise.Price;
                m.About = merchandise.About;
                m.Image = merchandise.Image;

                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }




    }
}