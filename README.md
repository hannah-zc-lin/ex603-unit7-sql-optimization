# EX603 Unit 7 – SQL Performance Optimization

## Project Summary

This project focuses on improving SQL query performance for a music streaming database with around 3 million plays. 

## Optimization Methods

- **Report A:** Created a composite index on user_id and played_at to avoid scanning the entire plays table.
- **Report B:** Replaced DATE() with a timestamp range and created a covering index to reduce heap accesses.
- **Report C (Bonus):** Replaced the Report A index with a covering index that includes track_id. This improved both Reports A and C without maintaining two similar indexes.

## Performance Results

| Report | Before (ms) | Final After (ms) | Time Reduction |
|---|---:|---:|---:|
| Report A | 266.391 | 12.763 | 95.21% |
| Report B | 276.591 | 172.496 | 37.63% |
| Report C | 2.677 | 1.212 | 54.73% |

## Findings

All three reports showed improved performance after the final optimization. Report B showed that using an index does not always make a query faster. Covering indexes helped reduce buffer usage and allowed PostgreSQL to retrieve data without accessing the plays table directly.

## Conclusion

This assignment helped me understand how to point out performance issues using execution plans and choose appropriate indexes. While indexes improve query performance, they also require additional storage and maintenance. I should consider both execution time and buffer usage when evaluating the performance.