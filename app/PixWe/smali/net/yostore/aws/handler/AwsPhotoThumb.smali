.class public Lnet/yostore/aws/handler/AwsPhotoThumb;
.super Ljava/lang/Object;
.source "AwsPhotoThumb.java"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Landroid/content/Context;)V
    .locals 0
    .parameter "apicfg"
    .parameter "ctx"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 20
    iput-object p2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->ctx:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private getLargeImg(J)Ljava/lang/String;
    .locals 4
    .parameter "fileId"

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/webrelay/getresizedphoto/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pfd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",st=0,preview=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/Base64Decode;->AESencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg?dis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10035"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method private getThumb(J)Ljava/lang/String;
    .locals 4
    .parameter "fileId"

    .prologue
    .line 33
    const-string v0, ""

    .line 34
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/webrelay/getresizedphoto/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pfd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",st=1,preview=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/Base64Decode;->AESencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg?dis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10035"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method private getUploadLocalFileUrl(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;
    .locals 5
    .parameter "mib"

    .prologue
    .line 53
    const-string v1, ""

    .line 54
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadQueue(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v0

    .line 55
    .local v0, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_0
    return-object v1
.end method

.method private getVideoSnapShot(J)Ljava/lang/String;
    .locals 4
    .parameter "fileId"

    .prologue
    .line 24
    const-string v0, ""

    .line 25
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/webrelay/getvideosnapshot/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/handler/AwsPhotoThumb;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pv=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/Base64Decode;->AESencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg?dis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10035"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLargeImg(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;
    .locals 5
    .parameter "mib"

    .prologue
    const-wide/16 v3, 0x0

    .line 76
    const-string v0, ""

    .line 77
    .local v0, url:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getLargeImg(J)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getUploadLocalFileUrl(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumb(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;
    .locals 5
    .parameter "mib"

    .prologue
    const-wide/16 v3, 0x0

    .line 62
    const-string v0, ""

    .line 63
    .local v0, url:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 64
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getThumb(J)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getVideoSnapShot(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getUploadLocalFileUrl(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
