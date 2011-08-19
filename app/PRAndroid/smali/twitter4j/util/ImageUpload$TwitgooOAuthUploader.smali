.class public Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwitgooOAuthUploader"
.end annotation


# static fields
.field private static final TWITGOO_UPLOAD_URL:Ljava/lang/String; = "http://twitgoo.com/api/uploadAndPost"

.field private static final TWITTER_VERIFY_CREDENTIALS:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.json"


# instance fields
.field private auth:Ltwitter4j/http/OAuthAuthorization;


# direct methods
.method public constructor <init>(Ltwitter4j/http/OAuthAuthorization;)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 688
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 689
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    .line 690
    return-void
.end method

.method private generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 777
    iget-object v1, p0, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->auth:Ltwitter4j/http/OAuthAuthorization;

    const-string v2, "GET"

    const-string v3, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 778
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
    .locals 17
    .parameter "additionalParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-direct/range {p0 .. p0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->generateVerifyCredentialsAuthorizationHeader()Ljava/lang/String;

    move-result-object v12

    .line 731
    .local v12, verifyCredentialsAuthorizationHeader:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 732
    .local v4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "X-Auth-Service-Provider"

    const-string v14, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v13, "X-Verify-Credentials-Authorization"

    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const/4 v13, 0x1

    new-array v9, v13, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v13, 0x0

    new-instance v14, Ltwitter4j/internal/http/HttpParameter;

    const-string v15, "no_twitter_post"

    const-string v16, "1"

    invoke-direct/range {v14 .. v16}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 739
    .local v9, params:[Ltwitter4j/internal/http/HttpParameter;
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v9

    .line 742
    new-instance v2, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v2}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 743
    .local v2, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v13, "http://twitgoo.com/api/uploadAndPost"

    invoke-virtual {v2, v13, v9, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v5

    .line 746
    .local v5, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v5}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v11

    .line 747
    .local v11, statusCode:I
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_0

    .line 748
    new-instance v13, Ltwitter4j/TwitterException;

    const-string v14, "Twitgoo image upload returned invalid status code"

    invoke-direct {v13, v14, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v13

    .line 750
    :cond_0
    invoke-virtual {v5}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v10

    .line 751
    .local v10, response:Ljava/lang/String;
    const/4 v13, -0x1

    const-string v14, "<rsp status=\"ok\">"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-eq v13, v14, :cond_1

    .line 752
    const-string v3, "<mediaurl>"

    .line 753
    .local v3, h:Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 754
    .local v6, i:I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    .line 755
    const-string v13, "</mediaurl>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 756
    .local v7, j:I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 757
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 760
    .end local v3           #h:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_1
    const/4 v13, -0x1

    const-string v14, "<rsp status=\"fail\">"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-eq v13, v14, :cond_2

    .line 761
    const-string v3, "msg=\""

    .line 762
    .restart local v3       #h:Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 763
    .restart local v6       #i:I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    .line 764
    const-string v13, "\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 765
    .restart local v7       #j:I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 766
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, msg:Ljava/lang/String;
    new-instance v13, Ltwitter4j/TwitterException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Invalid Twitgoo response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 772
    .end local v3           #h:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #msg:Ljava/lang/String;
    :cond_2
    new-instance v13, Ltwitter4j/TwitterException;

    const-string v14, "Unknown Twitgoo response"

    invoke-direct {v13, v14, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v13
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
    .line 695
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 703
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 712
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 720
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
