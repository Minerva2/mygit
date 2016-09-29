package sdf;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import redis.clients.jedis.Jedis;

public class AddQues extends ActionSupport{
	private String msg = "";
	private Question que;
	private List<Map> questions = new ArrayList<Map>();
	
	public String save(){
		try{
			Jedis jedis = new Jedis("localhost");
			
			Long len = jedis.hlen("hash");
			if(len==0L){//如果不存在key为hash的数据则插入
				HashMap<String,String> map = new HashMap<String,String>();
				map.put("num","1");
				jedis.hmset("hash",map );
			}else{
				jedis.hincrBy("hash", "num", 1L);//如果存在则将数据加1
			}
			String num = jedis.hget("hash","num");//得到新问题id
			
			//创建新问题
			HashMap<String,String> ques = new HashMap<String,String>();
			ques.put("title", this.que.getTitle());
			ques.put("num", num);
			ques.put("project", this.que.getProject());
			ques.put("insurance", this.que.getInsurance());
			ques.put("type", this.que.getType());
			ques.put("tel",this.que.getTel());
			ques.put("written", this.que.getWritten());
			ques.put("content", this.que.getContent());
			jedis.hmset("question"+num, ques);
			
			//保存
			jedis.save();
			this.getAll();
			this.setMsg("success");
		}catch(Exception e){
			this.setMsg("error");
		}
		return this.SUCCESS;
	}
	
	public String init(){
		this.getAll();
		return this.SUCCESS;
	}
	
	public void getAll(){
		Jedis jedis = new Jedis("localhost");
		
		//获取所有的问题
		Map<String,String> questemp;
		Set<String> keys = jedis.keys("question*");
		Iterator i = keys.iterator();
		while(i.hasNext()){
			questemp = jedis.hgetAll(i.next().toString());
			this.getQuestions().add(questemp);
		}
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

	/**
	 * @param que the que to set
	 */
	public void setQue(Question que) {
		this.que = que;
	}

	/**
	 * @return the que
	 */
	public Question getQue() {
		return que;
	}

	/**
	 * @param questions the questions to set
	 */
	public void setQuestions(List<Map> questions) {
		this.questions = questions;
	}

	/**
	 * @return the questions
	 */
	public List<Map> getQuestions() {
		return questions;
	}
}
