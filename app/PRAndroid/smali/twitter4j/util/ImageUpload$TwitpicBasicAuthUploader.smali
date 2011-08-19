.class Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;
.super Ltwitter4j/util/ImageUpload;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/util/ImageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwitpicBasicAuthUploader"
.end annotation


# static fields
.field private static final TWITPIC_UPLOAD_URL:Ljava/lang/String; = "https://twitpic.com/api/upload"


# instance fields
.field private auth:Ltwitter4j/http/BasicAuthorization;


# direct methods
.method public constructor <init>(Ltwitter4j/http/BasicAuthorization;)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 429
    invoke-direct {p0}, Ltwitter4j/util/ImageUpload;-><init>()V

    .line 430
    iput-object p1, p0, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->auth:Ltwitter4j/http/BasicAuthorization;

    .line 431
    return-void
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

    .line 465
    const/4 v6, 0x2

    new-array v3, v6, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v6, 0x0

    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const-string v8, "username"

    iget-object v9, p0, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->auth:Ltwitter4j/http/BasicAuthorization;

    invoke-virtual {v9}, Ltwitter4j/http/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const-string v8, "password"

    iget-object v9, p0, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->auth:Ltwitter4j/http/BasicAuthorization;

    invoke-virtual {v9}, Ltwitter4j/http/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 469
    .local v3, params:[Ltwitter4j/internal/http/HttpParameter;
    invoke-static {v3, p1}, Ltwitter4j/util/ImageUpload;->access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    .line 472
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {v0}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>()V

    .line 473
    .local v0, client:Ltwitter4j/internal/http/HttpClientWrapper;
    const-string v6, "https://twitpic.com/api/upload"

    invoke-virtual {v0, v6, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 476
    .local v2, httpResponse:Ltwitter4j/internal/http/HttpResponse;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v5

    .line 477
    .local v5, statusCode:I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 478
    new-instance v6, Ltwitter4j/TwitterException;

    const-string v7, "Twitpic image upload returned invalid status code"

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v6

    .line 480
    :cond_0
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, response:Ljava/lang/String;
    const-string v6, "<rsp stat=\"fail\">"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v10, v6, :cond_1

    .line 482
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, error:Ljava/lang/String;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Twitpic image upload failed with this error message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v6

    .line 486
    .end local v1           #error:Ljava/lang/String;
    :cond_1
    const-string v6, "<rsp stat=\"ok\">"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v10, v6, :cond_2

    .line 487
    const-string v6, "<mediaurl>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "<mediaurl>"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "</mediaurl>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 490
    :cond_2
    new-instance v6, Ltwitter4j/TwitterException;

    const-string v7, "Unknown Twitpic response"

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v6
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
    .line 435
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 442
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

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
    .line 457
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

    invoke-direct {p0, v0}, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;->upload([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
