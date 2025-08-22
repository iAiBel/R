# 📊 Ambiente R + Exercícios de Matemática Computacional

Este repositório reúne:

- Instalação do ambiente R + RStudio
- Resolução de exercícios em R sobre matrizes e álgebra linear
- Lista teórica base utilizada nas práticas

## 📁 Estrutura dos Arquivos

| Arquivo                                                       | Descrição                                             |
|--------------------------------------------------------------|-------------------------------------------------------|
| **R-4.5.1-win.exe**                                           | Instalador da linguagem R                             |
| **RStudio-2025.05.1-513.exe**                                 | Instalador do RStudio                                 |
| **exercicios_matrizes.R**                                     | Script com resolução de exercícios com operações de matrizes |
| **LISTA DE EXERCICIOS MATEMATICA COMPUTACIONAL - MATRIZES - 2025 1 (1).pdf** | Lista teórica utilizada como base |
| **OneDrive_1_22-08-2025.zip**                                 | Arquivo compactado contendo materiais adicionais      |
| **Primeiro.R**                                                | Script em R para exemplo de exercícios adicionais     |
| **algebra_matricial.html**                                    | Documento HTML sobre álgebra matricial                |
| **algebra_matricial.qmd**                                     | Arquivo Quarto Markdown sobre álgebra matricial       |
| **DESAFIO DE VENDAS.html**                                     | Desafio de vendas em formato HTML                     |
| **DESAFIO DE VENDAS.qmd**                                      | Desafio de vendas em formato Quarto Markdown          |
| **mat comp.txt**                                              | Arquivo de texto com material de apoio para o curso   |
| **primeirohtml.html**                                         | Exemplo de HTML sobre o primeiro exercício            |
| **primeirohtml.qmd**                                          | Exemplo de Markdown (Quarto) sobre o primeiro exercício|

## 🧮 Sobre os Exercícios (Álgebra Linear)

O script **`exercicios_matrizes.R`** contém:

- ✅ Criação de matrizes com `matrix()`
- ✅ Verificação da inversibilidade de matrizes com `solve()`
- ✅ Tratamento de erro com `tryCatch()` (evita crash se não houver inversa)
- ✅ Multiplicação e estruturação de matrizes para diferentes casos

### Exemplo de código utilizado:

```r
Q5A <- matrix(c(1,0,3,2), nrow = 2)
inv_Q5A <- tryCatch(solve(Q5A), error = function (e) "Matriz Q5A não tem inversa")
print(inv_Q5A)
