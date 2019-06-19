package com.practice.organizations;

import com.practice.organizations.entities.Organization;
import org.springframework.data.repository.CrudRepository;

public interface OrgRepo extends CrudRepository<Organization, Integer> {
}
