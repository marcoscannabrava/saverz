import "bootstrap";
import 'easy-autocomplete';

var options = {
  data: $("#query").data("researchers")
};

$("#query").easyAutocomplete(options);
