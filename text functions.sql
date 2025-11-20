select position("world" in "hellworld");
select position("o" in "helloworld");
select instr("helloworld","ell");
select locate("ell", "helloworld");
select locate("l","helloworld",3);

select locate("l", "hellworld",5);
select locate("l", "helloworld",7);
select locate("l", "helloworld",10);

select substring("mahak shah", 5);
select substring("mahak shah", 3,6);
select substring("mahak shah",-6,3);
 select mid("mahak shah", -6,3);
 
 select substring_index("www.mahakshah.net",".",2);
 select substring_index("www.mahakshah.net","e",2);
 
 select strcmp("mahak shah", "mahak shah");
 select strcmp("mahak shah", "mahak");
 select strcmp("mahak shah", "mahak shah");
 
 select format(235.3568,3);
 select left("mahak shah",3);
  select left("mahak shah",5);
  
  select right("mahak shah",3);
  select right("mahak shah",5);
  
  select rpad("mahak shah",20,"-");
  select rpad("mahak shah",20,"*");
  
    select lpad("mahak shah",20,"*");
     select lpad("mahak shah",20,"-");
     
     select reverse("mahak shah");
     select replace("mahak shah", "mahak", "ms.");
     
     select field("a", "X", "a", "k");
     select field("a", "X", "A", "k");
     
     select field(5,0,1,2,3,4,5);
     select field("b", "X", "a", "k");
     select field("b", "X", "a", "b");
     
     select field("ram", "ram","mohan", "shyam");
     select find_in_set("mohan", "ram,mohan,shyam");