.class public Lnet/yostore/aws/model/CreateFolderModel;
.super Ljava/lang/Object;
.source "CreateFolderModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateFolderModel"


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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "AWSPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/model/CreateFolderModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 30
    iput-object p2, p0, Lnet/yostore/aws/model/CreateFolderModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 31
    iput-object p1, p0, Lnet/yostore/aws/model/CreateFolderModel;->ctx:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private createFolder(JLjava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter "pfid"
    .parameter "fname"
    .parameter "attr"

    .prologue
    .line 53
    const-wide/32 v4, -0x5f5e0ff

    .line 58
    .local v4, fid:J
    :try_start_0
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    .line 59
    .local v1, at:Lnet/yostore/aws/api/entity/Attribute;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, currentM:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 63
    const-string v7, "android"

    invoke-virtual {v1, v7}, Lnet/yostore/aws/api/entity/Attribute;->setxMachinename(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 65
    new-instance v0, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, p3, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v6, 0x0

    .line 67
    .local v6, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v7, p0, Lnet/yostore/aws/model/CreateFolderModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v7}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    .end local v6           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v6, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 68
    .restart local v6       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v7

    if-nez v7, :cond_0

    .line 70
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v4

    .line 71
    const-string v7, "CreateFolderModel"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FolderCreate "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Got ID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v1           #at:Lnet/yostore/aws/api/entity/Attribute;
    .end local v2           #currentM:Ljava/lang/String;
    .end local v6           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :goto_0
    return-wide v4

    .line 75
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v1       #at:Lnet/yostore/aws/api/entity/Attribute;
    .restart local v2       #currentM:Ljava/lang/String;
    .restart local v6       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_0
    const-string v7, "CreateFolderModel"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FolderCreate Exception status:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v1           #at:Lnet/yostore/aws/api/entity/Attribute;
    .end local v2           #currentM:Ljava/lang/String;
    .end local v6           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 80
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "CreateFolderModel"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FolderCreate folder Exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public create(JLjava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "pfid"
    .parameter "fname"
    .parameter "attr"

    .prologue
    .line 36
    const-wide/32 v0, -0x5f5e0ff

    .line 38
    .local v0, fid:J
    iget-object v3, p0, Lnet/yostore/aws/model/CreateFolderModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_0

    .line 40
    iget-object v3, p0, Lnet/yostore/aws/model/CreateFolderModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 41
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 47
    .end local v2           #i:I
    :cond_0
    return-wide v0

    .line 42
    .restart local v2       #i:I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/yostore/aws/model/CreateFolderModel;->createFolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 43
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
