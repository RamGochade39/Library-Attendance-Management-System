package in.ram.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ram.model.Student;
import in.ram.repository.IStudentDao;

@Service
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private IStudentDao dao;

	@Override
	public Iterable<Student> getAll() {

		return dao.findAll();
	}

	@Override
	public String pushToDB(Student std) {

		dao.save(std);
		return "Student saved with id : " + std.getId();
	}

	@Override
	public Student getById(Integer id) {

		return dao.findById(id).get();
	}

	@Override
	public Boolean isPresent(Integer id) {
		
		return dao.existsById(id);
	}

	
}
