.class public Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
.super Ljava/lang/Object;
.source "DefaultFumoHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/fumo/FumoHandler;


# instance fields
.field protected mDLTotalSize:I

.field protected mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

.field protected mEstimatedInstallTime:I

.field protected mPackagePriority:Ljava/lang/String;

.field public mPowerOffProgressDialog:Landroid/app/ProgressDialog;

.field protected mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field protected mService:Lcom/asus/dm/DMService;


# direct methods
.method public constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 1
    .parameter "pService"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    .line 45
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 46
    return-void
.end method

.method public static getFumoHandler(Landroid/content/Context;)Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 280
    .local v5, ret:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.asus.dm.fumoHandler."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/asus/dm/DMConfig;->getFumoHandlerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/asus/dm/DMService;

    aput-object v7, v4, v6

    .line 282
    .local v4, params:[Ljava/lang/Class;
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 283
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    .line 284
    .local v3, paramObjs:[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ret:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    check-cast v5, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .restart local v5       #ret:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    return-object v5

    .line 285
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #paramObjs:[Ljava/lang/Object;
    .end local v4           #params:[Ljava/lang/Class;
    .end local v5           #ret:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 286
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private showConfirmDownloadWithoutUi()Z
    .locals 1

    .prologue
    .line 120
    const-string v0, "wifi update package comes."

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public confirmDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z
    .locals 6
    .parameter "pDownDescriptor"
    .parameter "pVdmFumo"

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "===== confirmDownload() of DMService.. ====="

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-wide v2, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "no space for download try to delete update file"

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->clearCache()V

    .line 82
    iget-wide v2, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const-string v2, "no space for download abort."

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 88
    const-string v2, "arg1.triggerReportSession(VdmFumoUpdateResult.ResultCode.OUT_OF_MEMORY_FOR_DOWNLOAD);"

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "save state"

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/asus/dm/RBDownloadDescriptor;

    iget-wide v3, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    iget-object v5, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/asus/dm/RBDownloadDescriptor;-><init>(J[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    .line 96
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    iget-object v3, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->setDLDescriptor(Lcom/asus/dm/RBDownloadDescriptor;)V

    .line 100
    iget-wide v2, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    long-to-int v2, v2

    iput v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 101
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    invoke-virtual {v2}, Lcom/asus/dm/RBDownloadDescriptor;->getPriority()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    invoke-virtual {v2}, Lcom/asus/dm/RBDownloadDescriptor;->getEstimatedInstallTime()I

    move-result v2

    iput v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    .line 105
    invoke-virtual {p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->saveDescriptorToReg()V

    .line 107
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 109
    .local v1, lp:Landroid/net/LinkProperties;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.getInterfaceName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->showConfirmDownloadWithoutUi()Z

    move-result v2

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->showConfirmDownload()Z

    move-result v2

    goto :goto_0
.end method

.method public confirmUpdate(Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z
    .locals 5
    .parameter "pVdmFumo"

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string v2, "===== confirmUpdate ====="

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getUpdatePkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    const-string v2, "update file not exist"

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    .line 177
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return v2

    .line 158
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg0.getUpdatePkgPath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getUpdatePkgPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 159
    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 162
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmUpdate() catched exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 166
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_1
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMCRegistryManager;->setHasUpdateFile(Z)V

    .line 170
    invoke-virtual {p0, v4}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 171
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 172
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget v3, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMCRegistryManager;->setDLTotalSize(I)V

    .line 175
    iget-object v2, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v2}, Lcom/asus/dm/DMService;->cancelProgressNotification()V

    .line 177
    invoke-virtual {p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->showConfirmUpdate()Z

    move-result v2

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 181
    new-instance v4, Lcom/asus/dm/fumoHandler/DefaultFumoHandler$1;

    invoke-direct {v4, p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler$1;-><init>(Lcom/asus/dm/fumoHandler/DefaultFumoHandler;)V

    invoke-virtual {v4}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler$1;->start()V

    .line 201
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v5, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v4, v5}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 202
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->clearPostponeTimes()V

    .line 203
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/asus/dm/DMCRegistryManager;->setHasUpdateFile(Z)V

    .line 204
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v4}, Lcom/asus/dm/DMService;->cancelProgressNotification()V

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===== executeUpdate ===== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 209
    .local v2, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const/4 v3, 0x0

    .line 210
    .local v3, updatePath:Ljava/lang/String;
    const/4 v1, 0x1

    .line 211
    .local v1, bUpdate:Z
    const/4 v0, 0x0

    .line 213
    .local v0, bSyncUpdate:Z
    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v3

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->waitforCall()V

    .line 217
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v4, v3}, Lcom/asus/dm/DMService;->update_Process(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v2

    .line 220
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_4

    const-string v5, "NULL"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v4, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-ne v2, v4, :cond_2

    .line 222
    :cond_1
    const-string v4, "CLIENT_ERROR || FW_UP_CORRUPT"

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v4}, Lcom/asus/dm/DMService;->showFirmwareUpdateFailAlertDialog()V

    .line 225
    const/4 v0, 0x1

    .line 227
    :cond_2
    sget-object v4, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-eq v2, v4, :cond_3

    .line 228
    iget-object v4, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 230
    :cond_3
    new-instance v4, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;

    invoke-direct {v4, v2, v0}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;-><init>(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;Z)V

    return-object v4

    .line 220
    :cond_4
    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getDLResume()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getDLResume()Z

    move-result v0

    return v0
.end method

.method public getDLTotalSize()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    return v0
.end method

.method public getEstimatedInstallTime()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getEstimatedInstallTime()I

    move-result v0

    return v0
.end method

.method public readDLTotalSizefromReg()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getDLTotalSize()I

    move-result v0

    iput v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 250
    return-void
.end method

.method public readPackagePriorityfromReg()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getPackagePriority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public saveDescriptorToReg()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setDLTotalSize(I)V

    .line 239
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-object v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setPackagePriority(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    if-lez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================  3. mEstimatedInstallTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setEstimatedInstallTime(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public sessionCompleteNotify(ILcom/asus/dmlib/vdm/fumo/VdmFumo;)V
    .locals 3
    .parameter "lastError"
    .parameter "fumoInstance"

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionCompleteNotify lastError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setDLResume(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setDLResume(Z)V

    .line 266
    return-void
.end method

.method protected showConfirmDownload()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check priority"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->waitforCall()V

    .line 53
    const-string v0, "critical"

    iget-object v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical update package"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    const v1, 0x7f060016

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 66
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT critical update package"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0, v2}, Lcom/asus/dm/DMService;->prepareDLNotification(Z)V

    .line 65
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showConfirmUpdate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    const-string v0, "critical"

    iget-object v1, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "confirmUpdate critical update package"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    const v1, 0x7f060017

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 140
    :goto_0
    return v0

    .line 132
    :cond_0
    const-string v0, "confirmUpdate not critical update package"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/dm/DMService;

    invoke-static {v0, v2}, Lcom/asus/dm/DMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 136
    iget-object v0, p0, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method
