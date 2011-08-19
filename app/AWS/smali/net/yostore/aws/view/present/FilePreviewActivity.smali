.class public Lnet/yostore/aws/view/present/FilePreviewActivity;
.super Landroid/app/Activity;
.source "FilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilePreviewActivity"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field imgPreview:Landroid/widget/ImageView;

.field loadingPreview:Landroid/widget/TextView;

.field mPrefs:Landroid/content/SharedPreferences;

.field mp:Landroid/media/MediaPlayer;

.field musicPlayerIcon:Landroid/widget/ImageView;

.field musicUrl:Ljava/lang/String;

.field noPreview:Landroid/widget/ImageView;

.field playIcon:I

.field previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

.field preview_container:Landroid/widget/LinearLayout;

.field stopIcon:I

.field txtPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 58
    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    .line 64
    const v0, 0x7f020040

    iput v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->playIcon:I

    .line 65
    const v0, 0x7f020041

    iput v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->stopIcon:I

    .line 49
    return-void
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    .line 224
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/FilePreviewActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/FilePreviewActivity$2;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 231
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/FilePreviewActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/FilePreviewActivity$3;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 251
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/FilePreviewActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/FilePreviewActivity$4;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 494
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 436
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->finish()V

    .line 437
    return-void
.end method

.method public downloadNOpenFunction(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 417
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v6, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v6, v6, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    iget-object v8, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v8, v8, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;JLjava/lang/String;JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    :cond_0
    return-void
.end method

.method public downloadToFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 423
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    if-eqz v1, :cond_0

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fi.display"

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "fi.id"

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 427
    const-string v1, "fi.si"

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 428
    const-string v1, "fi.fileUploadTime"

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 433
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 474
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 475
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 478
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 479
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 470
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    return-void
.end method

.method public musicPlayBack(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 447
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicStop(Landroid/view/View;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 451
    invoke-direct {p0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->initPlayer()V

    .line 452
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    iget v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->stopIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 455
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 456
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0

    .line 462
    :catch_1
    move-exception v0

    goto :goto_0

    .line 460
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public musicStop(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 440
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    iget v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->playIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 444
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->setContentView(I)V

    .line 73
    iput-object p0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    .line 74
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->preview_container:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->noPreview:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->imgPreview:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->loadingPreview:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->txtPreview:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 211
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    iget v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->stopIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 214
    iput-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->mp:Landroid/media/MediaPlayer;

    .line 216
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;->cancel(Z)Z

    .line 218
    iput-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

    .line 220
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 88
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/FilePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 92
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 93
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/FilePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, p0, v2, v3, v4}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

    .line 203
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->previewTask:Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    :cond_2
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 486
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 490
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 498
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    return-void
.end method

.method public shareFunction(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 411
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lnet/yostore/aws/ansytask/GetShareCodeTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    :cond_0
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 482
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 483
    return-void
.end method
