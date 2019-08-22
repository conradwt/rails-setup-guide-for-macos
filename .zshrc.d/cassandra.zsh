# set environment variables for Cassandra.
export CASSANDRA_VERSION=3.11.0
export CASSANDRA_HOME=/Applications/apache-cassandra-${CASSANDRA_VERSION}
export PATH=${CASSANDRA_HOME}/bin:${CASSANDRA_HOME}/tools/bin:${PATH}

# set Cassandra aliases.
alias castart="cassandra -f"
alias castop="pkill -f CassandraDaemon"
