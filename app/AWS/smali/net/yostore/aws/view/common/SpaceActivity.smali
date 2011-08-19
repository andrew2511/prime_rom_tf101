.class public Lnet/yostore/aws/view/common/SpaceActivity;
.super Landroid/app/Activity;
.source "SpaceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 92
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SpaceActivity;->finish()V

    .line 93
    return-void
.end method

.method public goHomeFunction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 96
    sget-object v0, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 106
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 107
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 111
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 112
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 100
    const-string v0, "SpaceActivity"

    const-string v1, ">>  My Sync Folder is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 102
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SpaceActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SpaceActivity;->setContentView(I)V

    .line 88
    sput-object p0, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 54
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/SpaceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 55
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 33
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/SpaceActivity;->backFunction(Landroid/view/View;)V

    .line 34
    const/4 v0, 0x0

    goto :goto_0

    .line 30
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
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 64
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 78
    :goto_0
    return v0

    .line 67
    :sswitch_0
    sget-object v1, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    :sswitch_1
    sget-object v1, Lnet/yostore/aws/view/common/SpaceActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_0
        0x7f09006c -> :sswitch_1
    .end sparse-switch
.end method
