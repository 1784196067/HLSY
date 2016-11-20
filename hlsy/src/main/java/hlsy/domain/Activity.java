package hlsy.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(schema = "hlsy", name = "activity")
public class Activity {
	@Id
	@GeneratedValue(generator = "actId")
	@GenericGenerator(name = "actId", strategy = "increment")
	private Integer actId;

	@Column
	private String actName;

	@Column
	private String resource;
	
	@Column
	private String resourceSrc;

	@Column
	private String descript;

	@Column
	private Date startTime;

	@Column
	private Date endTime;
	
	@Column
	private int fund;

	@OneToMany(targetEntity = Suggestion.class)
	@JoinColumn(name="actId", referencedColumnName = "actId")
	private Set<Suggestion> suggestions = new HashSet<>();

	@ManyToOne(targetEntity = Category.class)
	@JoinColumn(name = "cateId", referencedColumnName = "cateId", nullable = false)
	private Category category;

	@OneToMany(targetEntity = Apply.class, mappedBy = "activity")
	private Set<Apply> applys = new HashSet<>();

	public Activity() {
		super();
	}

	public Integer getActId() {
		return actId;
	}

	public void setActId(Integer actId) {
		this.actId = actId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<Apply> getApplys() {
		return applys;
	}

	public void setApplys(Set<Apply> applys) {
		this.applys = applys;
	}

	public Set<Suggestion> getSuggestions() {
		return suggestions;
	}

	public void setSuggestions(Set<Suggestion> suggestions) {
		this.suggestions = suggestions;
	}

	public Integer getactId() {
		return actId;
	}

	public void setactId(Integer actId) {
		this.actId = actId;
	}

	public String getActName() {
		return actName;
	}

	public void setActName(String actName) {
		this.actName = actName;
	}

	public String getResource() {
		return resource;
	}

	public void setResource(String resource) {
		this.resource = resource;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getResourceSrc() {
		return resourceSrc;
	}

	public void setResourceSrc(String resourceSrc) {
		this.resourceSrc = resourceSrc;
	}

	public int getFund() {
		return fund;
	}

	public void setFund(int fund) {
		this.fund = fund;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
}
