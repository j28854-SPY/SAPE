using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SafetyGearsOnline.Models.EntityFramework;

namespace SafetyGearsOnline.Models
{
    public class item_versions_model
    {
        /*begin adding item versions code*/

        public string add_item(item_versions itemversions)
        {



            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                db.item_versions.Add(itemversions);

                db.SaveChanges();
                return itemversions.ItemName + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }


        /*end adding item versions code*/


        /*begin deleting item versions code*/
        public string delete_item(int Code)
        {



            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_versions itemversions = db.item_versions.Find(Code);

                db.item_versions.Attach(itemversions);
                db.item_versions.Remove(itemversions);

                db.SaveChanges();
                return itemversions.ItemName + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end deleting item versions code*/



        /*begin updating item versions code*/
        public string update_item(int Code, item_versions itemversions)
        {



            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_versions i = db.item_versions.Find(Code);

               
                i.ItemName = itemversions.ItemName;
               
                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end updating item versions code*/


    }
}