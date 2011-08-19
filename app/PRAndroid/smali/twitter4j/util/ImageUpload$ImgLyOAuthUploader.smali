.class public Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgLyOAuthUploader"
.end annotation


# static fields
.field private static final IMGLY_UPLOAD_URL:Ljava/lang/String; = "http://img.ly/api/2/upload.json"

.field private static final TWITTER_VERIFY_CREDENTIALS:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.json"


# instance fields
.field private auth:Ltwitter4j/http/OAuthAuthorization;


# direct methods
.method public constructor <init>(Ltwitter4j/http/OAuthAuthorization;)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 595
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 596
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    .line 597
    return-void
.end method

.method private generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 674
    iget-object v1, p0, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    const-string v2, "GET"

    const-string v3, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 675
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
    .locals 12
    .parameter "additionalParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;

    move-result-object v8

    .line 638
    .local v8, verifyCredentialsAuthorizationHeader:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "X-Auth-Service-Provider"

    const-string v10, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v9, "X-Verify-Credentials-Authorization"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const/4 v9, 0x0

    new-array v5, v9, [Ltwitter4j/internal/http/HttpParameter;

    .line 645
    .local v5, params:[Ltwitter4j/internal/http/HttpParameter;
    invoke-static {v5, p1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v5

    .line 648
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 649
    .local v0, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v9, "http://img.ly/api/2/upload.json"

    invoke-virtual {v0, v9, v5, v2}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    .line 652
    .local v3, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v7

    .line 653
    .local v7, statusCode:I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_0

    .line 654
    new-instance v9, Ltwitter4j/TwitterException;

    const-string v10, "ImgLy image upload returned invalid status code"

    invoke-direct {v9, v10, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v9

    .line 656
    :cond_0
    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, response:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v4, v6}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 661
    .local v4, json:Ltwitter4j/internal/org/json/JSONObject;
    const-string v9, "url"

    invoke-virtual {v4, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 662
    const-string v9, "url"

    invoke-virtual {v4, v9}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 664
    .end local v4           #json:Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 666
    .local v1, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Invalid ImgLy response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 669
    .end local v1           #e:Ltwitter4j/internal/org/json/JSONException;
    .restart local v4       #json:Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    new-instance v9, Ltwitter4j/TwitterException;

    const-string v10, "Unknown ImgLy response"

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
    .line 602
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 610
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 619
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 627
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
