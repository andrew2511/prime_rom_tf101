.class public Lnet/yostore/aws/handler/entity/ImportInfoBean;
.super Ljava/lang/Object;
.source "ImportInfoBean.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private awsl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private rty:I


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->rty:I

    .line 44
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/handler/entity/ImportInfoBean;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/handler/entity/ImportInfoBean;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->toXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toXml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const-string v0, ""

    .line 130
    .local v0, awslStr:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 140
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><im>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</im>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 133
    .restart local v1       #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<awsl>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</awsl>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public caompareAwslDiff(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    .line 59
    if-eqz p1, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 72
    :goto_0
    return v2

    .line 61
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, rtn:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_1
    :goto_2
    move v2, v1

    .line 69
    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_3

    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_2

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0           #i:I
    .end local v1           #rtn:Z
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    move v2, v4

    .line 72
    goto :goto_0
.end method

.method public getAwsl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    return-object v0
.end method

.method public getImportInfo()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 92
    sget-wide v4, Lcom/ecareme/mear/Mear;->import_info_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 93
    new-instance v2, Lnet/yostore/aws/api/helper/ImportInfoHelper;

    sget-wide v4, Lcom/ecareme/mear/Mear;->import_info_id:J

    invoke-direct {v2, v4, v5}, Lnet/yostore/aws/api/helper/ImportInfoHelper;-><init>(J)V

    .line 94
    .local v2, helper:Lnet/yostore/aws/api/helper/ImportInfoHelper;
    const/4 v3, 0x0

    .line 97
    .local v3, response:Lnet/yostore/aws/api/entity/ImportInfoResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/ImportInfoHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/ImportInfoResponse;

    move-object v3, v0

    .line 98
    if-nez v3, :cond_0

    iget v4, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->rty:I

    if-ge v4, v10, :cond_0

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getImportInfo()Z

    move-result v4

    .line 113
    .end local v2           #helper:Lnet/yostore/aws/api/helper/ImportInfoHelper;
    .end local v3           #response:Lnet/yostore/aws/api/entity/ImportInfoResponse;
    :goto_0
    return v4

    .line 99
    .restart local v2       #helper:Lnet/yostore/aws/api/helper/ImportInfoHelper;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/ImportInfoResponse;
    :cond_0
    if-nez v3, :cond_1

    iget v4, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->rty:I

    if-lt v4, v10, :cond_1

    move v4, v8

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ImportInfoResponse;->getAwsl()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v9

    .line 104
    goto :goto_0

    .line 106
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 107
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    if-eqz v4, :cond_2

    move v4, v9

    .line 108
    goto :goto_0

    :cond_2
    move v4, v8

    .line 110
    goto :goto_0

    .end local v1           #e1:Lnet/yostore/aws/api/exception/APIException;
    .end local v2           #helper:Lnet/yostore/aws/api/helper/ImportInfoHelper;
    .end local v3           #response:Lnet/yostore/aws/api/entity/ImportInfoResponse;
    :cond_3
    move v4, v8

    .line 113
    goto :goto_0
.end method

.method public saveImportInfo()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;-><init>(Lnet/yostore/aws/handler/entity/ImportInfoBean;)V

    .line 88
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;->start()V

    .line 89
    return-void
.end method

.method public setAwsl(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean;->awsl:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setImportInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "Xml"

    .prologue
    .line 78
    return-void
.end method
