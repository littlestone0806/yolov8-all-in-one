import os

# 设置文件夹路径
folder_path = 'VOCdevkit/txt'

# 获取文件夹中所有txt文件的路径
txt_files = [os.path.join(folder_path, f) for f in os.listdir(folder_path) if f.endswith('.txt')]

# 循环处理每个txt文件
for file_path in txt_files:
    # 读取文件内容
    with open(file_path, 'r') as f:
        lines = f.readlines()

    # 移除空行和只有空白字符的行
    lines = [line for line in lines if line.strip()]

    # 写回到文件中
    with open(file_path, 'w') as f:
        f.writelines(lines)

    print(f"已处理文件：{file_path}")

print("处理完成！")