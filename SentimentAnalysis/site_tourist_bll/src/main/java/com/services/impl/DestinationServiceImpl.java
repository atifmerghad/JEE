package com.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bo.Destination;
import com.dao.DestinationDao;
import com.services.DestinationService;

@Service
@Transactional
@RestController
public class DestinationServiceImpl implements DestinationService {

	@Autowired
	private DestinationDao destinationDao;

	@Override
	public void addDestination(Destination pDestination) {

		destinationDao.create(pDestination);

	}
	@RequestMapping(value="/destinations",method=RequestMethod.GET)
	public List<Destination> getAllDestinations() {
		return destinationDao.getAll();
	}

	public void updateDestination(Destination destination) {

		destinationDao.update(destination);
	}

	public Destination getDestinationById(Long id) {
		return destinationDao.findById(id);
	}

}
