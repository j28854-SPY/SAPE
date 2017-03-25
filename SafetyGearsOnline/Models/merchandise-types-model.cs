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
                sgosdbEntities db = new sgosdbEntities();
                db.merchandise_types.Add(merchandisetype);

                db.SaveChanges();
                return merchandisetype.name + "Added Sucessfull";



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
                merchandise_types merchandisetype = db.merchandise_types.Find(id);

                db.merchandise_types.Attach(merchandisetype);
                db.merchandise_types.Remove(merchandisetype);

                db.SaveChanges();
                return merchandisetype.name + "Deleted Sucessfull";
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
                sgosdbEntities db = new sgosdbEntities();
                merchandise_types m = db.merchandise_types.Find(id);

               
                m.name = merchandisetype.name;
               
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