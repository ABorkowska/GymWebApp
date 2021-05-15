package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {

	Member getMemberByLogin(String login);
}