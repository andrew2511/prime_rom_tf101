.class Lcom/android/videoeditor/widgets/MediaLinearLayout$18;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/HandleView$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;->selectView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mMinimumDurationMs:J

.field private mMovePosition:I

.field private mOriginalBeginMs:J

.field private mOriginalEndMs:J

.field private mOriginalWidth:I

.field private mTransitionsDurationMs:J

.field private mTrimmedView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field final synthetic val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$videoClip:Z


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-boolean p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    iput-object p4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2450
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2450
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->moveDone()V

    return-void
.end method

.method private moveDone()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x1e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2582
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    const/high16 v1, 0x7f08

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    const v1, 0x7f080001

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2584
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2586
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2400(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 2588
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2591
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-static {v0, v1, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 2592
    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalBeginMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalEndMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 2597
    :cond_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v0, :cond_2

    .line 2598
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 2606
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v7

    .line 2607
    .local v7, durationMs:J
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-gtz v1, :cond_3

    move v1, v10

    :goto_1
    iget-boolean v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v10

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2613
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2614
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2616
    .end local v7           #durationMs:J
    :cond_1
    return-void

    .line 2602
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->setMediaItemDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .restart local v7       #durationMs:J
    :cond_3
    move v1, v9

    .line 2607
    goto :goto_1

    :cond_4
    move v2, v9

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x1770

    cmp-long v2, v7, v2

    if-ltz v2, :cond_6

    move v2, v10

    goto :goto_2

    :cond_6
    move v2, v9

    goto :goto_2
.end method


# virtual methods
.method public onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z
    .locals 10
    .parameter "view"
    .parameter "left"
    .parameter "delta"

    .prologue
    .line 2491
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2492
    const/4 v4, 0x0

    .line 2545
    :goto_0
    return v4

    .line 2495
    :cond_0
    add-int v3, p2, p3

    .line 2496
    .local v3, position:I
    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    .line 2498
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v2, v4, v3

    .line 2499
    .local v2, newWidth:I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 2500
    const/4 v4, 0x0

    goto :goto_0

    .line 2504
    :cond_1
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    int-to-long v6, v2

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v8

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-long v8, v8

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 2507
    .local v0, newDurationMs:J
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 2509
    const/4 v4, 0x0

    goto :goto_0

    .line 2510
    :cond_2
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 2512
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2514
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2517
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v3, v4, v2

    .line 2527
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 2528
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2518
    :cond_4
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 2519
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v0

    .line 2520
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2523
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_1

    .line 2531
    :cond_5
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    .line 2535
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v4, v5, v6}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2537
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1902(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)Z

    .line 2538
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    const/high16 v5, 0x7f08

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v6

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalWidth:I

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2540
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    const v5, 0x7f080001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2541
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2543
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2545
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2535
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V
    .locals 6
    .parameter "view"

    .prologue
    const-wide/16 v4, 0x0

    .line 2463
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2464
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v2

    :goto_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    .line 2468
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalBeginMs:J

    .line 2469
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalEndMs:J

    .line 2470
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalWidth:I

    .line 2471
    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    .line 2472
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 2473
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    .line 2475
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 2476
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v0, :cond_2

    .line 2477
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2483
    :goto_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    const v1, 0x7f080001

    invoke-virtual {p1}, Lcom/android/videoeditor/widgets/HandleView;->getRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2484
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$scrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2485
    return-void

    :cond_0
    move-wide v0, v4

    .line 2464
    goto :goto_0

    :cond_1
    move-wide v2, v4

    goto :goto_1

    .line 2480
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    goto :goto_2
.end method

.method public onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
    .locals 7
    .parameter "view"
    .parameter "left"
    .parameter "delta"

    .prologue
    .line 2552
    add-int v2, p2, p3

    .line 2553
    .local v2, position:I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    if-eq v2, v0, :cond_1

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18$1;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;ILcom/android/videoeditor/widgets/HandleView;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2575
    :goto_0
    return-void

    .line 2573
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->moveDone()V

    goto :goto_0
.end method
