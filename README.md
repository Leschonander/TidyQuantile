# Tidy Quantile

*Tidy Quantiles* for the Tidyverse.

Every wanted a way to make quantiles that worked well with the tidyverse workflow? This package does the trick.


Example:
```R
tidy_tally_st(station_data.SF, dc_census_shapefiles, OBJECTID)
```
Output:
```
# A tibble: 130 x 2
   OBJECTID     n
      <dbl> <int>
 1        1     2
 2        2     1
 3        3     1
 4        4     3
 5        5     3
 6        6     3
 7        7     2
 8       10     1
 9       11     6
10       12     1
# ... with 120 more rows
```