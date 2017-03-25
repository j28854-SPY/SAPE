using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafetyGearsOnline.Models
{
    public class merchandise_table_model
    {

        /*begin getting merchandise from table*/
        private merchandise_table retrieve_merchandise(int id)
        {
            try
            {
                using(sgosdblocal db = new sgosdblocal())
                {
                    merchandise_table merchandise = db.merchandise_table.Find(id);
                    return merchandise;



                }
            }
            catch (Exception)
            {
                return null;


            }

        }
        /*end updating merchandise cart code similar to merchandise types*/



        /*begin array list of merchandise from table*/
        private List<merchandise_table> retrieve_all_merchandise()
        {
            try
            {
                using(sgosdblocal db = new sgosdblocal())
                {
                    List<merchandise_table> merchandise = (from x in db.merchandise_table select x).ToList();
                    return merchandise;


                }               
            }
            catch (Exception)
            {
                return null;


            }
        }

        /*end array list of merchandise from table*/


        /*begin array list of merchandise types from table*/
        private List<merchandise_table> retrieve_merchandise_types(int idtype)
        {
            try
            {
                using(sgosdblocal db = new sgosdblocal())
                {
                    List<merchandise_table> merchandise = (from x in db.merchandise_table where x.idtype == idtype select x).ToList();
                    return merchandise;


                }
            }
            catch
            {
                return null;


            }
        }

        /*end array list of merchandise types from table*/


        /*begin adding merchandise to table*/

        public string AddMerchandise(merchandise_table merchandise)
        {
            try
            {
                sgosdblocal db = new sgosdblocal();
                db.merchandise_table.Add(merchandise);

                db.SaveChanges();
                return merchandise.name + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }

        /*end adding merchandise to table*/



        /*begin deleting merchandise to table*/
        public string DeleteMerchandise(int id)
        {
            try
            {
                sgosdblocal db = new sgosdblocal();
                merchandise_table merchandise = db.merchandise_table.Find(id);

                db.merchandise_table.Attach(merchandise);
                db.merchandise_table.Remove(merchandise);

                db.SaveChanges();
                return merchandise.name + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }
        /*end deleting merchandise to table*/




        /*begin updating merchandise to table*/
        public string UpdateMerchandise(int id, merchandise_table merchandise)
        {
            try
            {
                sgosdblocal db = new sgosdblocal();
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

        /*end updating merchandise to table*/


    }
}