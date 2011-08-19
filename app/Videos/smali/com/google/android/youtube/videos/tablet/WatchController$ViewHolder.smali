.class Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;
.super Ljava/lang/Object;
.source "WatchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/tablet/WatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# static fields
.field private static final LANDSCAPE_PLAYER_RELATIVE_WIDTH:F = 0.5f

.field private static final SINGLE_SPACING:I = 0x10


# instance fields
.field public final container:Landroid/view/View;

.field private containerPadding:[I

.field private final density:F

.field public final infoLayout:Landroid/view/View;

.field public final infoStatus:Landroid/view/View;

.field public final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field public final playerLayout:Landroid/widget/LinearLayout;

.field public final relatedLayout:Landroid/view/View;

.field public final root:Landroid/widget/LinearLayout;

.field public final suggestionsGrid:Lcom/google/android/youtube/core/ui/PagedGridView;

.field final synthetic this$0:Lcom/google/android/youtube/videos/tablet/WatchController;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/tablet/WatchController;Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "density"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    .line 518
    const v0, 0x7f08004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 519
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    .line 520
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    .line 523
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->suggestionsGrid:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 526
    iput p3, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->density:F

    .line 527
    return-void
.end method

.method private px(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 632
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public layoutForFullscreen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 606
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    if-nez v1, :cond_0

    .line 608
    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 614
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 616
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 617
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 619
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 620
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 621
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 623
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 624
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 625
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 627
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 629
    return-void
.end method

.method public layoutForOrientation(Z)V
    .locals 13
    .parameter "landscape"

    .prologue
    .line 530
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 531
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    if-eqz v7, :cond_0

    .line 533
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    iget-object v11, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 535
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->containerPadding:[I

    .line 538
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 539
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-static {v7}, Lcom/google/android/youtube/videos/tablet/WatchController;->access$400(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 541
    if-eqz p1, :cond_2

    .line 542
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-static {v7}, Lcom/google/android/youtube/videos/tablet/WatchController;->access$500(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 543
    .local v5, sideMargin:I
    const/16 v4, 0x10

    .line 545
    .local v4, playerRightMargin:I
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 548
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 549
    .local v6, widthPixels:I
    const/high16 v7, 0x3f00

    int-to-float v8, v6

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v5

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 551
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 552
    const/4 v7, 0x0

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 554
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 555
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 556
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 557
    const/4 v7, 0x0

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 559
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 561
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 562
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 563
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/16 v10, 0x10

    invoke-direct {p0, v10}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    sub-int v10, v5, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 564
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->suggestionsGrid:Lcom/google/android/youtube/core/ui/PagedGridView;

    const/16 v8, 0x16

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/ui/PagedGridView;->setHorizontalSpacing(I)V

    .line 593
    .end local v4           #playerRightMargin:I
    .end local v5           #sideMargin:I
    .end local v6           #widthPixels:I
    :goto_1
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->suggestionsGrid:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-static {v8}, Lcom/google/android/youtube/videos/tablet/WatchController;->access$600(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 597
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 598
    .local v3, playerParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x1

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 599
    const/4 v7, -0x2

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 601
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 603
    return-void

    .line 530
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #playerParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 566
    .restart local v0       #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 572
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x3f10

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 576
    .local v2, playerHeightPx:I
    const/16 v7, 0x60

    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 577
    const/high16 v7, 0x420c

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 578
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 579
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 580
    const/4 v7, 0x0

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 581
    const/high16 v7, 0x4282

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 583
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-direct {p0, v9}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 584
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 585
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 587
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    const/16 v8, 0x20

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-direct {p0, v10}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 588
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/16 v8, 0x20

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-direct {p0, v10}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 589
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/16 v8, 0x20

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    const/16 v9, 0x10

    invoke-direct {p0, v9}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/16 v10, 0x20

    invoke-direct {p0, v10}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 591
    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->suggestionsGrid:Lcom/google/android/youtube/core/ui/PagedGridView;

    const/16 v8, 0x2f

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/ui/PagedGridView;->setHorizontalSpacing(I)V

    goto/16 :goto_1
.end method
