.class Lcom/google/ads/AdViewCommunicator;
.super Ljava/lang/Object;
.source "AdViewCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdViewCommunicator$JsMessageAction;
    }
.end annotation


# static fields
.field private static final AFMA_MESSAGE_HOST:Ljava/lang/String; = "afma.google.com"

.field private static final JS_PROTOCOL_PREFIX:Ljava/lang/String; = "javascript: "

.field public static final JS_SEND_FUNCTION:Ljava/lang/String; = "adsense.mobileads.afmanotify.receiveMessage"

.field private static final RESPONSE_SCHEME:Ljava/lang/String; = "gmsg"


# instance fields
.field private mAdResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/google/ads/GoogleAdView;


# direct methods
.method public constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdViewCommunicator;->mAdResponses:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/google/ads/AdViewCommunicator;->mView:Lcom/google/ads/GoogleAdView;

    .line 66
    return-void
.end method

.method private static generateParamMap(Landroid/net/Uri;)Ljava/util/Map;
    .locals 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x3d

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 138
    if-nez p0, :cond_0

    move-object v7, v9

    .line 165
    :goto_0
    return-object v7

    .line 142
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, query:Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v7, v4

    .line 146
    goto :goto_0

    .line 149
    :cond_1
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_4

    .line 151
    aget-object v7, v0, v1

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 152
    .local v3, keyEnd:I
    if-ne v3, v10, :cond_2

    move-object v7, v9

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    aget-object v7, v0, v1

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v10, :cond_3

    move-object v7, v9

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    aget-object v7, v0, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, key:Ljava/lang/String;
    aget-object v7, v0, v1

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyEnd:I
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_0
.end method

.method public static isMessage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 113
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 123
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "afma.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static sendJavaScriptMessage(Landroid/webkit/WebView;Lcom/google/ads/AdViewCommunicator$JsMessageAction;Ljava/util/List;)V
    .locals 4
    .parameter "view"
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Lcom/google/ads/AdViewCommunicator$JsMessageAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, paramList:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 173
    :cond_1
    invoke-static {p2}, Lcom/google/ads/AdUtil;->generateJSONParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, jsonParams:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adsense.mobileads.afmanotify.receiveMessage(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->getMessageString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method public registerAdResponse(Ljava/lang/String;Lcom/google/ads/AdResponse;)Lcom/google/ads/AdResponse;
    .locals 1
    .parameter "command"
    .parameter "response"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/AdViewCommunicator;->mAdResponses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/AdResponse;

    return-object p0
.end method

.method public testAndForwardMessage(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-static {p1}, Lcom/google/ads/AdViewCommunicator;->isMessage(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid syntax in forwarded message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/ads/AdViewCommunicator;->mAdResponses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/AdResponse;

    .line 92
    .local v2, response:Lcom/google/ads/AdResponse;
    if-nez v2, :cond_1

    move v3, v4

    .line 102
    :goto_0
    return v3

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/google/ads/AdViewCommunicator;->generateParamMap(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 97
    .local v1, paramList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    move v3, v4

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/google/ads/AdViewCommunicator;->mView:Lcom/google/ads/GoogleAdView;

    invoke-interface {v2, v1, v3}, Lcom/google/ads/AdResponse;->run(Ljava/util/Map;Lcom/google/ads/GoogleAdView;)V

    .line 102
    const/4 v3, 0x1

    goto :goto_0
.end method
