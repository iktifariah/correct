<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

<form id="form" action="timein_action.php" method="post" >
<input type="text" id="serial_num" name="serial_num"  placeholder="Serial Number"/>
</form>
  
  <script>
    
    $('#serial_num').on('input', function(){
      $('#form').submit();
      });
    
  </script>
