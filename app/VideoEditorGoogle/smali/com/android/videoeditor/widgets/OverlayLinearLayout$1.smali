.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mScrollMediaItemStartTime:J

.field private mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

.field private mScrollTotalDurationMs:J

.field private mScrolled:Z

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "view"
    .parameter "e"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    .end local p0
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 237
    .restart local p0
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/OverlayView;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$000(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    new-instance v2, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-direct {v2, v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v9, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 288
    .local v0, beginPos:I
    int-to-long v3, v0

    iget-wide v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollTotalDurationMs:J

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-long v5, v5

    div-long v1, v3, v5

    .line 290
    .local v1, startTimeMs:J
    iget-wide v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 291
    iget-wide v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    .line 298
    :cond_0
    :goto_0
    iput-boolean v9, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 299
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    sub-long v4, v1, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/videoeditor/service/MovieOverlay;->setAppStartTime(J)V

    .line 301
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 302
    return v9

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    iget-object v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 294
    iget-wide v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v5

    sub-long v1, v3, v5

    goto :goto_0
.end method

.method public onMoveBegin(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 279
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 273
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    .line 274
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    .line 276
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollTotalDurationMs:J

    .line 277
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 278
    iput-boolean v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMoveEnd(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 310
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 311
    iput-boolean v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 313
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v3}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    move v1, v7

    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v7

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 318
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/videoeditor/service/ApiService;->setOverlayStartTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 322
    :cond_0
    return-void

    :cond_1
    move v1, v6

    .line 313
    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "area"
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 194
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v3, 0x0

    .line 226
    .end local p0
    .end local p1
    :goto_0
    return v3

    .line 198
    .restart local p0
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/OverlayView;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .end local p0
    .end local p1
    :cond_1
    :goto_1
    move v3, v5

    .line 226
    goto :goto_0

    .line 200
    .restart local p0
    .restart local p1
    :pswitch_0
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$500(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    .line 201
    check-cast p1, Lcom/android/videoeditor/widgets/OverlayView;

    .end local p1
    invoke-virtual {p1, v5}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_1

    .line 206
    .restart local p1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 207
    .local v2, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/videoeditor/OverlaysActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "media_item_id"

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 215
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local p0
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v3, p1, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
