{-}
1. Buatlah variable dan deklarasi untuk data-data berikut:
a. Tahun lahir anda
b. Nilai tukar ADA dalam USDT
c. Huruf pertama nama depan anda
d. Nama keluarga/nama belakang anda
e. isProgrammer, knowsProgramming, wantToLearnProgramming (Bool)
f. sebuah tuple berisi:  tanggal lahir dalam angka, bulan lahir dalam string
g. sebuah list berisi kata-kata dari quote favorit anda (setiap elemen dari list adalah sebuah kata)
h. sebuah list yang berisi semua angka dari 23 sampai 2022, melompat 3 (misal: [23, 26, 29, dst.]-}

tahunLahir::Int
tahunLahir = 1993

nilaiTukar::Double
nilaiTukar=0.989

hurufPertama :: Char
hurufPertama = head "Baskoro"

namaKeluarga :: [Char]
namaKeluarga = "Nugroho"

isProgrammer::Bool
isProgrammer = True
knowsProgramming::Bool
knowsProgramming = True
wantToLearnProgramming::Bool
wantToLearnProgramming = True

tupleTglLahir::(Int, String)
tupleTglLahir=(1993, "Januari")

listQuote::[String]
listQuote = ["Just", "Do", "It"]

listAngka::[Int]
listAngka = [23, 26..2022]

-- 2. Buatlah fungsi untuk menambahkan dua koordinat, misal: input (2, 3) dan (4, 5) menghasilkan (6, 8)
a::Int
a=1
b::Int
b=2
c::Int
c=3
d::Int
d=4
tambahKoordinat::(Int, Int) -> (Int, Int)-> (Int, Int)
tambahKoordinat (a, b) (c, d) = (a+c, b+d) 

--3. Buatlah fungsi untuk mencari nilai tertinggi dari input 2 angka 
nilaiTertinggi:: Int -> Int -> Int
nilaiTertinggi a b
    | a > b = a 
    | otherwise = b
--perbaikan
nilaiTertinggi1:: Int -> Int -> Int
nilaiTertinggi1 a b = if a > b then a else b

--4. Buatlah fungsi untuk mencari nilai kebenaran (Bool) dari lebihBesar untuk dua input x dan y, dimana x > y
kebenaran :: Int -> Int -> Bool
kebenaran x y
    | x > y = True
    | otherwise = x < y
--perbaikan
kebenaran1 :: Int -> Int -> Bool
kebenaran1 x y = if x > y then True else False

--5. Buatlah fungsi untuk menerima input umur (angka bulat) dan menghasilkan output klasifikasi seperti berikut:
--Klasifikasi kelompok umur manusia dalam penelitian ini dibagi menjadi empat kelompok yaitu kanak-kanak (5-11 tahun), remaja (12-25 tahun), dewasa (26-45 tahun), dan lansia (46-65 tahun).”
inputUmur :: Int -> String
inputUmur x =
    if x >= 5 && x <= 11 then "kanak-kanak"
    else if x >= 12 && x <= 25 then "remaja"
    else if x >= 26 && x <= 45 then "dewasa"
    else if x >= 46 && x <= 65 then "lansia"
    else ""
    
{-
(15 menit)
6. Buatlah implementasi mandiri dari built-in length di Prelude
a. untuk sebuah list berisi Int-}
lengthList :: [Int] -> Int
lengthList [] = 0
lengthList (x:xs) = lengthList xs + 1
-- more simple
lengthList1 :: [Int] -> Int
lengthList1 st = sum [ 1 | _ <- st]

--b. untuk sebuah string
lengthStrList :: [Char] -> Int
lengthStrList [] = 0
lengthStrList (x:xs) = lengthStrList xs + 1


--(15 menit)
--7. Buatlah implementasi mandiri dari built-in take di Prelude
takeIt :: Int -> [Int] -> [Int]
takeIt 0 [] = []
takeIt a (b:xs) =
    if a <= lengthList (b:xs) then head (b:xs) : takeIt (a-1) xs 
    else takeIt (a-1) (b:xs)
--(15 menit)
--8. Buatlah implementasi mandiri dari built-in drop di Prelude
dropIt :: Int -> [Int] -> [Int]
dropIt 0 (b:xs) = (b:xs)
dropIt a (b:xs) =
    if a >= lengthList1 (b:xs) then []
    else dropIt (a-1) xs

--andy@emurgo.io