Picture1 = imread('white.png');
Picture2 = imread('black.png');

n = rgb2gray(Picture1);
u = rgb2gray(Picture2);

figure(1); imshow(n);
figure(2); imshow(u);

a = n;
[kolom, baris] = size(a);

for x = 1 : kolom
    for y = 1 : baris
        if(u(x,y) ~= 0)
            a(x,y) = u(x,y);
        end
    end
end

figure(3); imshow(a);

b = n;

for x = 1 : kolom
    for y = 1 : baris
        if b(x,y) ~= 0
            b(x,y) = u(x,y);
        end
    end
end

figure(4); imshow(b);

bw1 = n > 110;
bw2 = u > 110;

figure(5); imshow(bw1);
figure(6); imshow(bw2);

c = bw1;

for x = 1 : kolom
    for y = 1 : baris
        if c(x,y) == 0
            c(x,y) = 1;
        else
            c(x,y) = 0;
        end
    end
end

figure(7); imshow(c);

d = bw1;

for x = 1 : kolom
    for y = 1 : baris
        if bw2(x,y) ~= 0
            if d(x,y) == 0
                d(x,y) = 1;
            else
                g(x,y) = 0;
            end
        end
    end
end

figure(8); imshow(d);