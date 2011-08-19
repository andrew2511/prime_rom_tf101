.class public Lnet/yostore/aws/api/helper/SqlQueryHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "SqlQueryHelper.java"


# instance fields
.field private ancestorid:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field private markid:Ljava/lang/String;

.field private offset:I

.field private pagesize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind2"
    .parameter "ext"
    .parameter "ancestorid"

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 26
    iput-object p1, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->keyword:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->markid:Ljava/lang/String;

    .line 28
    iput p3, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->pagesize:I

    .line 29
    iput p4, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->offset:I

    .line 30
    iput-object p5, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 31
    iput-object p6, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->ext:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->ancestorid:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 11
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
    .line 38
    new-instance v0, Lnet/yostore/aws/api/entity/SqlQueryRequest;

    .line 39
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 40
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->keyword:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->markid:Ljava/lang/String;

    .line 43
    iget v5, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->pagesize:I

    .line 44
    iget v6, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->offset:I

    .line 45
    iget-object v7, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 46
    iget-object v8, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->ext:Ljava/lang/String;

    .line 47
    iget-object v9, p0, Lnet/yostore/aws/api/helper/SqlQueryHelper;->ancestorid:Ljava/lang/String;

    .line 38
    invoke-direct/range {v0 .. v9}, Lnet/yostore/aws/api/entity/SqlQueryRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, request:Lnet/yostore/aws/api/entity/SqlQueryRequest;
    new-instance v10, Lnet/yostore/aws/api/SearchServerApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v10, v1, v2}, Lnet/yostore/aws/api/SearchServerApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v10, ss:Lnet/yostore/aws/api/SearchServerApi;
    invoke-virtual {v10, v0}, Lnet/yostore/aws/api/SearchServerApi;->sqlQuery(Lnet/yostore/aws/api/entity/SqlQueryRequest;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v1

    return-object v1
.end method
