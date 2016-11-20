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
@Table(schema = "hlsy", name = "club")
public class Club {
	@Id
	@GeneratedValue(generator = "clubId")
	@GenericGenerator(name = "clubId", strategy = "increment")
	private Integer clubId;

	@Column
	private String cName;

	@Column
	private Date createTime;

	@ManyToOne(targetEntity = Teacher.class)
	@JoinColumn(name = "teaId", referencedColumnName = "teaId", nullable = false)
	private Teacher teacher;

	@OneToMany(targetEntity = Apply.class, mappedBy = "club")
	private Set<Apply> applys = new HashSet<>();

	@Column
	private String email;

	@Column
	private String password;

	public Club() {
		super();
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getClubId() {
		return clubId;
	}

	public void setClubId(Integer clubId) {
		this.clubId = clubId;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Set<Apply> getApplys() {
		return applys;
	}

	public void setApplys(Set<Apply> applys) {
		this.applys = applys;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
