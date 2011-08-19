.class public Lnet/yostore/aws/view/common/AttributeActivity;
.super Landroid/app/Activity;
.source "AttributeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttributeActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 115
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 116
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 97
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/AttributeActivity;->finish()V

    .line 98
    return-void
.end method

.method public goHomeFunction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    sget-object v0, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 125
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 129
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 121
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/AttributeActivity;->setContentView(I)V

    .line 92
    sput-object p0, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 58
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/AttributeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 59
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/AttributeActivity;->backFunction(Landroid/view/View;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0

    .line 34
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
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 68
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 82
    :goto_0
    return v0

    .line 71
    :sswitch_0
    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :sswitch_1
    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_0
        0x7f09006c -> :sswitch_1
    .end sparse-switch
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 105
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 106
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 110
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 111
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/AttributeActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 137
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 133
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    sget-object v1, Lnet/yostore/aws/view/common/AttributeActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    return-void
.end method
