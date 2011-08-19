/*
 * This file injects methods into the BrowserHost object that accept 
 * JavaScript Objects as parameters and calls the related method that
 * accepts JSON strings.
 *
 * This file depends on the BrowserHost and JSON objects having already
 * been injected.
 */
 
window.BrowserHost = function() {
	wrappedHost = {};
	
	function NO_ARG_TYPE(){};
	function ONE_OBJECT_ARG_TYPE(){};
	function ONE_STRING_ARG_TYPE(){};
	
	var proxiedMethods = {"checkTODO": new ONE_OBJECT_ARG_TYPE(), 
	                      "openBook": new ONE_OBJECT_ARG_TYPE(), 
	                      "bookStatus": new ONE_OBJECT_ARG_TYPE(), 
	                      "reportMetrics": new ONE_OBJECT_ARG_TYPE(),
	                      "openInExternalBrowser": new ONE_STRING_ARG_TYPE(),
	                      "pageReady": new NO_ARG_TYPE(),
	                      "closeStore": new NO_ARG_TYPE()};
	
	function generatePrivateBrowserHostProxy(methodName, argType) {
		return function() {
			if (arguments.length === 0)
				if (!(argType instanceof NO_ARG_TYPE))
					throw "Call to method that expects arguments with no arguments";
				else
					PrivateBrowserHost[methodName]();
			else if (arguments.length === 1)
				if (typeof(arguments[0]) === "object")
					if (!(argType instanceof ONE_OBJECT_ARG_TYPE))
						throw "Object as argument to method that isn't expecting it";
					else
						PrivateBrowserHost[methodName](JSON.stringify(arguments[0]));
				else if (typeof(arguments[0]) === "string")
					if (!(argType instanceof ONE_STRING_ARG_TYPE))
						throw "String as argument to method that isn't expecting it";
					else
						PrivateBrowserHost[methodName](arguments[0]);
				else
					throw "Unsupported type for proxied method call";
			else
				throw "Unsupported number of arguments to proxied method call";
		}
	}

	for (var i in proxiedMethods) {
		wrappedHost[i] = generatePrivateBrowserHostProxy(i,proxiedMethods[i]);
	}
	
	wrappedHost.nativeStatusReply = function(asin, type, status, percentDownloaded) {
		wrappedHost.bookStatusReply({id : {asin:asin, type:type}, status: status, percentDownloaded: percentDownloaded});
	}
	
	return wrappedHost;
}();

