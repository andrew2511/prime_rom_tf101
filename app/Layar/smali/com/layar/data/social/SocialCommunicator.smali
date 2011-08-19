.class public Lcom/layar/data/social/SocialCommunicator;
.super Ljava/lang/Object;
.source "SocialCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;,
        Lcom/layar/data/social/SocialCommunicator$ShareSocialData;,
        Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;,
        Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;,
        Lcom/layar/data/social/SocialCommunicator$SocialUpdateStatusHandler;
    }
.end annotation


# static fields
.field private static final FRIENDS_LIST_URL:Ljava/lang/String; = "/api/facebook/friends"

.field private static final INVITE_FRIENDS_URL:Ljava/lang/String; = "/stream/api/events/"

.field private static final SERVICE_PATTERN:Ljava/lang/String; = "<service>"

.field public static final SHARE_ACTION:Ljava/lang/String; = "action"

.field public static final SHARE_LAYER:Ljava/lang/String; = "layer"

.field private static final SHARE_LAYER_SERVICE:Ljava/lang/String; = "/api/social/share/"

.field public static final SHARE_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final SOCIAL_ASSOCIETE_URL:Ljava/lang/String; = "/social/<service>/connect"

.field private static final SOCIAL_CALLBACK_AUTHORITY_TEMPLATE:Ljava/lang/String; = "<service>_callback"

.field private static final SOCIAL_DISASSOCIATE:Ljava/lang/String; = "/social/<service>/disconnect"

