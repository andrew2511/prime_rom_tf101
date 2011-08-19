.class public Lnet/yostore/aws/view/common/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 162
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method public attributeBtFunction(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/common/AttributeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 82
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/HomeActivity;->finish()V

    .line 83
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 146
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 150
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 142
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sput-object p0, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 88
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 89
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/HomeActivity;->backFunction(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 98
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 112
    :goto_0
    return v0

    .line 101
    :sswitch_0
    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :sswitch_1
    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_0
        0x7f09006c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/common/HomeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 46
    sget-boolean v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/common/OOBEActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 50
    :cond_0
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/HomeActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 154
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 136
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/HomeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 137
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/HomeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method public spaceBtFunction(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/common/SpaceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 124
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/HomeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 125
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    sget-object v1, Lnet/yostore/aws/view/common/HomeActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/HomeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method
