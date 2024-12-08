package com.klef.jfsd.springboot.gender.service;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.gender.model.QuizAnswers;

@Service
public class QuizService {

    public static void saveQuizAnswers(QuizAnswers quizAnswers) {
        // In a real-world scenario, you'd save this to a database
        // For now, let's just print them or store in session
        System.out.println("Saving quiz answers: " + quizAnswers);
    }
}
