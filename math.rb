#1 Дана длина ребра куба. Найти объем куба и площадь его боковой поверхности.
def coube(s)
	puts "Surface area #{s**2}"
	puts "Cube volume #{s**3}"
end

#2 Даны катеты прямоугольного треугольника. Найти его гипотенузу и площадь.
def triangle(cat1, cat2)
	hypotenuse = cat1**2 + cat2**2
	hypotenuse = Math.sqrt(hypotenuse)
	puts "Hypotenuse #{hypotenuse}"
	puts "Surface area pf triangle: #{cat1*cat2/2}"
end

#3 Даны действительные числа а, Ь, с. Удвоить эти числа, если а>Ь>с, и заменить их абсолютными значениями, если это не так.
def math1(a, b, c)
	if (a>b) && (b>c)
		a *= 2
		b *= 2
		c *= 2
	else
		a = a.abs
		b = b.abs
		c = c.abs
	end
	puts "#{a} #{b} #{c}"
end

#4 Даны три действительных числа. Выбрать из нихте, которые принадлежат интервалу (1, 3).
def math2(a,b,c)
	array = [a, b, c]
	new_array = []
	array.each do |el|
		if (el >=1) && (el <= 3)
			new_array.push(el)
		end
	end
	puts new_array
end

#5 Даны действительные положительные числа a, b, с, d. Выяснить, можно ли прямоугольник со сторонами а, Ь уместить внутри прямоугольника со сторонами с, d так,
#чтобы каждая из сторон одного прямоугольника была параллельна или перпендикулярна каждбй стороне второго прямоугольника.
def math3(a, b, c, d)
	if ((a<=b) && (b<=d)) || ((a<=d) && (b<=c))
		puts "It can"
	else
		puts "It can't"
	end
end

#6 Дано действительное число х. Получить целую часть числа х, затем—число х, округленное до ближайшего целого; затем—число х без дробных цифр.
def math4(x)
	puts x.floor
	puts x.round
	puts x.to_int
end

#7 Определить, является ли данное целое число четным.
def math5(x)
	if x%2==0
		puts "Even"
	else
		puts "Odd"
end

#8 Дано натуральное число n (n > 99). Определить число сотен в нем.
def math6(n)
	puts n/100
end

#9 Дано натуральное число n (n<9999) Является ли это число палиндромом
def math7(n)
	n = n.to_s
	flag = true
	for i in 0..n.length-1
		if n[i] != n[n.length-i-1] 
            puts "No palindrom"
            flag = false
            break
        end
    end
    if flag == true
        puts "Palindrom"
    end
end

#10 Вычислить (l + sin0.1)(l + sin0.2)...(l + sin 10).
def math8
	i = 0.1
	res = 1 + Math.sin(i)
	while i <= 10 do
		i += 0.1
		res *= (1 + Math.sin(i))
	end
	puts res
end

#11 104
def math9(a)
	if a <= 1
	    t = [a*2, 0.95].min
	elsif (a>1) && (a<=25)
		t = a.to_f/5
	else
		t = a.to_f/25
	end
	
	x = t
	until 5.to_f / 4 * a * (t - x).abs < 10**-6
  		x = t
  		t = a.to_f / 5 * x + 4 / 5 * x**4
	end	
end

#11 Дано целое число m>1. Получить наибольшее целое k, при котором 4^к < m.
def math10 (m)
	k = 1
	while 4**k < m
		k +=1
	end
	puts k-1
end

#12 142
def math11
	for x in 0..5
		puts x**5 - 9*x**4 + 1.7*x**2 - 9.6
	end
end	 

#13 Даны два действительных числа а и Ь. Получить их сумму, разность и произведение.
def math12(a, b)
	puts a+b
	puts a-b
	puts a*b
end

#14 2
def math13(x, y)
	res = (x.abs - y.abs).to_f / (1 + x*y.abs)
end

#15 Даны два действительных положительных числа. Найти среднее арифметическое и среднее геометрическое этих чисел.
def math14(a, b)
	puts (a+b)/2
	puts Math.sqrt(a*b)
end

#16 Даны два действительных числа. Найти среднее арифметическое этих чисел и среднее геометрическое их модулей.
def math15(a, b)
	puts (a+b)/2
	puts Math.sqrt(a.abs*b.abs)
