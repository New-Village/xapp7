function read(fid){
  var dom_obj=document.getElementById(fid);
  var dom_obj_parent=dom_obj.parentNode;

  dom_obj_parent.removeChild(dom_obj);
  $("article").masonry("reload");
  controller_show(fid);
}

function controller_show(fid){
  $.ajax({
    url: "main",
    type: "PATCH",
    data: {format : fid},
    dataType: "html"
  })
}