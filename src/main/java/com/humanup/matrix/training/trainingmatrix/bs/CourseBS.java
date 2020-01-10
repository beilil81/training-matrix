package com.humanup.matrix.training.trainingmatrix.bs;

import com.humanup.matrix.training.trainingmatrix.vo.CourseVO;

import java.util.List;

public interface CourseBS {
    boolean createCourse(CourseVO course);
    List<CourseVO> getListCourse();
    CourseVO getCourseById(long courseId);
    CourseVO getCourseByTitle(String courseTitle);
    List<CourseVO> getListCourseByTypeTitle(String typeTitle);
    List<CourseVO> getListCourseByTrainerEmail(String trainerEmail);
    List<CourseVO> getListCourseByInternEmail(String internEmail);
    boolean addCourseTypeToCourse(String courseTypeTitle, String courseTitle);
    boolean addTrainerToCourse(String trainerEmail, String courseTitle);
}