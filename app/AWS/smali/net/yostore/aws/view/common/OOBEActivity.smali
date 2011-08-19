.class public Lnet/yostore/aws/view/common/OOBEActivity;
.super Landroid/app/Activity;
.source "OOBEActivity.java"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 97
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 98
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 99
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 51
    sput-boolean v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 53
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/OOBEActivity;->finish()V

    .line 54
    return-void
.end method

.method public createNew(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 57
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/OOBEActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 73
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 74
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 75
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 79
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 81
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 67
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 68
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 69
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iput-object p0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    .line 31
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/OOBEActivity;->setContentView(I)V

    .line 33
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/OOBEActivity;->backFunction(Landroid/view/View;)V

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 85
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 86
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 87
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 91
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 62
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 64
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 103
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 105
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/OOBEActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method
