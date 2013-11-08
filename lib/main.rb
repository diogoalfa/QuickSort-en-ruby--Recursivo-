# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'benchmark'
# Funcion QuickSort Recursiva 
def quicksort(list)
  return list if list.length <= 1
  pivot = list.shift  # saca el primero elemento de la lista 
  left, right = list.partition { |el| el < pivot }   #Separa en dos arreglo (lo comparado) 
  quicksort(left) + [pivot] + quicksort(right)      #junta la lista left con el pivote mas la lista right
  
end
#Nota en esta implementacion tienen un problema, ya que si esta ordenado el arreglo creara una lista izquierda vacia eso es ineficiente
#esto es por esta implementacion (list.shift)


arrays=[]
arraysOrdenado=[]
r= Random.new

for i in(0..99)
  arrays[i]=r.rand(0...99)
end
puts 'Arreglo No Ordenado'

#imprime el Arrelo No Ordenado
#for i in(0..9)
 # puts arrays[i];
#end

puts '------------------------------'
puts 'Arreglo Ordenado'

Benchmark.bm do |x|

 x.report("tiempos arreglo desordenado : ") { arraysOrdenado=quicksort(arrays) }
 
end
puts ''
puts' Arreglo Ordenado'
Benchmark.bm do |x|

 x.report("tiempos arreglo ordenado") { arraysOrdenado=quicksort(arraysOrdenado) }
 
end



#imprime el Arreglo Ordenado
#for i in(0..9)
#  puts arraysOrdenado[i];
#end