package sdf;
import java.util.Iterator;
import java.util.Set;

import redis.clients.jedis.Jedis;
public class RedisJava {
   public static void main(String[] args) {
      //连接本地的 Redis 服务
      Jedis jedis = new Jedis("localhost");
      //查看服务是否运行
      System.out.println("Server is running: "+jedis.ping());
      jedis.set("second", "yll_git");
      jedis.set("third", "leiyi_temp");
//      System.out.println("third:"+jedis.get("third"));
      
      /*jedis.lpush("list1", "e");
      jedis.lpush("list1", "f");
      jedis.lpush("list1", "g");
      List<String> list = jedis.lrange("list1", 0 ,5);
      for(int i=0; i<list.size(); i++) {
        System.out.println("Stored string in redis:: "+list.get(i));
      }*/
      
      // 获取数据并输出
      Set<String> keys = jedis.keys("*");
      Iterator<String> i = keys.iterator();
      while(i.hasNext()){
    	  String j = i.next().toString();
    	  System.out.println(j+":"+jedis.get(j));
      }
 }
}