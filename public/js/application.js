$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

var ref = new Firebase("https://sfsealionschat.firebaseio.com/");
var messagesRef = ref.child('messages');
var usersRef = ref.child('users');
var currentUser = null;

$('#twitter-login').on("click", function () {
    twitterAuthenticate();

    var twitterAuthenticate = function() {
  usersRef.authWithOAuthPopup('twitter', function (error, user) {
    if (error) {
      console.log(error);
    } else if (user) {
      usersRef.child(user.uid).set({username: user.twitter.username, pic: user.twitter.cachedUserProfile.profile_image_url_https});
    }
  });
};
