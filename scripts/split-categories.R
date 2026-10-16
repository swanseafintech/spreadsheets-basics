# Split the Unicode cheat sheet into one CSV per category
#
# Run from the top of the repo:  Rscript scripts/split-categories.R
# Reads:  data/Book1.csv  (columns: category, symbol, hex_code)
# Writes: output/<category>.csv  (columns: symbol, hex_code)

# Read the full cheat sheet (UTF-8 so the symbols survive)
data <- read.csv("data/Book1.csv", fileEncoding = "UTF-8")

# For each category: keep its rows, drop the category column, save it

superscript <- data[data$category == "superscript", ]
superscript$category <- NULL
write.csv(superscript, "output/superscript.csv", row.names = FALSE, fileEncoding = "UTF-8")

subscript <- data[data$category == "subscript", ]
subscript$category <- NULL
write.csv(subscript, "output/subscript.csv", row.names = FALSE, fileEncoding = "UTF-8")

logic <- data[data$category == "logic", ]
logic$category <- NULL
write.csv(logic, "output/logic.csv", row.names = FALSE, fileEncoding = "UTF-8")

sets <- data[data$category == "sets", ]
sets$category <- NULL
write.csv(sets, "output/sets.csv", row.names = FALSE, fileEncoding = "UTF-8")

number_sets <- data[data$category == "number_sets", ]
number_sets$category <- NULL
write.csv(number_sets, "output/number_sets.csv", row.names = FALSE, fileEncoding = "UTF-8")

relations <- data[data$category == "relations", ]
relations$category <- NULL
write.csv(relations, "output/relations.csv", row.names = FALSE, fileEncoding = "UTF-8")

operators <- data[data$category == "operators", ]
operators$category <- NULL
write.csv(operators, "output/operators.csv", row.names = FALSE, fileEncoding = "UTF-8")

arrows <- data[data$category == "arrows", ]
arrows$category <- NULL
write.csv(arrows, "output/arrows.csv", row.names = FALSE, fileEncoding = "UTF-8")

greek <- data[data$category == "greek", ]
greek$category <- NULL
write.csv(greek, "output/greek.csv", row.names = FALSE, fileEncoding = "UTF-8")

misc <- data[data$category == "misc", ]
misc$category <- NULL
write.csv(misc, "output/misc.csv", row.names = FALSE, fileEncoding = "UTF-8")
