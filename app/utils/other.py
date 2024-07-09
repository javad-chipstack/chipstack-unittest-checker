import subprocess


# Function to install a package using pip
def install_package(package_name):
    try:
        result = subprocess.check_call(["pip", "install", package_name])
        print(
            f"[INFO {get_current_time()}] Successfully installed {package_name}",
            flush=True,
        )
    except subprocess.CalledProcessError:
        print(
            f"[ERROR {get_current_time()}] Failed to install {package_name}", flush=True
        )


def get_syntax_checking_html():
    html_rpt = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Content Changer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 50px;
        }
        .sidebar {
            flex: 1;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .sidebar button {
            display: block;
            margin-bottom: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .content {
            flex: 3;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .hidden {
            display: none;
        }
        .content-box {
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #555;
        }
        p {
            color: #666;
            line-height: 1.6;
        }
        blockquote {
            background-color: #f0f0f0;
            padding: 10px 20px;
            border-left: 4px solid #007bff;
            margin: 20px 0;
        }
        ul {
            margin-left: 20px;
            list-style-type: square;
        }
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
"""
    for item in ["top", "dependencies"]:
        html_rpt += f"""<button onclick="showContent('{item}')">{item}</button>\n"""

    html_rpt += f"""
            </div>
            <div class="content">
"""

    for item in ["top", "dependencies"]:
        html_rpt += f"""<div id="{item}" class="hidden"></div>\n"""

    html_rpt += f"""
        </div>
    </div>
<script src="content.js"></script>
</body>
</html>
"""
    return html_rpt
