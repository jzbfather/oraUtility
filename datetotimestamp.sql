CREATE or REPLACE FUNCTIN date_to_ts( PDate in date ) return number is

   l_unix_ts number;

BEGIN

   l_unix_ts := ( PDate - date '1970-01-01' ) * 60 * 60 * 24;
   return l_unix_ts;

END;
