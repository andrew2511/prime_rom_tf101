.class Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;
.super Ljava/lang/Object;
.source "MyChannelController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadsActionModeCallback"
.end annotation


# instance fields
.field private mode:Landroid/view/ActionMode;

.field private selectedVideo:Lcom/google/android/youtube/core/model/Video;

.field private selectedView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/tablet/MyChannelController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedVideo:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method


# virtual methods
.method public deleteSelectedVideo()V
    .locals 5

    .prologue
    .line 443
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$400(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$1;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    .line 456
    .local v0, deleteUploadCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->maybeFinishUploadsActionMode()V

    .line 457
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$1200(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v2}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$800(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v4}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$900(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback$2;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;Landroid/content/Context;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 464
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeFinishUploadsActionMode()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    .line 440
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$200(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    .line 398
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 399
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 400
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    .line 410
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public selectVideo(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V
    .locals 3
    .parameter "view"
    .parameter "video"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 425
    :cond_0
    iput-object p2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 428
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->mode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v2}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$300(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/app/utils/TimeUtil;->getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 433
    :cond_1
    return-void
.end method
