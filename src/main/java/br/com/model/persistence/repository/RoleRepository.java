package br.com.model.persistence.repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.model.persistence.entity.Role;

@Repository
@Transactional
public interface RoleRepository extends JpaRepository<Role, Integer> {
	List<Role> findByAvailable(Boolean available, Pageable pageable);
	Optional<Role> findByDescription(String name);
	Optional<Role> findByKey(String key);
}