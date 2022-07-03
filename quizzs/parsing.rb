#variavel para verificar se na linha do arquivo exite uma matricula ou não
rgx_matricula = /\s*\d{2}\/\d{7}/i

#leitura do arquivo e decodificando para conseguir ler acentos
file_data = File.read("engsoft.txt", encoding: "iso-8859-1").split("\n")

file_data.each do |line|
    if line.match(rgx_matricula)
        puts line.gsub("                        ", "")
    end
end



