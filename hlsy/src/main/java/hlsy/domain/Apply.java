package hlsy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(schema = "hlsy", name = "apply")
public class Apply {
	@Id
	@GeneratedValue(generator = "appId")
	@GenericGenerator(name = "appId", strategy = "increment")
	private Integer appId;

	@ManyToOne(targetEntity = Club.class)
	@JoinColumn(name = "clubId", referencedColumnName = "clubId", nullable = false)
	private Club club;

	@ManyToOne(targetEntity = Activity.class)
	@JoinColumn(name = "actId", referencedColumnName = "actId", nullable = false)
	private Activity activity;

	public Apply() {
		super();
	}

	public Club getClub() {
		return club;
	}

	public void setClub(Club club) {
		this.club = club;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	@Column
	private String power;

	public Integer getAppId() {
		return appId;
	}

	public void setAppId(Integer appId) {
		this.appId = appId;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

}
