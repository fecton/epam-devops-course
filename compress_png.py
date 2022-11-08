import os
import subprocess
from PIL import Image


# Full code: https://www.thepythoncode.com/article/compress-images-in-python
def get_size_format(b, factor=1024, suffix="B"):
    """
    Scale bytes to its proper byte format
    e.g:
        1253656 => '1.20MB'
        1253656678 => '1.17GB'
    """
    for unit in ["", "K", "M", "G", "T", "P", "E", "Z"]:
        if b < factor:
            return f"{b:.2f}{unit}{suffix}"
        b /= factor
    return f"{b:.2f}Y{suffix}"

# Usage: compress_img(name, 1, 45)
def compress_img(image_name, new_size_ratio=0.9, quality=90, width=None, height=None, to_jpg=True):
    # load the image to memory
    img = Image.open(image_name)
    # print the original image shape
    print("[*] Image shape:", img.size)
    # get the original image size in bytes
    image_size = os.path.getsize(image_name)
    # print the size before compression/resizing
    print("[*] Size before compression:", get_size_format(image_size))
    if new_size_ratio < 1.0:
        # if resizing ratio is below 1.0, then multiply width & height with this ratio to reduce image size
        img = img.resize((int(img.size[0] * new_size_ratio), int(img.size[1] * new_size_ratio)), Image.ANTIALIAS)
        # print new image shape
        print("[+] New Image shape:", img.size)
    elif width and height:
        # if width and height are set, resize with them instead
        img = img.resize((width, height), Image.ANTIALIAS)
        # print new image shape
        print("[+] New Image shape:", img.size)
    # split the filename and extension
    filename, ext = os.path.splitext(image_name)
    # make new filename appending _compressed to the original file name
    if to_jpg:
        # change the extension to JPEG
        new_filename = f"{filename}_compressed.jpg"
    else:
        # retain the same extension of the original image
        new_filename = f"{filename}_compressed{ext}"
    try:
        # save the image with the corresponding quality and optimize set to True
        img.save(new_filename, quality=quality, optimize=True)
    except OSError:
        # convert the image to RGB mode first
        img = img.convert("RGB")
        # save the image with the corresponding quality and optimize set to True
        img.save(new_filename, quality=quality, optimize=True)
    print("[+] New file saved:", new_filename)
    # get the new image size in bytes
    new_image_size = os.path.getsize(new_filename)
    # print the new size in a good format
    print("[+] Size after compression:", get_size_format(new_image_size))
    # calculate the saving bytes
    saving_diff = new_image_size - image_size
    # print the saving percentage
    print(f"[+] Image size change: {saving_diff/image_size*100:.2f}% of the original image size.")

def clean(arr) -> list:
    new_arr = []
    skip = ['self-studing', 'appservice_tf_quickstart']
    for i in range(len(arr)):
        t = arr[i]
        if not (t == '' or '.' in t or t in skip ) and not t.endswith('.png'):
            new_arr.append(arr[i])
    return new_arr

def png_only(arr):
    new_arr = []
    print(arr)
    for i in range(len(arr)):
        if arr[i].endswith('.png'):
            new_arr.append(arr[i])
    return new_arr

def jpg_only(arr):
    new_arr = []
    for i in range(len(arr)):
        if arr[i].endswith('.jpg'):
            new_arr.append(arr[i])
    return new_arr

def jpg_to_png():
    folders = os.listdir('.')    
    root = clean(folders)
    folders = root.copy()

    i = 0
    while True:
        if len(folders) == i:
            break
        tmp = os.listdir(folders[i])
        tmp = clean(tmp)
        tmp = list(map(lambda x: folders[i] + '/' + x, tmp))
        folders += tmp
        i += 1

    for i in root:
        folders.remove(i)
    print(folders)
    
    png = []
    for i in folders:
        png += list(map(lambda x: i + '/' + x, jpg_only(os.listdir(i))))

    print(png)

    for file in png:
        os.rename(file, file.replace('.jpg', '.png'))
    
    return png

def define_png() -> list:
    folders = os.listdir('.')    
    root = clean(folders)
    print(folders)
    folders = root.copy()

    i = 0
    while True:
        if len(folders) == i:
            break
        tmp = os.listdir(folders[i])
        tmp = clean(tmp)
        tmp = list(map(lambda x: folders[i] + '/' + x, tmp))
        folders += tmp
        i += 1

    for i in root:
        folders.remove(i)
    print(folders)
    
    png = []
    for i in folders:
        png += png_only(os.listdir(i))
    
    return png

for i in define_png():
    compress_img(i, 1, 45)
