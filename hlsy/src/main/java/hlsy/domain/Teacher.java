package hlsy.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(schema = "hlsy", name = "teacher")
public class Teacher {
	@Id
	@GeneratedValue(generator = "teaId")
	@GenericGenerator(name = "teaId", strategy = "increment")
	private Integer teaId;

	@Column
	private String teaName;

	@Column
	private String email;

	@Column
	private String tel;

	@Column
	private String location;

	@Column
	private String password;

	@OneToMany(targetEntity = Club.class, mappedBy = "teacher")
	private Set<Club> clubs = new HashSet<>();

	@OneToMany(targetEntity = Suggestion.class)
	@JoinColumn(name = "teaId", referencedColumnName = "teaId")
	private Set<Suggestion> suggestions = new HashSet<>();

	public Teacher() {
		super();
	}

	public Integer getTeaId() {
		return teaId;
	}

	public void setTeaId(Integer teaId) {
		this.teaId = teaId;
	}

	public Set<Club> getClubs() {
		return clubs;
	}

	public void setClubs(Set<Club> clubs) {
		this.clubs = clubs;
	}

	public Set<Suggestion> getSuggestions() {
		return suggestions;
	}

	public void setSuggestions(Set<Suggestion> suggestions) {
		this.suggestions = suggestions;
	}

	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
