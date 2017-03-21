using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafetyGearsOnline.Models
{
    public class merchandise_types_model
    {


        public string AddMerchandise(merchandise_types merchandisetype)
        {



            try
            {
                SGODBEntities1 db = new SGODBEntities1();
                db.merchandise_types.Add(merchandisetype);

                db.SaveChanges();
                return merchandisetype.Name + "Added Sucessfull";



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
                merchandise_types merchandisetype = db.merchandise_types.Find(id);

                db.merchandise_types.Attach(merchandisetype);
                db.merchandise_types.Remove(merchandisetype);

                db.SaveChanges();
                return merchandisetype.Name + "Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }






        public string UpdateMerchandise(int id, merchandise_types merchandisetype)
        {



            try
            {
                SGODBEntities1 db = new SGODBEntities1();
                merchandise_types m = db.merchandise_types.Find(id);

               
                m.Name = merchandisetype.Name;
               
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