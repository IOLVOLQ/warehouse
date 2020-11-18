package bean;

import java.util.Date;

public class Goods {
  private Integer id;
  private String tname;
  private String typename;
  private Integer count;
  private Double price;
  private Date time;
  private String person;
  private String supplier;
  
  
  public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", tname=" + tname + ", typename=" + typename + ", count=" + count + ", price="
				+ price + ", time=" + time + ", person=" + person + ", supplier=" + supplier + "]";
	}
  
}
