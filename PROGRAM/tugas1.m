%membaca file dalam disk
a = imread('E:\ITN 2021\SEMESTER 3\PCD\Bahan PCD 2022\3x4.png');
figure, imshow(a), title('Gambar Asli');
clc
%mengubah dari truecolor ke grayscale dan menampilkan
b = rgb2gray(a);
figure, imshow(b), title('Gambar Gray');
clc
%mengubah dari grayscale ke monokrom dan menampilkan hasil
c = im2bw(b);
figure, imshow(c), title('Gambar Monokrom');
clc
%menyimpan hasil proses citra
imwrite(b, 'E:\ITN 2021\SEMESTER 3\PCD\HASIL PROSES CITRA\arip_grayscale.png');
imwrite(c, 'E:\ITN 2021\SEMESTER 3\PCD\HASIL PROSES CITRA\arip_monokrom.png');