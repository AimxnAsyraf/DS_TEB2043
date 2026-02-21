string1 <- readline(prompt = "Enter string 1: ")
string2 <- readline(prompt = "Enter string 2: ")

if (tolower(string1) == tolower(string2)) {
  print("TRUE")
} else {
  print("FALSE")
}