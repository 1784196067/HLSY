package hlsy.service.impl;

import hlsy.dao.SuggestionDao;
import hlsy.service.SuggestionService;

public class SuggestionServiceImpl implements SuggestionService {
	private SuggestionDao suggestionDao;
	
	public void setSuggestionDao(SuggestionDao suggestionDao) {
		this.suggestionDao = suggestionDao;
	}

}
