package com.projectk.requester.implementations;

import com.projectk.requester.implementations.services.ServiceResult;
import com.projectk.requester.implementations.services.interfaces.HomePageService;
import com.projectk.requester.interfaces.HomePageRequester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomePage implements HomePageRequester {
    private HomePageService homePageService;

    @Autowired
    public HomePage(HomePageService homePageService) {
        this.homePageService = homePageService;
    }

    @Override
    public Object displayHomePage() {
        ServiceResult homePage = homePageService.getHomePage();
        return new ModelAndView(homePage.getViewName(), homePage.getModelMap());
    }
}
