<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="content">
        <label for="">Prodi</label>
        <select name="prodi" id="prodi"  >
            <option value="">Program Studi</option>
            <option value="IF">Teknik Informatika</option>
            <option value="EL">Teknik Elektro</option>
            <option value="TM">Teknik Mesin</option>
            <option value="FA">Farmasi</option>
            <option value="KI">Teknik Kimia</option>
            <option value="TG">Teknik Geologi</option>
          </select>

        <div id="tampil_data">
            <table border=1>
                <tr>
                    <th> No  </th>
                    <th> NIM </th>
                    <th> Nama </th>
                    <th> Program Studi </th>
                </tr>
            </table>
        </div>
                
    </div>
<div class="data"></div>
    <div class="tampil_data"></div>

    <script 
        src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous">
    </script>
    

    <script>

        $(document).ready(function(){
            $('#prodi').change(function(){
                var kode_prodi = $( "#prodi" ).val();
                $.ajax
                    ({ 
                        url: 'data.php',
                        data: { kode : kode_prodi},
                        type: 'POST',
                        success: function(data)
                        {
                            $("#tampil_data").replaceWith("<div id='tampil_data'>"+data+ "</div>");
                        }
                    });
            });
    });
    </script>

    <script>

 
    </script>
</body>
</html>
