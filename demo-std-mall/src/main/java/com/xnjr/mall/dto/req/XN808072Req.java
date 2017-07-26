package com.xnjr.mall.dto.req;




/**
 * 前端列表查询banner
 * @author: asus 
 * @since: 2017年3月22日 上午10:31:10 
 * @history:
 */
public class XN808072Req extends APageReq {


    private static final long serialVersionUID = 1L;

    // ui位置
    private String location;
    
    private String orderNo ;


	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	
	

    

    

    
}