class Test
    def batata
      arr = ["tchau", "batata", "oi"] 
      arr.sort_by! {|x| yield x}
      p arr
    end
  end

  
  t = Test.new

  #ordena alfabética
  t.batata {|x| x}

  #ordena tamanho string
  t.batata {|x| x.size}
