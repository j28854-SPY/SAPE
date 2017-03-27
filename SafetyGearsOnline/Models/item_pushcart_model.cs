using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SafetyGearsOnline.Models.EntityFramework;

namespace SafetyGearsOnline.Models
{
    public class item_pushcart_model
    {
        /*begin adding item pushcart code similar to merchandise types*/

        public string add_item(item_pushcart itempushcart)
        {



            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                db.item_pushcart.Add(itempushcart);

                db.SaveChanges();
                return itempushcart.BuyDate + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end adding item pushcart code similar to merchandise types*/


        /*begin deleting item pushcart code similar to merchandise types*/

        public string delete_item(int Code)
        {



            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_pushcart itempushcart = db.item_pushcart.Find(Code);

                db.item_pushcart.Attach(itempushcart);
                db.item_pushcart.Remove(itempushcart);

                db.SaveChanges();
                return itempushcart.BuyDate + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end deleting item pushcart code similar to merchandise types*/



        /*begin updating item pushcart code similar to merchandise types*/
        public string update_item(int Code, item_pushcart itempushcart)
        {



            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_pushcart i = db.item_pushcart.Find(Code);

                i.UserCode = itempushcart.UserCode;
                i.PushCart = itempushcart.PushCart;
                i.ItemCode = itempushcart.ItemCode;
                i.BuyDate = itempushcart.BuyDate;
                i.Total = itempushcart.Total;

                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end updating item pushcart code similar to merchandise types*/

    }
}