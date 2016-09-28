package sdf;

import com.opensymphony.xwork2.ActionSupport;

import redis.clients.jedis.Jedis;

public class AddQues extends ActionSupport{
	private String msg = "success";
	
	public String save(){
		Jedis jedis = new Jedis("localhost");
		jedis.set("msg", "success");
		this.setMsg(jedis.get("msg"));
		return this.SUCCESS;
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
