-- Table to separate trips by months using partitions
CREATE TABLE public.travel_log
(
    id serial,
    id_trip integer,
    date date
) PARTITION BY RANGE (date);

-- Partitions of the year 2023

-- January Partition
CREATE table travel_log_2023_01 PARTITION OF travel_log
FOR VALUES from ('2023-01-01') to ('2023-01-31');

-- February Partition
CREATE TABLE travel_log_2023_02 PARTITION OF travel_log
  FOR VALUES FROM ('2023-02-01') TO ('2023-02-28');

-- March Partition
CREATE TABLE travel_log_2023_03 PARTITION OF travel_log
  FOR VALUES FROM ('2023-03-01') TO ('2023-03-31');

-- April Partition
CREATE TABLE travel_log_2023_04 PARTITION OF travel_log
  FOR VALUES FROM ('2023-04-01') TO ('2023-04-30');

-- May Partition
CREATE TABLE travel_log_2023_05 PARTITION OF travel_log
  FOR VALUES FROM ('2023-05-01') TO ('2023-05-31');

-- June Partition
CREATE TABLE travel_log_2023_06 PARTITION OF travel_log
  FOR VALUES FROM ('2023-06-01') TO ('2023-06-30');

-- July Partition
CREATE TABLE travel_log_2023_07 PARTITION OF travel_log
  FOR VALUES FROM ('2023-07-01') TO ('2023-07-31');

-- August Partition
CREATE TABLE travel_log_2023_08 PARTITION OF travel_log
  FOR VALUES FROM ('2023-08-01') TO ('2023-08-31');

-- September Partition
CREATE TABLE travel_log_2023_09 PARTITION OF travel_log
  FOR VALUES FROM ('2023-09-01') TO ('2023-09-30');

-- October Partition
CREATE TABLE travel_log_2023_10 PARTITION OF travel_log
  FOR VALUES FROM ('2023-10-01') TO ('2023-10-31');

-- November Partition
CREATE TABLE travel_log_2023_11 PARTITION OF travel_log
  FOR VALUES FROM ('2023-11-01') TO ('2023-11-30');

-- December Partition
CREATE TABLE travel_log_2023_12 PARTITION OF travel_log
  FOR VALUES FROM ('2023-12-01') TO ('2023-12-31');