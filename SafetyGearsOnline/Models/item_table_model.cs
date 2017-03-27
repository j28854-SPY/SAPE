﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SafetyGearsOnline.Models.EntityFramework;

namespace SafetyGearsOnline.Models
{
    public class item_table_model
    {

        /*begin getting item from table*/
        public item_table retrieve_item(int Code)
        {
            try
            {
                using(SaPEEntitiesLocal db = new SaPEEntitiesLocal())
                {
                    item_table itemtable = db.item_table.Find(Code);
                    return itemtable;



                }
            }
            catch (Exception)
            {
                return null;


            }

        }
        /*end updating item pushcart code similar to merchandise types*/



        /*begin array list of item from table*/
        public List<item_table> retrieve_all_item()
        {
            try
            {
                using(SaPEEntitiesLocal db = new SaPEEntitiesLocal())
                {
                    List<item_table> itemtable = (from x in db.item_table select x).ToList();
                    return itemtable;


                }               
            }
            catch (Exception)
            {
                return null;


            }
        }

        /*end array list of item from table*/


        /*begin array list of item versions from table*/
        public List<item_table> retrieve_item_versions(int Versions)
        {
            try
            {
                using(SaPEEntitiesLocal db = new SaPEEntitiesLocal())
                {
                    List<item_table> itemtable = (from x in db.item_table where x.Versions == Versions select x).ToList();
                    return itemtable;


                }
            }
            catch
            {
                return null;


            }
        }

        /*end array list of item versions from table*/


        /*begin adding item to table*/

        public string add_item(item_table itemtable)
        {
            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                db.item_table.Add(itemtable);

                db.SaveChanges();
                return itemtable.ItemName + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }

        /*end adding item to table*/



        /*begin deleting item to table*/
        public string delete_item(int Code)
        {
            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_table itemtable = db.item_table.Find(Code);

                db.item_table.Attach(itemtable);
                db.item_table.Remove(itemtable);

                db.SaveChanges();
                return itemtable.ItemName + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }
        /*end deleting item to table*/




        /*begin updating item to table*/
        public string update_item(int Code, item_table itemtable)
        {
            try
            {
                SaPEEntitiesLocal db = new SaPEEntitiesLocal();
                item_table i = db.item_table.Find(Code);

                i.ItemName = itemtable.ItemName;
                i.Versions = itemtable.Versions;
                i.ItemDetails = itemtable.ItemDetails;
                i.ItemCostBND = itemtable.ItemCostBND;
                i.ItemDisplay = itemtable.ItemDisplay;

                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }

        /*end updating item to table*/


    }
}