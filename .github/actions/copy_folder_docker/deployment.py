
import os
import shutil

def run():
    source_folder = os.environ['INPUT_SOURCE_FOLDER']
    dest_folder = os.environ['INPUT_DEST_FOLDER']

    os.makedirs(dest_folder, exist_ok=True)

    for file in os.listdir(source_folder):
        source = os.path.join(source_folder, file)

        if os.path.isfile(source):
            shutil.copy(source, dest_folder)
            print(f"Copied: {file}")

    with open(os.environ["GITHUB_OUTPUT"], 'w') as fout:
        fout.write(f"op-msg='file copied successfully from {source_folder} to {dest_folder}'")

    print("File copy completed!")

if __name__ == '__main__':
    run()
