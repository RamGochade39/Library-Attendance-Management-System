package in.ram.service;

import java.util.List;

import in.ram.model.Student;

public interface IStudentService {

	public Iterable<Student> getAll();

	public String pushToDB(Student std);

	public Student getById(Integer id);

	public Boolean isPresent(Integer id);

}
