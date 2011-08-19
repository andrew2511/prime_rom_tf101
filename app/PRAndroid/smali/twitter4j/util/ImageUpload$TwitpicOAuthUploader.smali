.class Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwitpicOAuthUploader"
.end annotation


# static fields
.field private static final TWITPIC_UPLOAD_URL:Ljava/lang/String; = "https://twitpic.com/api/2/upload.json"

.field private static final TWITTER_VERIFY_CREDENTIALS:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.json"


# instance fields
.field private auth:Ltwitter4j/http/OAuthAuthorization;

.field private twitpicAPIKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)V
    .locals 2
    .parameter "twitpicAPIKey"
    .parameter "auth"

    .prologue
    .line 342
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 343
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Twitpic API Key supplied to the OAuth image uploader can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->twitpicAPIKey:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    .line 348
    return-void
.end method

.method private generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    const-string v2, "GET"

    const-string v3, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 419
    .local v0, oauthSignatureParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "OAuth realm=\"http://api.twitter.com/\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 13
    .parameter "additionalParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, verifyCredentialsAuthorizationHeader:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "X-Auth-Service-Provider"

    const-string v10, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v9, "X-Verify-Credentials-Authorization"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const/4 v9, 0x1

    new-array v5, v9, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v9, 0x0

    new-instance v10, Ltwitter4j/internal/http/HttpParameter;

    const-string v11, "key"

    iget-object v12, p0, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->twitpicAPIKey:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v5, v9

    .line 392
    .local v5, params:[Ltwitter4j/internal/http/HttpParameter;
    invoke-static {v5, p1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v5

    .line 395
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 396
    .local v0, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v9, "https://twitpic.com/api/2/upload.json"

    invoke-virtual {v0, v9, v5, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    .line 399
    .local v3, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v7

    .line 400
    .local v7, statusCode:I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_0

    .line 401
    new-instance v9, Ltwitter4j/TwitterException;

    const-string v10, "Twitpic image upload returned invalid status code"

    invoke-direct {v9, v10, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v9

    .line 403
    :cond_0
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, response:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v4, v6}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 407
    .local v4, json:Ltwitter4j/internal/org/json/JSONObject;
    const-string v9, "url"

    invoke-virtual {v4, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 408
    const-string v9, "url"

    invoke-virtual {v4, v9}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 410
    .end local v4           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 411
    .local v1, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Invalid Twitpic response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 414
    .end local v1           #e:Ltwitter4j/internal/org/json/JSONException;
    .restart local v4       #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    new-instance v9, Ltwitter4j/TwitterException;

    const-string v10, "Unknown Twitpic response"

    invoke-direct {v9, v10, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v9
.end method


# virtual methods
.method public upload(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "image"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "message"

    invoke-direct {v2, v3, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "imageFileName"
    .parameter "imageBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "imageFileName"
    .parameter "imageBody"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "message"

    invoke-direct {v2, v3, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
