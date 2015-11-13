var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    episodes = sort_by_chapter(episodes);
    printEpisode(episodes);
}
fs.readFile("./GoT.json", 'utf8', fileActions);

function printEpisode(episodes){
  
  episodes.forEach(function(episode){
    var rating_string = "";  
    for (var i = 0; i < Math.floor(episode.rating) ; i++) {
      rating_string += "*"; 
    };

    console.log("title: " + episode.title + " #: " + episode.episode_number);
    console.log(episode.description);
    console.log("Rating: " + episode.rating + " " + rating_string + "\n")

  });
}

function sort_by_chapter(episodes) {

  return episodes.sort(function(a,b){
    return a.episode_number - b.episode_number;
  });

}