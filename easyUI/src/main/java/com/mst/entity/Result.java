package com.mst.entity;

public class Result {
	private String status;
	private String successMsg;
	private String errorMsg;
	
	public Result(String status, String successMsg, String errorMsg) {
		super();
		this.status = status;
		this.successMsg = successMsg;
		this.errorMsg = errorMsg;
	}
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSuccessMsg() {
		return successMsg;
	}
	public void setSuccessMsg(String successMsg) {
		this.successMsg = successMsg;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	@Override
	public String toString() {
		return "Result [status=" + status + ", successMsg=" + successMsg + ", errorMsg=" + errorMsg + "]";
	}
	
	
}
