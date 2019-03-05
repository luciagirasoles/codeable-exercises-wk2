def calculadora(n)
  begin
    eval(n)
  rescue SyntaxError
    "Error: Parenthesis is not closed"
  rescue ZeroDivisionError
    "Error: Zero division is not allowed"
  #else
    # Otras excepciones
  end
end
n =gets.chomp
puts calculadora(n)
