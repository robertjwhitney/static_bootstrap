//Define something to be shared
var shareItem = {
  method: 'feed',
  message: '',
  name: 'Title',
  caption: 'Subtitle',
  description: (
      'Some body copy'
  ),
  link: 'Link to item being shared',
  picture: 'Full link to icon starting with http',
  actions: [
    { name: 'Title', link: 'Link to item being shared' }
  ],
  user_message_prompt: ''
};

//Add an event to share it

$("#Something").click(function(){
  FB.ui(shareItem);
});