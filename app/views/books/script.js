// document.addEventListener("DOMContentLoaded", function() {
//   let links = document.querySelectorAll(".cards a");

//   links.forEach( link=> {

//     link.addEventListener("click", function(event) {
      
//       // 全てのclickedクラスを消す
//       links.forEach(item => {
//         item.closest("tr").classList.remove("clicked");
//       });
      
//       this.closest("tr").classList.add("clicked");
//     });
//   });
// });
/* global $*/
// $(document).ready(function(event){
  $(".cards a").click(function(){
    let links = document.querySelectorAll(".cards a");
    // 全てのclickedクラスを消す
    links.forEach(item => {
      item.closest("tr").classList.remove("clicked");
    });
    this.closest("tr").classList.add("clicked");
  })
// })