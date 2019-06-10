CREATE or REPLACE FUNCTION ts_to_date( p_ts IN NUMBER )
  RETURN DATE
IS
  l_date DATE;
BEGIN
  
  -- convertion de date en timestamp
  l_date := date '1970-01-01' + p_ts/60/60/24;
  RETURN l_date;
END;
