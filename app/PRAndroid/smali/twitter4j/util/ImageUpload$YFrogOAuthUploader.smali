.class Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YFrogOAuthUploader"
.end annotation


# static fields
.field private static final TWITTER_VERIFY_CREDENTIALS:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.xml"

.field private static final YFROG_UPLOAD_URL:Ljava/lang/String; = "https://yfrog.com/api/upload"


# instance fields
.field private auth:Ltwitter4j/http/OAuthAuthorization;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)V
    .locals 0
    .parameter "user"
    .parameter "auth"

    .prologue
    .line 173
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 174
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->user:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    .line 176
    return-void
.end method

.method private generateSignedVerifyCredentialsURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    iget-object v1, p0, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    const-string v2, "GET"

    const-string v3, "https://api.twitter.com/1/account/verify_credentials.xml"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, oauthSignatureParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "https://api.twitter.com/1/account/verify_credentials.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

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
    const/4 v11, -0x1

    .line 214
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->generateSignedVerifyCredentialsURL()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, signedVerifyCredentialsURL:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v3, v7, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v7, 0x0

    new-instance v8, Ltwitter4j/internal/http/HttpParameter;

    const-string v9, "auth"

    const-string v10, "oauth"

    invoke-direct {v8, v9, v10}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v7

    const/4 v7, 0x1

    new-instance v8, Ltwitter4j/internal/http/HttpParameter;

    const-string v9, "username"

    iget-object v10, p0, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->user:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v7

    const/4 v7, 0x2

    new-instance v8, Ltwitter4j/internal/http/HttpParameter;

    const-string v9, "verify_url"

    invoke-direct {v8, v9, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v7

    .line 222
    .local v3, params:[Ltwitter4j/internal/http/HttpParameter;
    invoke-static {v3, p1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    .line 225
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 226
    .local v0, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v7, "https://yfrog.com/api/upload"

    invoke-virtual {v0, v7, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 229
    .local v2, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v6

    .line 230
    .local v6, statusCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 231
    new-instance v7, Ltwitter4j/TwitterException;

    const-string v8, "YFrog image upload returned invalid status code"

    invoke-direct {v7, v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v7

    .line 234
    :cond_0
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, response:Ljava/lang/String;
    const-string v7, "<rsp stat=\"fail\">"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v11, v7, :cond_1

    .line 236
    const-string v7, "msg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, error:Ljava/lang/String;
    new-instance v7, Ltwitter4j/TwitterException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "YFrog image upload failed with this error message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v7

    .line 239
    .end local v1           #error:Ljava/lang/String;
    :cond_1
    const-string v7, "<rsp stat=\"ok\">"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v11, v7, :cond_2

    .line 240
    const-string v7, "<mediaurl>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "<mediaurl>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "</mediaurl>"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 243
    :cond_2
    new-instance v7, Ltwitter4j/TwitterException;

    const-string v8, "Unknown YFrog response"

    invoke-direct {v7, v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v7
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
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 187
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 203
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 206
    :goto_0
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method
