package in.ram.controller;

import java.time.LocalTime;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import in.ram.Application;
import in.ram.model.Student;
import in.ram.model.StudentEntry;
import in.ram.service.StudentEntryServiceImpl;
import in.ram.service.StudentServiceImpl;

@Controller
@RequestMapping("/library")
public class LibraryController {

	@Autowired
	private StudentServiceImpl service;

	@Autowired
	private StudentEntryServiceImpl serv;

	@GetMapping("/load")
	public String printMessage(Map<String, Object> model) {
		List<StudentEntry> stdList = (List<StudentEntry>) serv.getAll();

		model.put("stdList", stdList);

		return "home";
	}

	@GetMapping("/register")
	public String resisterPage() {
		return "reg";
	}

	@PostMapping("/save")
	public String addUser(@ModelAttribute Student std) {
		System.out.println(std);

		service.pushToDB(std);

		return "redirect:/library/load";
	}

	@GetMapping("/saveEntry")
	public String addEntry(Map<String, Object> model) {

		return "add";
	}

	@PostMapping("/add")
	public String getId(@RequestParam Integer id, Map<String, Object> model) {

		System.out.println(id);
		if (service.isPresent(id)) {
			Student std = service.getById(id);
			StudentEntry entry = new StudentEntry(null, std.getId(), std.getName(), std.getCourse(), LocalTime.now(),
					null);
			serv.pushToDB(entry);
			System.out.println(std);
			return "redirect:/library/load";
		}
		return "redirect:/libray/load";
	}

	@GetMapping("/exit")
	public String exitTime(@RequestParam Integer id) {

		StudentEntry std = serv.getById(id);
		std.setExitTime(LocalTime.now());

		serv.pushToDB(std);

		return "redirect:./load";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam Integer id) {

		serv.deleteEntry(id);

		return "redirect:./load";
	}

	@GetMapping("/update")
	public String update(@RequestParam Integer id) {

		StudentEntry std = serv.getById(id);
		std.setExitTime(LocalTime.now());

		serv.pushToDB(std);

		return "redirect:./load";
	}
}
