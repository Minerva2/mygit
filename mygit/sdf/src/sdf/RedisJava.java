package sdf;
import java.util.List;

import redis.clients.jedis.Jedis;
public class RedisJava {
   public static void main(String[] args) {
      //连接本地的 Redis 服务
      Jedis jedis = new Jedis("localhost");
      //查看服务是否运行
      System.out.println("Server is running: "+jedis.ping());
      
      //jedis.set("third", "leiyi_temp");
      //System.out.println("third:"+jedis.get("third"));
      
      /*jedis.lpush("list1", "e");
      jedis.lpush("list1", "f");
      jedis.lpush("list1", "g");
      List<String> list = jedis.lrange("list1", 0 ,5);
      for(int i=0; i<list.size(); i++) {
        System.out.println("Stored string in redis:: "+list.get(i));
      }*/
      
      // 获取数据并输出
      List<String> list = (List<String>) jedis.keys("list1");
      for(int i=0; i<list.size(); i++) {
        System.out.println("List of stored keys:: "+list.get(i));
      }
 }
}