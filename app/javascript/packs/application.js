import "bootstrap";
import 'easy-autocomplete';

var options = {
  data: $("#query").data("filter")
};

$("#query").easyAutocomplete(options);
