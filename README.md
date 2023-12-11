# tc_influxdb_client

This is TwinCAT library that provides PLC data recording feature to a influxDB. Number of array size for record data will be determined by database throughput.

## Requirement

## Usage

1. The schema for influxDB have to be defined as a structure in the PLC DUTs.

2. The tasks for only database access have to be created.

    The database insertion process by TF6420 using huge ADS data buffer size. It is possible to causes of latency and jitter. Therefore, The insertion process to database have to be decouple with critical tasks.

    In this reason, data transferring between these tasks queue buffer would be used for.

3. 

4. Define queue buffer size 