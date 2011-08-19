.class public Lnet/yostore/aws/api/helper/StarQueryHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "StarQueryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StarQueryHelper"


# instance fields
.field private ext:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field private markid:Ljava/lang/String;

.field private offset:I

.field private pagesize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"
    .parameter "ext"

    .prologue
    .line 27
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->keyword:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->markid:Ljava/lang/String;

    .line 30
    iput p3, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->pagesize:I

    .line 31
    iput p4, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->offset:I

    .line 32
    iput-object p5, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 33
    iput-object p6, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->ext:Ljava/lang/String;

    .line 34
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
    .line 39
    new-instance v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest;

    .line 40
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 41
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->keyword:Ljava/lang/String;

    .line 43
    iget-object v4, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->markid:Ljava/lang/String;

    .line 44
    iget v5, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->pagesize:I

    .line 45
    iget v6, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->offset:I

    .line 46
    iget-object v7, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 47
    iget-object v8, p0, Lnet/yostore/aws/api/helper/StarQueryHelper;->ext:Ljava/lang/String;

    .line 39
    invoke-direct/range {v0 .. v8}, Lnet/yostore/aws/api/entity/FulltextQueryRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V

    .line 50
    .local v0, request:Lnet/yostore/aws/api/entity/FulltextQueryRequest;
    new-instance v10, Lnet/yostore/aws/api/SearchServerApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v10, v1, v2}, Lnet/yostore/aws/api/SearchServerApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v10, ss:Lnet/yostore/aws/api/SearchServerApi;
    invoke-virtual {v10, v0}, Lnet/yostore/aws/api/SearchServerApi;->fulltextQuery(Lnet/yostore/aws/api/entity/FulltextQueryRequest;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v9

    .line 52
    .local v9, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v1, "StarQueryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v9
.end method
