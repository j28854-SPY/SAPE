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
                sgosdbEntities db = new sgosdbEntities();
                db.merchandise_table.Add(merchandise);

                db.SaveChanges();
                return merchandise.name + "Added Sucessfull";



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
                sgosdbEntities db = new sgosdbEntities();
                merchandise_table merchandise = db.merchandise_table.Find(id);

                db.merchandise_table.Attach(merchandise);
                db.merchandise_table.Remove(merchandise);

                db.SaveChanges();
                return merchandise.name + "Deleted Sucessfull";
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
                sgosdbEntities db = new sgosdbEntities();
                merchandise_table m = db.merchandise_table.Find(id);

                m.idtype = merchandise.idtype;
                m.name = merchandise.name;
                m.price = merchandise.price;
                m.about = merchandise.about;
                m.image = merchandise.image;

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