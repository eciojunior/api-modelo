package br.com.model.persistence.repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.model.persistence.entity.Module;

@Repository
@Transactional
public interface ModuleRepository extends JpaRepository<Module, Integer> {
	List<Module> findByAvailable(Boolean available, Pageable pageable);
	Optional<Module> findByDescription(String name);
}