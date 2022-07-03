def imprimir_lista(arquivo, lista = [])
    arquivo.each do |line|
        if line.match(/\s*\d{2}\/\d{7}/i)
            line.gsub!("                        ", "")
            splited_line = line.split("    ")
            lista << splited_line
        end
    end
    if block_given? 
        lista.sort_by! { |registro| yield(registro) }
    end
    lista.each {|linha| puts "#{linha[0]} #{linha[1]}"}
    
end

#leitura do arquivo e decodificando para conseguir ler acentos
file_data = File.read("engsoft.txt", encoding: "iso-8859-1").split("\n")

puts "Imprimindo Normal (ordem alfabética)"
imprimir_lista(file_data) 

puts "\nImprimindo pela matrícula"
imprimir_lista(file_data) { |registro| registro[0] }
