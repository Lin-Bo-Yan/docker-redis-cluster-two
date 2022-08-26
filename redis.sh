echo "node1:"
docker exec -it redis-node1 redis-cli -p 7001 info Replication | grep role
redis-cli -p 7001 cluster info | grep cluster_state
echo "node2:"
docker exec -it redis-node2 redis-cli -p 7002 info Replication | grep role
redis-cli -p 7002 cluster info | grep cluster_state
echo "node3:"
docker exec -it redis-node3 redis-cli -p 7003 info Replication | grep role
redis-cli -p 7003 cluster info | grep cluster_state
echo "----------------------------"
echo "node4:"
docker exec -it redis-node4 redis-cli -p 7004 info Replication | grep role
redis-cli -p 7004 cluster info | grep cluster_state
echo "node5:"
docker exec -it redis-node5 redis-cli -p 7005 info Replication | grep role
redis-cli -p 7005 cluster info | grep cluster_state
echo "node6:"
docker exec -it redis-node6 redis-cli -p 7006 info Replication | grep role
redis-cli -p 7006 cluster info | grep cluster_state