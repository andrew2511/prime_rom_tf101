.class public Lcom/asus/cm/util/DMHandlerHelperAsus;
.super Lcom/asus/cm/util/DMHandlerHelperTMO;
.source "DMHandlerHelperAsus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/asus/cm/util/DMHandlerHelperTMO;-><init>()V

    return-void
.end method

.method public static registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 3
    .parameter "DMService"
    .parameter "pTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/cm/exception/DMInvalidException;
        }
    .end annotation

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr DMService is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr pTree is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_1
    sput-object p0, Lcom/asus/cm/util/DMHandlerHelperAsus;->mDMSInst:Landroid/content/Context;

    .line 26
    sget-object v1, Lcom/asus/cm/util/DMHandlerHelperAsus;->mDMSInst:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/asus/cm/util/DMHandlerHelperAsus;->initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 28
    new-instance v0, Lcom/asus/cm/settings/MobileConnectionList;

    sget-object v1, Lcom/asus/cm/util/DMHandlerHelperAsus;->mDMSInst:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, mcList:Lcom/asus/cm/settings/MobileConnectionList;
    invoke-static {p1, v0}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V

    .line 47
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerEmailPrefsCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 61
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 67
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerLocationCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 68
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerRingCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 69
    return-void
.end method

.method protected static registerLocationCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 5
    .parameter "pTree"

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/asus/cm/handler/LocationHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperAsus;->mDMSInst:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/asus/cm/handler/LocationHandler;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v1, oneshot:Lcom/asus/cm/handler/LocationHandler;
    :try_start_0
    const-string v2, "DMHandlerHelper"

    const-string v3, "register Exec on:./LOCMO/OneShot"

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "./LOCMO/OneShot"

    invoke-interface {p0, v2, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerExecute(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V

    .line 81
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperAsus;->mExecHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register IO on: ./DevDetail/DmV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static registerRingCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 5
    .parameter "pTree"

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Lcom/asus/cm/handler/RingHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperAsus;->mDMSInst:Landroid/content/Context;

    check-cast v2, Lcom/asus/cm/CMService;

    invoke-direct {v1, v2}, Lcom/asus/cm/handler/RingHandler;-><init>(Lcom/asus/cm/CMService;)V

    .line 97
    .local v1, ring:Lcom/asus/cm/handler/RingHandler;
    :try_start_0
    const-string v2, "DMHandlerHelper"

    const-string v3, "register IO on:./Ring/Status"

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "./Ring/Status"

    invoke-interface {p0, v2, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 99
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperAsus;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register IO on: ./DevDetail/DmV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