end

#17 7
def math16(t1, v1, t2, v2)
	puts v1+v2
	puts (t1+t2)/2
end

#18 Три сопротивления R1 R2, R3 соединены параллельно. Найти сопротивление соединения.
def math17(r1, r2, r3)
	res = 1 / ((1/r1) + (1/r2)+ (1/r3))
end

#20 Определить время падения камня на поверхность земли с высоты h.
def math17(h)
	t = Math.sqrt(2*h.to_f/9.81)
end

#21 Дана сторона равностороннего треугольника. Найти площадь этого треугольника.
def math18(a)
	t = Math.sqrt(3) / 4 * a
end

#22 Вычислить период колебания маятника длины l.
def math18(l)
	g = 9.81
	t = 2*Math::PI * Math.sqrt(l.to_f/g)
end

#23 Определить силу притяжения F между телами  массы т1 и т2, находящимися на расстоянии г друг от друга.
def math18(t1, t2, r)
	g = 9.81
	f = g * t1 * t2 / (r ** 2)
end

#24 Даны гипотенуза и катет прямоугольного треугольника. Найти второй катет и радиус вписанной окружности.
def math18(a, b)
	cat2 = Math.sqrt(b**2 - a**2)
	r = (a+c-b).to_f/2
end

#25 Известна длина окружности. Найти площадь круга, ограниченного этой, окружностью.
def math18(p)
	s = p**2.to_f / 4 / Math::PI
end

#26 Найти площадь кольца, внутренний радиус которого равен 20, а внешний—заданному числу г (г>20).
def math19(r)
	s =  Math::PI * (r**2 - 20**2)
end

#27 Треугольник задан величинами своих углов и радиусом описанной окружности. Найти стороны треугольника.
def math20(a, b, c, r)
	a:=2*r*sin(a1*Math::PI/180)
	b:=2*r*sin(b1*Math::PI/180)
	c:=2*r*sin(c1*Math::PI/180)
end

#28 Найти площадь равнобочной трапеции с основаниями а и Ь и углом u при большем основании а.
def math21(a, b, u)
	until(u>0)&&(u<90)
	u=u*Math::PI/180
	h=(a-b)*Math.sin(u)/(2*Math.cos(u))
	s=(a+b)*h/2
end

#29 Вычислить расстояние между двумя точками с координатами x1 y1 и х2, у2.
def math22(x1, y1, x2, y2)
	l =  Math.sqrt((x2-x1)**2+(y2-y1)**2)
end

#30 Найти площадь сектора, радиус которого равен 13.7, а дуга содержит заданное число радиан ф.
def math23(fi)
	radius = 13.7
	s = radius ** 2 * dug / 2
end

#31 Даны действительные положительные числа а, 6, с. По трем сторонам с длинами а, Ь, с можно построить треугольник. Найти углы треугольника.
def math24(a, b, c)
	alpha := Math.acos((b**2 + c**2 - a**2)/(2 * b * c)) * 180 / Math::PI
  	beta := Math.acos(( a**2 +  c**2 -  b**2)/(2 * a * c)) * 180 / Math::PI
end

#32 Даны действительные числа х, у. Не пользуясь никакими операциями, кроме умножения, сложения и вычитания, вычислить
def math25(x, y)
	3*x*x*y*y - 2*x*y*y -7*x*x*y - 4*y*y + 15*x*y +2*x*x -3*x +10*y +6
end

#33 38
def math26(x, y)
	if x > y
		z = x - y
	else 
		z = y - x + 1
	end
end

#34 Даны два действительных числа. Заменить первое число нулем, если оно меньше или равно второму, и оставить числа без изменения в противном случае.
def math27(x, y)
	if x < y
		x = 0
	end
end

#35 Даны действительные числа х, у (х!=у). Меньшее из этих двух чисел заменить их полусуммой, а большее —их удвоенным произведением.
def math28(x, y)
	if x < y
		x = (x+y).to_f / 2
		y = 2*x*y
	else 
		y = (x+y).to_f / 2
		x = 2*x*y
	end
end

#36 Даны три действительные числа. Возвести в квадрат те из них, значения которых неотрицательны.
def math29(a,b,c)
	if a > 0
	 a = a**2
	end
	if b > 0 
		b = b**2
	end
	if c > 0
	 	c = c**2
	end
