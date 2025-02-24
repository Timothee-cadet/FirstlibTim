#'@title Répartition des élus par code professionnel
#'
#'@description
#'Cette fonction génère un diagramme en barres représentant la distribution des élus municipaux en fonction de leur code professionnel.
#'
#'@param df Un DataFrame contenant les informations des élus municipaux. Il doit inclure une colonne `Code.de.la.catégorie.socio.professionnelle`.
#'@return Un graphique en barres affichant le nombre d'élus par code professionnel.
#'@export
summary.commune <- function(x) {
  elu_plus_age <- trouver_l_elu_le_plus_age(x)

  cat("Nom de la commune :", unique(x$Libellé.de.la.commune), "\n")
  cat("Nombre d'élu.e.s :",  compter_nombre_d_elu(x), "\n")

  cat("Distribution des âges des élu.e.s :", "\n")
  print(calcul_distribution_age(x))

  cat("L'élu.e le ou la plus âgé.e :", "\n")
  cat("Nom :", elu_plus_age$Nom.de.l.élu, "\n")
  cat("Prénom :", elu_plus_age$Prénom.de.l.élu, "\n")
  cat("Âge :", elu_plus_age$Âge, "\n")
}


