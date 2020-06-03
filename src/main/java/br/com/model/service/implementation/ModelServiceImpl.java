package br.com.model.service.implementation;

import org.springframework.stereotype.Service;

import br.com.model.service.ModelService;
import br.com.model.util.Translator;

@Service
public class ModelServiceImpl implements ModelService {
	
	@Override
	public String hello () {
		return Translator.toLocale("model.hello");
	}

}
