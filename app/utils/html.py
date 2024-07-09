def get_html_header():
    result = """
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ChipStack regression report</title>
<style>
    /* Styling for the list */
    .list {
        list-style-type: none;
        padding-left: 0;
    }
    /* Styling for list items */
    .list-item-pointer {
        cursor: pointer;
        padding: 5px 10px;
        background-color: #f7f7f7;
        border-bottom: 1px solid #ccc;
    }        
    .list-item-no-pointer {
        cursor: default;
        padding: 5px 10px;
        background-color: #f7f7f7;
        border-bottom: 1px solid #ccc;
    }
    /* Styling for nested lists */
    .nested {
        display: none;
        padding-left: 20px;
    }
    /* Styling for active (expanded) nested lists */
    .active {
        display: block;
    }
    .custom-table, .custom-table th, .custom-table td {
        border: 1px solid white;
        border-collapse: collapse;
    }
    .custom-table th, .custom-table td {
        background-color: #f4f9f9;
    }
    td:last-child {
        width: 100%;
        white-space: nowrap;
    }
    table {
        border: 1px solid black;
        border-collapse: collapse;
        table-layout: fixed; /* This line is added */
    }
    .green {
        color: green;  /* Set text color to green */
    }
    .red {
        color: red;  /* Set text color to green */
    }
    .bold {
        font-weight: bold;  /* Set font weight to bold */
    }
    hr {
        border: 1px solid rgba(128, 128, 128, 0.5);
        margin: 0.5px 0;
        padding: 0;
    }
</style>
</head>
<body>
"""
    return result
