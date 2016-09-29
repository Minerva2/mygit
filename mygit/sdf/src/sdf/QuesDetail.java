package sdf;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import redis.clients.jedis.Jedis;

public class QuesDetail extends ActionSupport{
	private String num = "";
	private String msg = "";
	private Question que = new Question();
	
	/**
	 * @return the que
	 */
	public Question getQue() {
		return que;
	}

	/**
	 * @param que the que to set
	 */
	public void setQue(Question que) {
		this.que = que;
	}

	public String detail(){
		try{
			Jedis jedis = new Jedis("localhost");
			
			//获取问题
			num = "question"+num;
			que.setTitle(jedis.hget(num, "title"));
			que.setNum(jedis.hget(num, "num"));
			que.setProject(jedis.hget(num, "project"));
			que.setInsurance(jedis.hget(num, "insurance"));
			que.setType(jedis.hget(num, "type"));
			que.setTel(jedis.hget(num, "tel"));
			que.setWritten(jedis.hget(num, "written"));
			que.setContent(jedis.hget(num, "content"));
			this.setMsg("success");
		}catch(Exception e){
			this.setMsg("error");
		}
		return this.SUCCESS;
	}

	/**
	 * @param num the num to set
	 */
	public void setNum(String num) {
		this.num = num;
	}

	/**
	 * @return the num
	 */
	public String getNum() {
		return num;
	}

	/**
	 * @param msg the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}
}
