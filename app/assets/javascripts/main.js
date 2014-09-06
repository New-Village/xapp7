function read(fid){
  var dom_obj=document.getElementById(fid);
  var dom_obj_parent=dom_obj.parentNode;

  dom_obj_parent.removeChild(dom_obj);
  $("article").masonry("reload");
};