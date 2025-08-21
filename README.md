# 📊 Ambiente R + Exercícios de Matemática Computacional

Este repositório reúne:

- Instalação do ambiente R + RStudio
- Resolução de exercícios em R sobre **matrizes e álgebra linear**
- Lista teórica base utilizada nas práticas

---

## 📁 Estrutura dos Arquivos

| Arquivo | Descrição |
|--------|-----------|
| `R-4.5.1-win.exe` | Instalador da linguagem R |
| `RStudio-2025.05.1-513.exe` | Instalador do RStudio |
| `exercicios_matrizes.R` | Script com resolução de exercícios com operações de matrizes |
| `LISTA DE EXERCICIOS MATEMATICA C...pdf` | Lista teórica utilizada como base |

---

## 🧮 Sobre os Exercícios (álgebra linear)

O script `exercicios_matrizes.R` contém:

- ✅ Criação de matrizes com `matrix()`
- ✅ Verificação da inversibilidade de matrizes com `solve()`
- ✅ Tratamento de erro com `tryCatch` (evita crash se não houver inversa)
- ✅ Multiplicação e estruturação de matrizes para diferentes casos

Exemplo de código utilizado:

```r
Q5A <- matrix(c(1,0,3,2), nrow = 2)
inv_Q5A <- tryCatch(solve(Q5A), error = function (e) "Matriz Q5A não tem inversa")
print(inv_Q5A)
