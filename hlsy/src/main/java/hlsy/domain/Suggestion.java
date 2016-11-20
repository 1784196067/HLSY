package hlsy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(schema = "hlsy", name = "suggestion")
public class Suggestion {
	@Id
	@GeneratedValue(generator = "sugId")
	@GenericGenerator(name = "sugId", strategy = "increment")
	private Integer sugId;

	@Column
	private String suggestion;
	
	@Column
	private String suggestionReply;

	public Suggestion() {
		super();
	}

	public Integer getSugId() {
		return sugId;
	}

	public void setSugId(Integer sugId) {
		this.sugId = sugId;
	}

	public String getSuggestion() {
		return suggestion;
	}

	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}

	public String getSuggestionReply() {
		return suggestionReply;
	}

	public void setSuggestionReply(String suggestionReply) {
		this.suggestionReply = suggestionReply;
	}


}
