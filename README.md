# Tidy Quantile

*Tidy Quantiles* for the Tidyverse.

Every wanted a way to make quantiles that worked well with the tidyverse workflow? This package does the trick.


Example:
```R
station_data.SF %>%
  tidy_quantile(num_bikes_available, 5) 
```
Output:
```
 0%  25%  50%  75% 100% 
 0    4    7   11   42 
```