.field private static final SOCIAL_LOGIN_URL:Ljava/lang/String; = "/social/<service>/login"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/layar/data/social/SocialCommunicator;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/social/SocialCommunicator;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallbackAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "service"

    .prologue
    .line 79
    const-string v0, "<service>_callback"

    const-string v1, "<service>"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "service"

    .prologue
    .line 72
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 73
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "/social/<service>/connect"

    const-string v2, "<service>"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://dev.layar.com"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFriendsList(Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;)V
    .locals 6
    .parameter "handler"

    .prologue
    .line 329
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    new-instance v4, Lcom/layar/data/user/FriendsListResponse;

    .line 331
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/user/FriendsListResponse;-><init>(I)V

    .line 330
    invoke-interface {p0, v4}, Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;->handleResponse(Lcom/layar/data/user/FriendsListResponse;)V

    .line 380
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 336
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "/api/facebook/friends"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 337
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v3

    .line 339
    .local v3, uriHelper:Lcom/layar/util/UriHelper;
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;Z)V

    .line 341
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "dev.layar.com"

    invoke-direct {v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance v5, Lcom/layar/data/social/SocialCommunicator$3;

    invoke-direct {v5, p0}, Lcom/layar/data/social/SocialCommunicator$3;-><init>(Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;)V

    .line 342
    invoke-static {v4, v2, v5}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #uriHelper:Lcom/layar/util/UriHelper;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 376
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/layar/data/social/SocialCommunicator;->TAG:Ljava/lang/String;

    const-string v5, "There was a problem when getting friends list"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    new-instance v4, Lcom/layar/data/user/FriendsListResponse;

    .line 378
    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/layar/data/user/FriendsListResponse;-><init>(I)V

    .line 377
    invoke-interface {p0, v4}, Lcom/layar/data/social/SocialCommunicator$FriendsListHandler;->handleResponse(Lcom/layar/data/user/FriendsListResponse;)V

    goto :goto_0
.end method

.method public static getLoginURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "service"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/layar/data/social/SocialCommunicator;->getLoginURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "service"
    .parameter "force"

    .prologue
    .line 91
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 92
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "/social/<service>/login"

    const-string v2, "<service>"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 94
    const-string v1, "force"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://dev.layar.com"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static inviteFriends(Ljava/lang/String;)V
    .locals 3
    .parameter "jsonIds"

    .prologue
    .line 384
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "/stream/api/events/"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "dev.layar.com"

    invoke-direct {v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, httpHost:Lorg/apache/http/HttpHost;
    return-void

    .line 387
    .end local v0           #httpHost:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isCallback(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"
    .parameter "service"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/layar/data/social/SocialCommunicator;->getCallbackAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shareLayerOnServices(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$ShareSocialData;)Lcom/layar/data/social/ShareLayerResponse;
    .locals 13
    .parameter "shareType"
    .parameter "services"
    .parameter "data"

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v9

    if-nez v9, :cond_0

    .line 224
    new-instance v9, Lcom/layar/data/social/ShareLayerResponse;

    const/16 v10, -0xa

    invoke-direct {v9, v10}, Lcom/layar/data/social/ShareLayerResponse;-><init>(I)V

    .line 317
    :goto_0
    return-object v9

    .line 226
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 227
    .local v0, builder:Landroid/net/Uri$Builder;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/api/social/share/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v10, v10, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 229
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, uri:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v4}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 232
    .local v4, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->filePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/io/File;

    iget-object v10, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 233
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v9, Ljava/io/File;

    iget-object v10, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "image/jpeg"

    invoke-direct {v3, v9, v10}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v3, imageFileBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v9, "screenshot"

    invoke-virtual {v4, v9, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 237
    .end local v3           #imageFileBody:Lorg/apache/http/entity/mime/content/ContentBody;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 240
    const-string v9, "services"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v10, p1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 243
    :cond_2
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 250
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "share_type"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v10, p0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 251
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->message:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 252
    const-string v9, "message"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->message:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 253
    :cond_3
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->location:Landroid/location/Location;

    if-eqz v9, :cond_4

    .line 254
    const-string v9, "lat"

    .line 255
    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 256
    const-string v9, "lon"

    .line 257
    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 264
    :cond_4
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->locationFriendlyName:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 265
    const-string v9, "location_name"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->locationFriendlyName:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 270
    :cond_5
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->title:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 271
    const-string v9, "title"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->title:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 276
    :cond_6
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->description:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 277
    const-string v9, "description"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->description:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 282
    :cond_7
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->icon:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 283
    const-string v9, "icon"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->icon:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 288
    :cond_8
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->link:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 289
    const-string v9, "link"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->link:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 294
    :cond_9
    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 296
    iget-object v9, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v9, v9, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 297
    invoke-static {}, Lcom/layar/util/CookieStore;->get()Lcom/layar/util/CookieStore;

    move-result-object v9

    iget-object v10, p2, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v10, v10, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/layar/util/CookieStore;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, cookies:Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 300
    const-string v9, "X-Layar-Dev-Cookies"

    invoke-virtual {v5, v9, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v9, "Cookie"

    invoke-virtual {v5, v9, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v1           #cookies:Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 306
    new-instance v10, Lorg/apache/http/HttpHost;

    const-string v11, "dev.layar.com"

    invoke-direct {v10, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 305
    invoke-static {v9, v10}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, responseString:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/layar/data/social/ShareLayerResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/social/ShareLayerResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .local v6, response:Lcom/layar/data/social/ShareLayerResponse;
    move-object v9, v6

    .line 310
    goto/16 :goto_0

    .line 311
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v5           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #response:Lcom/layar/data/social/ShareLayerResponse;
    .end local v7           #responseString:Ljava/lang/String;
    .end local v8           #uri:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 313
    .local v2, e:Lorg/json/JSONException;
    new-instance v9, Lcom/layar/data/social/ShareLayerResponse;

    const/4 v10, -0x5

    invoke-direct {v9, v10}, Lcom/layar/data/social/ShareLayerResponse;-><init>(I)V

    goto/16 :goto_0

    .line 314
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 315
    .local v2, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v9, Lcom/layar/data/social/ShareLayerResponse;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Lcom/layar/data/social/ShareLayerResponse;-><init>(I)V

    goto/16 :goto_0

    .line 316
    .end local v2           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 317
    .local v2, e:Ljava/io/IOException;
    new-instance v9, Lcom/layar/data/social/ShareLayerResponse;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Lcom/layar/data/social/ShareLayerResponse;-><init>(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected disassociate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V
    .locals 6
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 146
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    new-instance v4, Lcom/layar/data/Response;

    .line 148
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/Response;-><init>(I)V

    .line 147
    invoke-interface {p2, v4}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V

    .line 195
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 152
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "/social/<service>/disconnect"

    const-string v5, "<service>"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 155
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, uri:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "dev.layar.com"

    invoke-direct {v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v5, Lcom/layar/data/social/SocialCommunicator$2;

    invoke-direct {v5, p0, p2}, Lcom/layar/data/social/SocialCommunicator$2;-><init>(Lcom/layar/data/social/SocialCommunicator;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V

    .line 159
    invoke-static {v4, v2, v5}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #uri:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 190
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lcom/layar/data/Response;

    .line 191
    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/layar/data/Response;-><init>(I)V

    .line 190
    invoke-interface {p2, v4}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V

    goto :goto_0
.end method

.method protected getAssociateURL(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V
    .locals 6
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 99
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    new-instance v4, Lcom/layar/data/social/SocialAssociateResponce;

    .line 101
    const/16 v5, -0xa

    invoke-direct {v4, v5}, Lcom/layar/data/social/SocialAssociateResponce;-><init>(I)V

    .line 100
    invoke-interface {p2, v4}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V

    .line 143
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 105
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "/social/<service>/connect"

    const-string v5, "<service>"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 108
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, uri:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "dev.layar.com"

    invoke-direct {v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v5, Lcom/layar/data/social/SocialCommunicator$1;

    invoke-direct {v5, p0, p2}, Lcom/layar/data/social/SocialCommunicator$1;-><init>(Lcom/layar/data/social/SocialCommunicator;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V

    .line 112
    invoke-static {v4, v2, v5}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #uri:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 138
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lcom/layar/data/social/SocialAssociateResponce;

    .line 139
    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/layar/data/social/SocialAssociateResponce;-><init>(I)V

    .line 138
    invoke-interface {p2, v4}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V

    goto :goto_0
.end method
