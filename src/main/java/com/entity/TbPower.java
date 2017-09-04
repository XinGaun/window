package com.entity;
/**
 * 权限表实体类
 * @author Administrator
 *
 */
public class TbPower {
	private int powerId = 0;//权限ID
	private String powerName="0";//权限名称
	private String powerKey="0";//关键字
	private String powerView = "1";//是否显示在菜单中1为显示，2 为不显示
	private String powerStatus;//状态
	private String powerRoad;//路径
	private String powerPriority = "0";//优先级
	private int powerPid=0;//父级权限
	private Integer id;
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getPowerId() {
		return powerId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	public String getPowerName() {
		return powerName;
	}
	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}
	public String getPowerKey() {
		return powerKey;
	}
	public void setPowerKey(String powerKey) {
		this.powerKey = powerKey;
	}
	public String getPowerView() {
		return powerView;
	}
	public void setPowerView(String powerView) {
		this.powerView = powerView;
	}

	public String getPowerStatus() {
		return powerStatus;
	}
	public void setPowerStatus(String powerStatus) {
		this.powerStatus = powerStatus;
	}
	public String getPowerRoad() {
		return powerRoad;
	}
	public void setPowerRoad(String powerRoad) {
		this.powerRoad = powerRoad;
	}
	public String getPowerPriority() {
		return powerPriority;
	}
	public void setPowerPriority(String powerPriority) {
		this.powerPriority = powerPriority;
	}
	public int getPowerPid() {
		return powerPid;
	}
	public void setPowerPid(int powerPid) {
		this.powerPid = powerPid;
	}
	
}
