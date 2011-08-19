.class Ltwitter4j/util/ImageUpload$TwippleUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwippleUploader"
.end annotation


# static fields
.field private static final TWIPPLE_UPLOAD_URL:Ljava/lang/String; = "http://p.twipple.jp/api/upload"

.field private static final TWITTER_VERIFY_CREDENTIALS:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.xml"


# instance fields
.field private auth:Ltwitter4j/http/OAuthAuthorization;


# direct methods
.method public constructor <init>(Ltwitter4j/http/OAuthAuthorization;)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 789
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 790
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$TwippleUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    .line 791
    return-void
.end method

.method private generateSignedVerifyCredentialsURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 856
    iget-object v1, p0, Ltwitter4j/util/ImageUpload$TwippleUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    const-string v2, "GET"

    const-string v3, "https://api.twitter.com/1/account/verify_credentials.xml"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 857
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
    .locals 11
    .parameter "additionalParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 828
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload$TwippleUploader;->generateSignedVerifyCredentialsURL()Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, signedVerifyCredentialsURL:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v7, 0x0

    new-instance v8, Ltwitter4j/internal/http/HttpParameter;

    const-string v9, "verify_url"

    invoke-direct {v8, v9, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v7

    .line 833
    .local v3, params:[Ltwitter4j/internal/http/HttpParameter;
    invoke-static {v3, p1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    .line 835
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 836
    .local v0, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v7, "http://p.twipple.jp/api/upload"

    invoke-virtual {v0, v7, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 838
    .local v2, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v6

    .line 839
    .local v6, statusCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 840
    new-instance v7, Ltwitter4j/TwitterException;

    const-string v8, "Twipple image upload returned invalid status code"

    invoke-direct {v7, v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v7

    .line 843
    :cond_0
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, response:Ljava/lang/String;
    const-string v7, "<rsp stat=\"fail\">"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v10, v7, :cond_1

    .line 845
    const-string v7, "msg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, error:Ljava/lang/String;
    new-instance v7, Ltwitter4j/TwitterException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Twipple image upload failed with this error message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v7

    .line 848
    .end local v1           #error:Ljava/lang/String;
    :cond_1
    const-string v7, "<rsp stat=\"ok\">"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v10, v7, :cond_2

    .line 849
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

    .line 852
    :cond_2
    new-instance v7, Ltwitter4j/TwitterException;

    const-string v8, "Unknown Twipple response"

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
    .line 796
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwippleUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 805
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwippleUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 813
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwippleUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 822
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwippleUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
