#require "benchmark"


def quicksort(list, p, r)
    if p < r then
        q = partition(list, p, r)
        quicksort(list, p, q-1)
        quicksort(list, q+1, r)
    end
end
 
def partition(list, p, r)
    pivot = list[r]
    i = p - 1
    p.upto(r-1) do |j|
        if list[j] <= pivot
            i = i+1
            list[i], list[j] = list[j],list[i]
        end       
    end
    list[i+1],list[r] = list[r],list[i+1]
    return i + 1
end
 
 arrays=[]
arraysOrdenado=[]
r= Random.new

for i in(0..9999)
  arrays[i]=r.rand(0...9999)
end
#imprime el Arrelo No Ordenado
for i in(0..9)
  print arrays[i] ;
  print " "
end
print "\n"
# Testing it out
#a = [9,4,10,12,3,5,10,3,2,25,6,21,33,23,19,13,38,26,12,3]
#quicksort(a, 0, a.length-1)
#print a

quicksort(arrays, 0, arrays.length-1)
print arrays
