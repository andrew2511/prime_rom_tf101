.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/HandleView$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;->selectView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mMinimumDurationMs:J

.field private mMovePosition:I

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

.field final synthetic val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

.field final synthetic val$overlayView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/view/View;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlayView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    return v0
.end method


# virtual methods
.method public onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z
    .locals 12
    .parameter "view"
    .parameter "left"
    .parameter "delta"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 931
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v11

    .line 960
    :goto_0
    return v4

    .line 935
    :cond_0
    add-int v3, p2, p3

    .line 937
    .local v3, position:I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlayView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v2, v3, v4

    .line 940
    .local v2, newWidth:I
    int-to-long v4, v2

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    div-long v0, v4, v6

    .line 943
    .local v0, newDurationMs:J
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 944
    iget-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    .line 950
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    move v5, v10

    :goto_2
    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    move v6, v10

    :goto_3
    invoke-virtual {v4, v5, v6}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 953
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4, v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;->setAppDuration(J)V

    .line 955
    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    .line 956
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4, v10}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$802(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Z)Z

    .line 958
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    move v4, v10

    .line 960
    goto :goto_0

    .line 945
    :cond_2
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 947
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    goto :goto_1

    :cond_3
    move v5, v11

    .line 950
    goto :goto_2

    :cond_4
    move v6, v11

    goto :goto_3
.end method

.method public onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 924
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    .line 925
    return-void
.end method

.method public onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
    .locals 7
    .parameter "view"
    .parameter "left"
    .parameter "delta"

    .prologue
    .line 967
    add-int v2, p2, p3

    .line 968
    .local v2, position:I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    if-eq v2, v0, :cond_1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$900(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7$1;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;ILcom/android/videoeditor/widgets/HandleView;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    :goto_0
    return-void

    .line 988
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->scaleDone()V

    goto :goto_0
.end method

.method public scaleDone()V
    .locals 6

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/videoeditor/service/ApiService;->setOverlayDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 998
    return-void
.end method
