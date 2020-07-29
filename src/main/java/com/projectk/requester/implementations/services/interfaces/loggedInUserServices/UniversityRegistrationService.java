package com.projectk.requester.implementations.services.interfaces.loggedInUserServices;

import com.projectk.entities.ServiceResult;
import com.projectk.entities.University;
import com.projectk.entities.User;
import com.projectk.entities.searchEntities.SearchUniversity;

public interface UniversityRegistrationService {
	ServiceResult addUniversity(University university);

	ServiceResult updateUniversity(University university);

	ServiceResult filterUniversities(SearchUniversity searchUniversity);
}