end


#37 Определить, верно ли, что при делении неотрицательного целого числа а на положительное целое число Ь 
# получается остаток, равный одному из двух заданных чисел г или s.
def math30(a,b,r,s)
	res = a%b
	if (res == r) || (res == s)
		return true
	else 
		return false
	end
end

#38 Дано натуральное число п (п ^99). Выяснить, верно ли, что п2 равно кубу суммы цифр числа п.
def math31(n)
	res = a%b
end

#39 Даны целые числа. Если числа не равны, то заменить каждое из них одним и тем же числом, равным
# большему из исходных, а если равны, то заменить числа нулями.
def math32 (a,b)
	if a == b
		a=0
		b=0
	else
		a = [a, b].max
		b = a
	end
end

#40 Дано натуральное число п (м^ 100), определяющее возраст человека (в годах). Дать для этого числа 
# наименования «год», «года» или «лет»: например, 1 год, 23 года, 45 лет и т. д.
def math33 (a)
	last = a%10
	if last == 1
		puts "#{a} год"
	elsif (2..4).include? last
		puts "#{a} года"
	else
		puts "#{a} лет"
	end	 
end

#41  Даны натуральное число x символы s1 ..., sn. Подсчитать, сколько раз среди данных символов встречается буква х.
def math34(n)
	str = (0..n).map { ('a'..'z').to_a[rand(26)] }.join
	counter = 0
	for i in (0..n)
		if str[i] == 'x'
			counter += 1
		end
	end
end

#42 Даны натуральное число я, символы slf ..., sn. Выяснить, имеются ли в последовательности slf ..., sn такие члены последовательности si9 si+l, что s;—это 
# запятая, a si+1—тире.
def math35(n)
	o = [('a'..'z'), ('A'..'Z'), (','.. '-')].map(&:to_a).flatten
	string = (0..n).map { o[rand(o.length)] }.join
	counter = 0
	for i in (0..n)
		if (string[i] == ',') && (string[i+1] == '-')
			counter += 1
		end
		if counter > 0
			return true
		else 
			return false
	end
end

#43 Даны натуральные числа тип. Получить.
def math36(m, n)
	((1..m).inject(1, :*) + (1..n).inject(1, :*)) / (1..(m+n)).inject(1, :*)
end

#44 46
def math37(m, n)
	if (m<0)&&(n<0)
		m = m.abs
		n = n.abs
	elsif (m<0)||(n<0)
		m +=0.5
		n +=0.5
	elsif ([0.5, 2.0].include? m) && ([0.5, 2.0].include? n)
		m /= 10
		n /= 10
	else 
		m *= 10
		n *= 10
	end
end

#45 Дано натуральное число n. Получить наименьшее число вида 2^r, превосходящее n.
def math38(n)
	r = 0
	while 2**r < n
		r *= 1
	end
end

#46 Даны натуральное число n целые числа а1 ..., ап. Найти количество и сумму тех членов данной 
# последовательности, которые делятся на 5 и не делятся на 7.
def math39(n)
	count = 0
	sum = 0
	for i in (1..n) 
		if (i%5 == 0) && (i%7 != 0)
			count += 1
			sum += count
		end
	end
end


#47 Даны натуральное число n, целые числа а1 ..., ап. Получить произведение членов 
# последовательности аи ...,аПУ кратных р.
def math40(n)
	count = 0
	sum = 0
	for i in (1..n) 
		if (i%5 == 0) && (i%7 != 0)
			count += 1
			sum += count
		end
	end
end

#48 Дано натуральное число п. Выбросить из записи числа п цифры 0 и 5, оставив прежним порядок осталь-ных цифр.
def math41(n)
	n = n.to_s
	n = n.gsub('0', '').gsub('5', '')
end

#49 Дано натуральное число п. Получить все такие натуральные qy что п делится на q2 и не делится на q3.
def math42(n)
	res = []
	for q in (1..1000)
		if (n%q**2 == 0) && (n%q**3!=0)
			res.push(q)
		end
	end		 
end

#50 Даны натуральные числа т, п. Получить все их натуральные общие кратные, меньшие тп.
def math43(m, n)
	res = []
	for q in (1..m*n)
		if (n%q == 0) && (m%q == 0)
			res.push(q)
		end
	end		 
end