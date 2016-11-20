package hlsy.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(schema = "hlsy", name = "category")
public class Category {
	@Id
	@GeneratedValue(generator = "cateId")
	@GenericGenerator(name = "cateId", strategy = "increment")
	private Integer cateId;

	@Column
	private String name;

	@OneToMany(targetEntity = Activity.class, mappedBy = "category")
	private Set<Activity> activitys = new HashSet<>();

	public Category() {
		super();
	}

	public Set<Activity> getActivitys() {
		return activitys;
	}

	public void setActivitys(Set<Activity> activitys) {
		this.activitys = activitys;
	}

	public Integer getCateId() {
		return cateId;
	}

	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
