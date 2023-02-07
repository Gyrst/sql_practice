SELECT company_original.___, ___, ___
  -- Start with original company information
  FROM ___ AS company_original
       -- Join to another copy of company with parent
       -- company information
	   LEFT JOIN ___ AS company_parent
       ON company_original.___ = company_parent.___ 
       -- Join to fortune500, only keep rows that match
       ___ JOIN fortune500 
       -- Use parent ticker if there is one, 
       -- otherwise original ticker
       ON coalesce(___.ticker, 
                   ___.ticker) = 
             fortune500.ticker
 -- For clarity, order by rank
 ORDER BY rank; 