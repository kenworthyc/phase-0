**One-to-one Schema**
!(Laptop database schema)[imgs/one-to-one.png]

**Many-to-many Schema**
!(Grocery list schema)[imgs/many-to-many.png]

**What is a one-to-one database?**

A one-to-one database can keep track of one type of item and further detail (usually optional detail) about that specific type of item.

**When would you use a one-to-one database? (Think generally, not in terms of the example you created).**

You'd use a one-to-one database when the crucial information to access and sort would be the primary item, but there was ample opportunity and room for potentially useful extra details to be gathered and stored. For instance, online shopping profiles once consisted of the purchasing history of individuals. Viewing histories were probably "extra details" at some point, but as Amazon.com gathered that information, they saw their potential use as an added layer to shopping profiles.

**What is a many-to-many database?**

A many-to-many database is a complex interrelation of data types. Multiple categories of data are stored in one table, which is connected to another table with multiple categories of data by a **join table**, which

**When would you use a many-to-many database? (Think generally, not in terms of the example you created).**

Many-to-many databases would be useful in many different contexts— any one where there are multiple types of information held with differing levels of detail. A real estate company would have plenty of tables surrounding houses they represent: the PropertyData table would include how many rooms, bedrooms, bathrooms, when the house was built, the previous owners, how many visits it has had, etc. In addition to the information on the house, they'd want to know what clients they had who had seen which house— so they would have a Client table, including name, address, phone, interests, and houses they had viewed. To link them in, they could have a join table which used the ID from PropertyData to refer that table to the Client table.

**What is confusing about database schemas? What makes sense?**

I think the most confusing thing would probably be keeping track of the interrelations between all the different tables. Schema Designer is a little hard for me to use — I find myself trying to list sample data, just to get a better idea of how the tables would need to interact.
The unique IDs and referential foreign keys pleasantly make sense to me, and the general structure and utility of many-to-many and one-to-one schemas are intuitive enough. As always, practice makes (more) perfect.