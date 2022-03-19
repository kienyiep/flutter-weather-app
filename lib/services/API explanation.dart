// API is a set of command, function, protocol, and object that programmers can use to create software
// or interact with the internal system. For example, flutter. If we take a look on the flutter documentation,
// we can see it is a flutter API reference documentation.
// So by using the flutter SDK, or the libraries which are bundled together under the flutter flag, we are actually using an API
// which has created a set of command, function, protocol, and object that programmers can use to create software

// It provide developer with a set of standard command for performing the common operations so that the they do not have to write code from scratch.

// The other type of API is external API.
// Which allow you to interact with external system. For example, the tinder app.
// In Tinder app, there are two sections which are shared friend and shared interest.
// These data come when Tinder request the data to the Facebook, asking it to get the information on the particular user, saying
// 'This person James, who are their friends?' and then once they get the response back from the Facebook,
// it can check against its user out and sees out of all of his friends, which of the friends are also on Tinder.

// When we interacting with the external system, its a bit like being the citizen in the small town.
// There are certain building and certain structure that you interact with in this way.
// For example, if you go to Dunkin' Donuts, and you could make a request for some donuts, pass over some money.
// and in return, you get back your donuts as a response.

// However, there is also another type of API, where you cannot just go in and demand something.
// For example, the bank, where the user cannot just walk in and say I want $100.
// So the way that it works is not only you have to make request, you also have to pass the key, which is the key to unlock the account.
// and if that checks out, then the bank actually open the safe for you.

// When we interacting with the external API, we actually trying to get a little bit of data from them,
// and with certain API, they will ensure we actually don't heat up with their server so much
// that you are actually costing them a lot of resource.
// If you imagine an external server just like a computer, which are running on somebody else electric city.
// You can imagine if you make lot and lot of request to that computer, then you are costing the owner quite a lot of money.

// when API start demanding a key, that key is quite similar to the bank teller., where the bank teller will ask "can I help you",
// then you reply that you want to withdraw a $100, and then it will ask you for the password, and then the password will be the API key.
// if the API key matched, then the $100 can be withdraw.
// So in this case, the interaction between you and the safe is the API, and it also enforce certain rules that you have to abide by
// such as what you can request, what you can do and asking you for a password and confirming it, and that's is actually thr API.

// With API, you can also put the data inside the database.
// For example, in the bank situation, you might want to deposit $100, and again the API is going to take your data, verify it,validate it,
// make sure it goes to the right place, and then put it into their database directly.

// you cannot interact with other web server database directly. For example, I cannot tell the open weather map,
// that I have made some weather data, take it and tell the world about the current temperature of the London is 35 degree.

// Essentially, when your app is interacting with other peoples' program, server, and code.
// The API will be the interface in the middle that dictates how you should interact, and the rule of the engagement.
// There are certain things you can request for, and if it is valid request, then they can give you a valid response.
// If the request is not valid, then it will send you an error code 404 status code, which mean did not find the resource
// that you were looking for. Hence, there are only certain request that they can handle
// and there is only certain request that they will respond.

// From the original definition of the API, when we try to get some data from the external system.
// We have to do that through a series of command and function that have been predefined for us to use.
// and it is only through these authorized way of interacting with their system,
// can we get the data that we needed.
// and the way that we can learn about this function or method that they have created is by using the documentation of the API.
