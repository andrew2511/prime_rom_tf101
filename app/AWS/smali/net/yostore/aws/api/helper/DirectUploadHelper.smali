.class public Lnet/yostore/aws/api/helper/DirectUploadHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "DirectUploadHelper.java"


# instance fields
.field private attribute:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private fileid:J

.field private pfid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "pfid"
    .parameter "file"

    .prologue
    .line 27
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 22
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pfid"
    .parameter "file"
    .parameter "attribute"
    .parameter "fileName"

    .prologue
    .line 32
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 22
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    .line 33
    iput-object p1, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    .line 35
    iput-object p4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->attribute:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V
    .locals 2
    .parameter "pfid"
    .parameter "fileName"
    .parameter "fileid"
    .parameter "attribute"
    .parameter "data"

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 22
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    .line 40
    iput-object p1, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    .line 42
    iput-wide p3, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    .line 43
    iput-object p5, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->attribute:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->data:[B

    .line 45
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lnet/yostore/aws/api/WebRelayAPI;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/WebRelayAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, wr:Lnet/yostore/aws/api/WebRelayAPI;
    new-instance v0, Lnet/yostore/aws/api/entity/DirectUploadRequest;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/DirectUploadRequest;-><init>()V

    .line 52
    .local v0, request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setParentid(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->attribute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setAttribute(Ljava/lang/String;)V

    .line 54
    iget-wide v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 55
    iget-wide v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileid:J

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileid(J)V

    .line 56
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileName(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->data:[B

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setData([B)V

    .line 59
    const-string v2, "BaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v1, v0, p1}, Lnet/yostore/aws/api/WebRelayAPI;->directDataUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v2

    .line 69
    :goto_0
    return-object v2

    .line 61
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFile(Ljava/io/File;)V

    .line 63
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileName(Ljava/lang/String;)V

    .line 64
    const-string v2, "BaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v1, v0, p1}, Lnet/yostore/aws/api/WebRelayAPI;->directFileUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_3
    iget-object v2, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFile(Ljava/io/File;)V

    .line 68
    const-string v2, "BaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->pfid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/api/helper/DirectUploadHelper;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v1, v0, p1}, Lnet/yostore/aws/api/WebRelayAPI;->directFileUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v2

    goto/16 :goto_0
.end method
