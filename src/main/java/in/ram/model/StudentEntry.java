package in.ram.model;

import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentEntry {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sid;

	private Integer id;
	private String name;
	private String course;
	private LocalTime entryTime;
	private LocalTime exitTime;

}
