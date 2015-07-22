parallel-sql is a version of GNU parallel modified to use a PostgreSQL database. I also added a new argument that causes parallel to exit on kill -TERM rather than just not starting new tasks.

psu (parallel-sql utility) = loads tasks, removes tasks, and so on.

pssu (parallel-sql setup utility) = creates users and tables

parallel-sql = the main event

Sample Invocations:

parallel-sql --sql -a parallel --exit-on-term

parallel-sql --sql -a parallel --exit-on-term --sql-set myset

parallel-sql --sql -a parallel --exit-on-term --sql-stats

parallel-sql --sql -a parallel --exit-on-term --sql-noretry
