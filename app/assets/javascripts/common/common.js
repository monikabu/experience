$(function() {
    $( "#accordion" )
      .accordion({
        header: "> div > h3",
        collapsible: true,
        active: false,
        icons: false
      })
      .sortable({
        axis: "y",
        handle: "h3",
        stop: function( event, ui ) {
          // IE doesn't register the blur when sorting
          // so trigger focusout handlers to remove .ui-state-focus
          ui.item.children( "h3" ).triggerHandler( "focusout" );

          // Refresh accordion to handle new order
          $( this ).accordion( "refresh" );
        }
      });
  });

$(function() {
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
  });

// $(function() {
//   $("#delete-piece").click(function() {
//     $.ajax({
//       type: "POST",
//       url: "/pieces/" + id,
//       dataType: "json",
//       data: {"_method":"delete"},
//       complete: function(){
//         alert("Deleted successfully");
//       }
//     })
//   })
// });
