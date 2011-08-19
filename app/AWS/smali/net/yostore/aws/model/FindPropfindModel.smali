.class public Lnet/yostore/aws/model/FindPropfindModel;
.super Ljava/lang/Object;
.source "FindPropfindModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FindPropfindModel"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "AWSPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/model/FindPropfindModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 26
    iput-object p2, p0, Lnet/yostore/aws/model/FindPropfindModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 27
    iput-object p1, p0, Lnet/yostore/aws/model/FindPropfindModel;->ctx:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private findpropfind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "pfid"
    .parameter "fname"
    .parameter "type"

    .prologue
    .line 55
    const-wide/16 v2, -0x270f

    .line 60
    .local v2, fid:J
    :try_start_0
    new-instance v0, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, p2, p3}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 62
    .local v4, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    iget-object v5, p0, Lnet/yostore/aws/model/FindPropfindModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    .line 63
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    const-string v5, "FindPropfindModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FindPropfind "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Got ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_0
    return-wide v2

    .line 69
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_0
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    const/16 v6, 0xda

    if-ne v5, v6, :cond_2

    .line 71
    :cond_1
    const-wide/16 v2, -0x3e7

    goto :goto_0

    .line 75
    :cond_2
    const-string v5, "FindPropfindModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FindPropfind Exception status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 80
    .local v1, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x270f

    goto :goto_0

    .line 82
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 84
    .local v1, e:Ljava/lang/Exception;
    const-wide/16 v2, -0x270f

    .line 85
    const-string v5, "FindPropfindModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FindPropfind folder Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public propfind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pfid"
    .parameter "fname"
    .parameter "type"

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 34
    .local v2, fid:Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/model/FindPropfindModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v4}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v4

    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v4, v5, :cond_0

    .line 36
    iget-object v4, p0, Lnet/yostore/aws/model/FindPropfindModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v4}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 37
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 49
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-object v2

    .line 38
    .restart local v3       #i:I
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lnet/yostore/aws/model/FindPropfindModel;->findpropfind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 39
    .local v0, _fid:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    const-wide/16 v4, -0x3e7

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
