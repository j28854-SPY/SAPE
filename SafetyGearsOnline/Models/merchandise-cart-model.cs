using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafetyGearsOnline.Models
{
    public class merchandise_cart_model
    {


        public string AddMerchandise(merchandise_cart cart)
        {



            try
            {
                sgosdbEntities db = new sgosdbEntities();
                db.merchandise_cart.Add(cart);

                db.SaveChanges();
                return cart.datebuy + "Added Sucessfull";



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
                merchandise_cart cart = db.merchandise_cart.Find(id);

                db.merchandise_cart.Attach(cart);
                db.merchandise_cart.Remove(cart);

                db.SaveChanges();
                return cart.datebuy + "Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }






        public string UpdateMerchandise(int id, merchandise_cart cart)
        {



            try
            {
                sgosdbEntities db = new sgosdbEntities();
                merchandise_cart m = db.merchandise_cart.Find(id);

                m.customerid = cart.customerid;
                m.merchandiseid = cart.merchandiseid;
                m.amount = cart.amount;
                m.datebuy = cart.datebuy;
                m.incart = cart.incart;

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