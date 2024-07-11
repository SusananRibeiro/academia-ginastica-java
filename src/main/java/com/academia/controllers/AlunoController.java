package com.academia.controllers;

import com.academia.entities.Aluno;
import com.academia.entities.AvaliacaoFisica;
import com.academia.entities.form.AlunoForm;
import com.academia.services.impl.AlunoServiceImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/alunos")
public class AlunoController {

  @Autowired
  private AlunoServiceImpl alunoService;

  @PostMapping
  public Aluno create(@Valid @RequestBody AlunoForm form) {
    return alunoService.create(form);
  }

  @GetMapping("/avaliacoes/{id}")
  public List<AvaliacaoFisica> getAllAvaliacaoFisicaId(@PathVariable Long id) {
    return alunoService.getAllAvaliacaoFisicaId(id);
  }

  @GetMapping
  public List<Aluno> getAll(@RequestParam(value = "dataDeNascimento", required = false)
                                  String dataDeNacimento){
    return alunoService.getAll(dataDeNacimento);
  }


}
