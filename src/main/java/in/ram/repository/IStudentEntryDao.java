package in.ram.repository;

import org.springframework.data.repository.CrudRepository;

import in.ram.model.Student;
import in.ram.model.StudentEntry;

public interface IStudentEntryDao extends CrudRepository<StudentEntry, Integer> {

	

}
