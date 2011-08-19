.class public Lnet/yostore/aws/api/helper/FolderBrowseHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FolderBrowseHelper.java"


# instance fields
.field private endtime:J

.field private page:I

.field private pageEnable:Z

.field private pagesize:I

.field private parent:Ljava/lang/String;

.field private sort:I

.field private sortByDesc:I

.field private starttime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZII)V
    .locals 4
    .parameter "parent"
    .parameter "sort"
    .parameter "sortByDesc"
    .parameter "pageEnable"
    .parameter "pagesize"
    .parameter "page"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 17
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    .line 19
    iput-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    .line 20
    iput-wide v2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sort:I

    .line 22
    iput v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sortByDesc:I

    .line 23
    iput-boolean v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    .line 26
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 27
    iput p2, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sort:I

    .line 28
    iput p3, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sortByDesc:I

    .line 29
    iput p5, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    .line 30
    iput p6, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    .line 31
    iput-boolean p4, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 7
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
    .line 92
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;

    .line 93
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 94
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 96
    iget v4, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sort:I

    .line 97
    iget v5, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sortByDesc:I

    .line 92
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 100
    .local v0, request:Lnet/yostore/aws/api/entity/FolderBrowseRequest;
    iget v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    if-lez v1, :cond_0

    iget v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setPageno(I)V

    .line 102
    iget v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setPagesize(I)V

    .line 104
    :cond_0
    iget-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    iget-wide v3, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 105
    iget-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setStarttime(J)V

    .line 106
    iget-wide v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setEndtime(J)V

    .line 108
    :cond_1
    iget-boolean v1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->setPageEnable(Z)V

    .line 109
    new-instance v6, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v6, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v6, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v6, v0}, Lnet/yostore/aws/api/InfoRelayApi;->folderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-result-object v1

    return-object v1
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sort:I

    return v0
.end method

.method public getSortByDesc()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sortByDesc:I

    return v0
.end method

.method public isPageEnable()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    return v0
.end method

.method public setEndtime(J)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 56
    iput-wide p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->endtime:J

    .line 57
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 46
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->page:I

    .line 47
    return-void
.end method

.method public setPageEnable(Z)V
    .locals 0
    .parameter "pageEnable"

    .prologue
    .line 86
    iput-boolean p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pageEnable:Z

    .line 87
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 41
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->pagesize:I

    .line 42
    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 36
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSort(I)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 66
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sort:I

    .line 67
    return-void
.end method

.method public setSortByDesc(I)V
    .locals 0
    .parameter "sortByDesc"

    .prologue
    .line 76
    iput p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->sortByDesc:I

    .line 77
    return-void
.end method

.method public setStarttime(J)V
    .locals 0
    .parameter "starttime"

    .prologue
    .line 51
    iput-wide p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->starttime:J

    .line 52
    return-void
.end method
