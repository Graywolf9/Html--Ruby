#!/usr/bin/ruby

class Input
    def initialize(id="", tipo="TEXT", valor="", clase="")
        @id = id
        @valor = valor
        @clase = clase
        
        puts "<INPUT id='#{id}' type='#{tipo}' value='#{valor}' class='#{clase}' />"
    end
    
    def setValor(valor)
        @valor = valor
        puts "<script>"
        puts "document.getElementById('#{@id}').value = '#{@valor}';"
        puts "</script>"
    end
end

def button(id, valor, clase="", onClick="alert(0)")
	puts "<BUTTON id='#{id}' class='#{clase}' onClick='#{onClick}' >#{valor}</BUTTON>"
end

def echo()
    puts "<br/>"
end

puts "Content-Type: text/html"
puts

puts "Hola mundo desde Ruby " + RUBY_VERSION

echo()
button("boton", "Presionar")

echo()
nombre = Input.new("nombre", "text", "Hola mundo")
nombre.setValor("Adios mundo")