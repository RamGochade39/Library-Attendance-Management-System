package in.ram.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ram.model.StudentEntry;
import in.ram.repository.IStudentEntryDao;

@Service
public class StudentEntryServiceImpl implements IStudentEntryService {

	@Autowired
	private IStudentEntryDao dao;

	@Override
	public Iterable<StudentEntry> getAll() {

		return (List) dao.findAll();
	}

	@Override
	public void pushToDB(StudentEntry std) {
		String name = std.getName().toUpperCase();
		std.setName(name);

		dao.save(std);
	}

	@Override
	public StudentEntry getById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public void deleteEntry(Integer id) {

		dao.deleteById(id);
	}

}
