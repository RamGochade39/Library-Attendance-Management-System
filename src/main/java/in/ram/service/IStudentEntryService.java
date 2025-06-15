package in.ram.service;

import in.ram.model.StudentEntry;

public interface IStudentEntryService {

	public Iterable<StudentEntry> getAll();

	public void pushToDB(StudentEntry std);

	public StudentEntry getById(Integer id);

	public void deleteEntry(Integer id);
}
