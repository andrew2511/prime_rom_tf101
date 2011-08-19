.class public Lnet/yostore/aws/handler/SearchHandler;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# static fields
.field public static errMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/handler/SearchHandler;->errMsg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 6
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 52
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/SearchHandler;->getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 7
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"

    .prologue
    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/SearchHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 11
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 59
    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 60
    .local v6, kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 63
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FulltextQueryHelper;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V

    .line 70
    .local v1, apihelper:Lnet/yostore/aws/api/helper/FulltextQueryHelper;
    const/4 v9, 0x0

    .line 72
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v9, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v9

    .line 73
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 74
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 8
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"

    .prologue
    .line 85
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    .line 92
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p3

    .line 85
    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 p1, 0x0

    .line 96
    .local p1, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local p1           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_0
    return-object p0

    .line 97
    .end local p0           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .restart local p1       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_0
    move-exception p0

    .line 98
    .local p0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    goto :goto_0
.end method

.method public static getStarQuery(Lnet/yostore/aws/api/ApiConfig;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 7
    .parameter "apicfg"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v2, "1"

    move-object v0, p0

    move-object v3, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/SearchHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public static savedSearch(Lnet/yostore/aws/handler/entity/Search;Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 9
    .parameter "search"
    .parameter "apicfg"

    .prologue
    const/4 v8, 0x1

    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, rtn:Z
    new-array v0, v8, [B

    .line 35
    .local v0, data:[B
    new-instance v5, Lnet/yostore/aws/api/WebRelayAPI;

    iget-object v6, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    const-string v7, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/api/WebRelayAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v5, wr:Lnet/yostore/aws/api/WebRelayAPI;
    :try_start_0
    new-instance v2, Lnet/yostore/aws/api/entity/DirectUploadRequest;

    invoke-direct {v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;-><init>()V

    .line 39
    .local v2, request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    invoke-virtual {v2, v0}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setData([B)V

    .line 40
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileName(Ljava/lang/String;)V

    .line 41
    const-wide/16 v6, -0xd

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setParentid(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5, v2, p1}, Lnet/yostore/aws/api/WebRelayAPI;->directDataUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v3

    .line 43
    .local v3, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0xd6

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    move v4, v6

    .line 47
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return v4

    .restart local v2       #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_0
    move v4, v8

    .line 43
    goto :goto_0

    .line 44
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 45
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
