package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.company.model.Member;

import java.util.List;

public interface MemberRepository extends JpaRepository<Member, Integer> {
	
	Member getMemberByLogin(String login);
	
//	@Query("select m from Member m where m.login=?1")
//	List<Member> findByLogin(String login);
}