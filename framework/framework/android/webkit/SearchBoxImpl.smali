.class final Landroid/webkit/SearchBoxImpl;
.super Ljava/lang/Object;
.source "SearchBoxImpl.java"

# interfaces
.implements Landroid/webkit/SearchBox;


# static fields
.field private static final DISPATCH_EVENT_SCRIPT:Ljava/lang/String; = "if (window.chrome && window.chrome.searchBox &&  window.chrome.searchBox.on%1$s) { window.chrome.searchBox.on%1$s(); }"

.field static final JS_BRIDGE:Ljava/lang/String; = "(function(){if (!window.chrome) {  window.chrome = {};}if (!window.chrome.searchBox) {  var sb = window.chrome.searchBox = {};  sb.setSuggestions = function(suggestions) {    if (window.searchBoxJavaBridge_) {      window.searchBoxJavaBridge_.setSuggestions(JSON.stringify(suggestions));    }  };  sb.setValue = function(valueArray) { sb.value = valueArray[0]; };  sb.value = \'\';  sb.x = 0;  sb.y = 0;  sb.width = 0;  sb.height = 0;  sb.selectionStart = 0;  sb.selectionEnd = 0;  sb.verbatim = false;}})();"

.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "searchBoxJavaBridge_"

.field private static final SET_DIMENSIONS_SCRIPT:Ljava/lang/String; = "if (window.chrome && window.chrome.searchBox) {   var f = window.chrome.searchBox;  f.x = %d;  f.y = %d;  f.width = %d;  f.height = %d;}"

.field private static final SET_QUERY_SCRIPT:Ljava/lang/String; = "if (window.chrome && window.chrome.searchBox) {  window.chrome.searchBox.setValue(%s);}"

.field private static final SET_SELECTION_SCRIPT:Ljava/lang/String; = "if (window.chrome && window.chrome.searchBox) {  var f = window.chrome.searchBox;  f.selectionStart = %d  f.selectionEnd = %d}"

.field private static final SET_VERBATIM_SCRIPT:Ljava/lang/String; = "if (window.chrome && window.chrome.searchBox) {  window.chrome.searchBox.verbatim = %s;}"

.field private static final TAG:Ljava/lang/String; = "WebKit.SearchBoxImpl"


# instance fields
.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/webkit/SearchBox$SearchBoxListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;)V
    .registers 4
    .parameter "webViewCore"
    .parameter "callbackProxy"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    .line 101
    iput-object p1, p0, Landroid/webkit/SearchBoxImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 102
    iput-object p2, p0, Landroid/webkit/SearchBoxImpl;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 103
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;)V
    .registers 6
    .parameter "eventName"

    .prologue
    .line 154
    const-string v1, "if (window.chrome && window.chrome.searchBox &&  window.chrome.searchBox.on%1$s) { window.chrome.searchBox.on%1$s(); }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, js:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchJs(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private dispatchJs(Ljava/lang/String;)V
    .registers 4
    .parameter "js"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/webkit/SearchBoxImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method private jsonSerialize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "query"

    .prologue
    .line 179
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 181
    .local v1, stringer:Lorg/json/JSONStringer;
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_10} :catch_15

    .line 186
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    return-object v2

    .line 182
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 183
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "WebKit.SearchBoxImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error serializing query : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    goto :goto_14
.end method


# virtual methods
.method public addSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method handleSuggestions(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 222
    :try_start_3
    iget-object v1, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_1c

    .line 223
    iget-object v1, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/SearchBox$SearchBoxListener;

    invoke-interface {v1, p1, p2}, Landroid/webkit/SearchBox$SearchBoxListener;->onSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 225
    :cond_1c
    monitor-exit v2

    .line 226
    return-void

    .line 225
    .end local v0           #i:I
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public oncancel()V
    .registers 2

    .prologue
    .line 150
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchEvent(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onchange()V
    .registers 2

    .prologue
    .line 135
    const-string v0, "change"

    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchEvent(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onresize()V
    .registers 2

    .prologue
    .line 145
    const-string/jumbo v0, "resize"

    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchEvent(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onsubmit()V
    .registers 2

    .prologue
    .line 140
    const-string/jumbo v0, "submit"

    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchEvent(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Landroid/webkit/SearchBoxImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setDimensions(IIII)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 129
    const-string v1, "if (window.chrome && window.chrome.searchBox) {   var f = window.chrome.searchBox;  f.x = %d;  f.y = %d;  f.width = %d;  f.height = %d;}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, js:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchJs(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 7
    .parameter "query"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/webkit/SearchBoxImpl;->jsonSerialize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, formattedQuery:Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 109
    const-string v2, "if (window.chrome && window.chrome.searchBox) {  window.chrome.searchBox.setValue(%s);}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, js:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/webkit/SearchBoxImpl;->dispatchJs(Ljava/lang/String;)V

    .line 112
    .end local v1           #js:Ljava/lang/String;
    :cond_15
    return-void
.end method

.method public setSelection(II)V
    .registers 8
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 123
    const-string v1, "if (window.chrome && window.chrome.searchBox) {  var f = window.chrome.searchBox;  f.selectionStart = %d  f.selectionEnd = %d}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, js:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchJs(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setSuggestions(Ljava/lang/String;)V
    .registers 13
    .parameter "jsonArguments"

    .prologue
    .line 191
    if-nez p1, :cond_3

    .line 218
    :goto_2
    return-void

    .line 195
    :cond_3
    const/4 v2, 0x0

    .line 196
    .local v2, query:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v6, suggestionsJson:Lorg/json/JSONObject;
    const-string/jumbo v8, "query"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    const-string/jumbo v8, "suggestions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 202
    .local v5, suggestionsArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5b

    .line 203
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 204
    .local v3, suggestion:Lorg/json/JSONObject;
    const-string/jumbo v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_33

    .line 206
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_33} :catch_36

    .line 202
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 212
    .end local v0           #i:I
    .end local v3           #suggestion:Lorg/json/JSONObject;
    .end local v5           #suggestionsArray:Lorg/json/JSONArray;
    .end local v6           #suggestionsJson:Lorg/json/JSONObject;
    .end local v7           #value:Ljava/lang/String;
    :catch_36
    move-exception v8

    move-object v1, v8

    .line 213
    .local v1, je:Lorg/json/JSONException;
    const-string v8, "WebKit.SearchBoxImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing json ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 217
    .end local v1           #je:Lorg/json/JSONException;
    .restart local v0       #i:I
    .restart local v5       #suggestionsArray:Lorg/json/JSONArray;
    .restart local v6       #suggestionsJson:Lorg/json/JSONObject;
    :cond_5b
    iget-object v8, p0, Landroid/webkit/SearchBoxImpl;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8, v2, v4}, Landroid/webkit/CallbackProxy;->onSearchboxSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public setVerbatim(Z)V
    .registers 7
    .parameter "verbatim"

    .prologue
    .line 116
    const-string v1, "if (window.chrome && window.chrome.searchBox) {  window.chrome.searchBox.verbatim = %s;}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, js:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/SearchBoxImpl;->dispatchJs(Ljava/lang/String;)V

    .line 118
    return-void
.end method
