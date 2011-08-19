.class public Lnet/yostore/aws/api/helper/FolderBrowseHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FolderBrowseHelper.java"


# instance fields
.field private endtime:J

.field private page:I

.field private pagesize:I

.field private parent:Ljava/lang/String;

.field private starttime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "parent"

    .prologue
    const-wide/16 v1, 0x0

    .line 22
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 17
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    .line 19
    iput-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    .line 20
    iput-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    .line 23
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 24
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
    .line 54
    new-instance v1, Lnet/yostore/aws/api/entity/FolderBrowseRequest;

    .line 55
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 57
    iget-object v4, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 54
    invoke-direct {v1, v2, v3, v4}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v1, request:Lnet/yostore/aws/api/entity/FolderBrowseRequest;
    iget v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 61
    iget v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setPageno(I)V

    .line 62
    iget v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setPagesize(I)V

    .line 64
    :cond_0
    iget-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    iget-wide v4, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 65
    iget-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setStarttime(J)V

    .line 66
    iget-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setEndtime(J)V

    .line 69
    :cond_1
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->folderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-result-object v2

    return-object v2
.end method

.method public setEndtime(J)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 48
    iput-wide p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    .line 49
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 38
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    .line 39
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 33
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    .line 34
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setStarttime(J)V
    .locals 0
    .parameter "starttime"

    .prologue
    .line 43
    iput-wide p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    .line 44
    return-void
.end method
