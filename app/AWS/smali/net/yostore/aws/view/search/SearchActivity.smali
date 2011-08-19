.class public Lnet/yostore/aws/view/search/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/search/SearchActivity$searchTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchActivity"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private cb_doc:Landroid/widget/CheckBox;

.field private cb_mov:Landroid/widget/CheckBox;

.field private cb_mus:Landroid/widget/CheckBox;

.field private cb_pic:Landroid/widget/CheckBox;

.field private ctx:Landroid/content/Context;

.field mPrefs:Landroid/content/SharedPreferences;

.field private rg:Landroid/widget/RadioGroup;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 42
    return-void
.end method

.method private getCheckedResult()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_pic:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_doc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_mus:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_2
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_mov:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lnet/yostore/aws/handler/entity/Search;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Search;-><init>()V

    .line 300
    .local v0, search:Lnet/yostore/aws/handler/entity/Search;
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getCheckedResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setChoice(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getCheckedResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setChoice(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setName(Ljava/lang/String;)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setMark(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f090043

    if-ne v1, v2, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setSrhopt(Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f090044

    if-ne v1, v2, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setSrhopt(Ljava/lang/String;)V

    .line 316
    :cond_1
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 357
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 149
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SearchActivity;->finish()V

    .line 150
    return-void
.end method

.method public dosearchFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 134
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;-><init>(Lnet/yostore/aws/view/search/SearchActivity;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 337
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 341
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 333
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->setContentView(I)V

    .line 65
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 66
    iput-object p0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    .line 69
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_doc:Landroid/widget/CheckBox;

    .line 70
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_mov:Landroid/widget/CheckBox;

    .line 71
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_mus:Landroid/widget/CheckBox;

    .line 72
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->cb_pic:Landroid/widget/CheckBox;

    .line 74
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->tv:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->rg:Landroid/widget/RadioGroup;

    .line 131
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 145
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    const-string v0, "SearchActivity"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 349
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 353
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 361
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 345
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    return-void
.end method
