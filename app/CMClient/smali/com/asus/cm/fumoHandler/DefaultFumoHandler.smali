.class public Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
.super Ljava/lang/Object;
.source "DefaultFumoHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/fumo/FumoHandler;


# instance fields
.field protected mDLTotalSize:I

.field protected mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

.field protected mEstimatedInstallTime:I

.field protected mPackagePriority:Ljava/lang/String;

.field public mPowerOffProgressDialog:Landroid/app/ProgressDialog;

.field protected mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field protected mService:Lcom/asus/cm/CMService;


# direct methods
.method public constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 1
    .parameter "pService"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    .line 42
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 43
    return-void
.end method

.method public static getFumoHandler(Landroid/content/Context;)Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 268
    .local v5, ret:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.asus.cm.fumoHandler."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/asus/cm/CMConfig;->getFumoHandlerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 269
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/asus/cm/CMService;

    aput-object v7, v4, v6

    .line 270
    .local v4, params:[Ljava/lang/Class;
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 271
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    .line 272
    .local v3, paramObjs:[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ret:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    check-cast v5, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .restart local v5       #ret:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    return-object v5

    .line 273
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #paramObjs:[Ljava/lang/Object;
    .end local v4           #params:[Ljava/lang/Class;
    .end local v5           #ret:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 274
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public confirmDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z
    .locals 4
    .parameter "pDownDescriptor"
    .parameter "pVdmFumo"

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "===== confirmDownload() of DMService.. ====="

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-wide v0, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "no space for download try to delete update file"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 77
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->clearCache()V

    .line 79
    iget-wide v0, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "no space for download abort."

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 85
    const-string v0, "arg1.triggerReportSession(VdmFumoUpdateResult.ResultCode.OUT_OF_MEMORY_FOR_DOWNLOAD);"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save state"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/asus/cm/RBDownloadDescriptor;

    iget-wide v1, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    iget-object v3, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->field:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/cm/RBDownloadDescriptor;-><init>(J[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    .line 93
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMService;->setDLDescriptor(Lcom/asus/cm/RBDownloadDescriptor;)V

    .line 97
    iget-wide v0, p1, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    long-to-int v0, v0

    iput v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 98
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    invoke-virtual {v0}, Lcom/asus/cm/RBDownloadDescriptor;->getPriority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    invoke-virtual {v0}, Lcom/asus/cm/RBDownloadDescriptor;->getEstimatedInstallTime()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    .line 102
    invoke-virtual {p0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->saveDescriptorToReg()V

    .line 103
    invoke-virtual {p0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->showConfirmDownload()Z

    move-result v0

    goto :goto_0
.end method

.method public confirmUpdate(Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z
    .locals 5
    .parameter "pVdmFumo"

    .prologue
    const/4 v4, 0x0

    .line 127
    const-string v2, "===== confirmUpdate ====="

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getUpdatePkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getUpdatePkgPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 134
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const-string v2, "update file not exist"

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    .line 158
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return v2

    .line 139
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

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 140
    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 143
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

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 147
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_1
    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMCRegistryManager;->setHasUpdateFile(Z)V

    .line 151
    invoke-virtual {p0, v4}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 152
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 153
    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget v3, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMCRegistryManager;->setDLTotalSize(I)V

    .line 156
    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v2}, Lcom/asus/cm/CMService;->cancelProgressNotification()V

    .line 158
    invoke-virtual {p0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->showConfirmUpdate()Z

    move-result v2

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 162
    new-instance v6, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;

    invoke-direct {v6, p0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;-><init>(Lcom/asus/cm/fumoHandler/DefaultFumoHandler;)V

    invoke-virtual {v6}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->start()V

    .line 182
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v7, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v6, v7}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 183
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/cm/CMCRegistryManager;->clearPostponeTimes()V

    .line 184
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/asus/cm/CMCRegistryManager;->setHasUpdateFile(Z)V

    .line 185
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v6}, Lcom/asus/cm/CMService;->cancelProgressNotification()V

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== executeUpdate ===== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v4, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 190
    .local v4, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const/4 v5, 0x0

    .line 191
    .local v5, updatePath:Ljava/lang/String;
    const/4 v1, 0x1

    .line 192
    .local v1, bUpdate:Z
    const/4 v0, 0x0

    .line 195
    .local v0, bSyncUpdate:Z
    :try_start_0
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getUpdatePkgPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/asus/cm/CMService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 196
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 203
    .end local v3           #f:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->waitforCall()V

    .line 205
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v6, v5}, Lcom/asus/cm/CMService;->update_Process(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v4

    .line 208
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_4

    const-string v7, "NULL"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v6, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-ne v4, v6, :cond_2

    .line 210
    :cond_1
    const-string v6, "CLIENT_ERROR || FW_UP_CORRUPT"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v6}, Lcom/asus/cm/CMService;->showFirmwareUpdateFailAlertDialog()V

    .line 213
    const/4 v0, 0x1

    .line 215
    :cond_2
    sget-object v6, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-eq v4, v6, :cond_3

    .line 216
    iget-object v6, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->cancel()V

    .line 218
    :cond_3
    new-instance v6, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;

    invoke-direct {v6, v4, v0}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;-><init>(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;Z)V

    return-object v6

    .line 198
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 200
    .local v2, e:Lcom/asus/dmlib/vdm/VdmException;
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    .end local v2           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_4
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public getDLResume()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getDLResume()Z

    move-result v0

    return v0
.end method

.method public getDLTotalSize()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    return v0
.end method

.method public getEstimatedInstallTime()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getEstimatedInstallTime()I

    move-result v0

    return v0
.end method

.method public readDLTotalSizefromReg()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getDLTotalSize()I

    move-result v0

    iput v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    .line 238
    return-void
.end method

.method public readPackagePriorityfromReg()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getPackagePriority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public saveDescriptorToReg()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mDLTotalSize:I

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setDLTotalSize(I)V

    .line 227
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setPackagePriority(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    if-lez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================  3. mEstimatedInstallTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mEstimatedInstallTime:I

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setEstimatedInstallTime(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public sessionCompleteNotify(ILcom/asus/dmlib/vdm/fumo/VdmFumo;)V
    .locals 3
    .parameter "lastError"
    .parameter "fumoInstance"

    .prologue
    .line 222
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

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setDLResume(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0, p1}, Lcom/asus/cm/CMCRegistryManager;->setDLResume(Z)V

    .line 254
    return-void
.end method

.method protected showConfirmDownload()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check priority"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->waitforCall()V

    .line 50
    const-string v0, "critical"

    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical update package"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    const v1, 0x7f06001e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 63
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT critical update package"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0, v2}, Lcom/asus/cm/CMService;->prepareDLNotification(Z)V

    .line 62
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v1, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showConfirmUpdate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    const-string v0, "critical"

    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPackagePriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "confirmUpdate critical update package"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    const v1, 0x7f06001f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 121
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "confirmUpdate not critical update package"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-static {v0, v2}, Lcom/asus/cm/CMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 117
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v1, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method
