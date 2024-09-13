# klontong-backend-ignat-deswanto

A. Persiapan
	 1. Cek semua file yang dibutuhkan didalam folder summary
	 2. Lakukan import file json kedalam postman yaitu BRIK.postman_collection
	 3. Jika dibutuhkan, import file *.sql untuk membuat tabel di database postgres (misal checkout.sql dan lainnya)
	 4. File .env di include didalam repository atau source code
	 
B. API product
	 1. Semua API product dapat dilihat menggunakan postman di bagian Product
	 2. API Product diantaranya search product, list product, delete product, update product, get product dan membuat product baru

C. API checkout
	 1. Semua API checkout dapat dilihat menggunakan postman di bagian Checkout
	 2. API Checkout diantaranya search checkout, delete checkout, update checkout dan membuat checkout baru

D. API payment
	 1. Semua API payment dapat dilihat menggunakan postman di bagian Midtrans Payment
	 2. API Payment tersebut adalah create transaction

E. Postgres function
	 1. Audit logs untuk proses delete dan update table dilakukan di sisi database postgres menggunakan trigger
	 2. Buat function agar trigger bisa digunakan. Function yang digunakan yaitu deleterow() dan updaterow()
	 3. Untuk contoh trigger function bisa dilihat didalam file deleterow dan updaterow

F. Unit test
	 1. Unit test tersedia didalam source code atau repository didalam folder test
	 2. Unit test juga tersedia di dalam postman bisa dilihat setelah melakukan hit api dibagian "Test Results"