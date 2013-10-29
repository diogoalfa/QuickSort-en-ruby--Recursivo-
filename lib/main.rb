# To change this template, choose Tools | Templates
# and open the template in the editor.

# Funcion QuickSort Recursiva 
def quicksort(list)
  return list if list.length <= 1
  pivot = list.shift
  left, right = list.partition { |el| el < pivot }
  quicksort(left) + [pivot] + quicksort(right)
end


arrays=[]
arraysOrdenado=[]
r= Random.new

for i in(0..9)
  arrays[i]=r.rand(0...99)
end
puts 'Arreglo No Ordenado'

#imprime el Arrelo No Ordenado
for i in(0..9)
  puts arrays[i];
end

puts '------------------------------'
puts 'Arreglo Ordenado'

arraysOrdenado=quicksort(arrays)

#imprime el Arreglo Ordenado
for i in(0..9)
  puts arraysOrdenado[i];
end