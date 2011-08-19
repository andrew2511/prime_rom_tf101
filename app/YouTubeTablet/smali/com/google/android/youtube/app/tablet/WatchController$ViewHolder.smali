.class Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;
.super Ljava/lang/Object;
.source "WatchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/WatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public final container:Landroid/view/View;

.field private containerPadding:[I

.field private final density:F

.field public final infoLayout:Landroid/view/View;

.field public final infoStatus:Landroid/view/View;

.field public final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field public final playerLayout:Landroid/widget/LinearLayout;

.field public final related:Lcom/google/android/youtube/core/ui/PagedGridView;

.field public final relatedLayout:Landroid/view/View;

.field public final root:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/WatchController;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/tablet/WatchController;Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "density"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    .line 601
    const v0, 0x7f080057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 602
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    .line 603
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    .line 606
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    .line 607
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->related:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 609
    iput p3, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->density:F

    .line 610
    return-void
.end method

.method private px(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 715
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->density:F

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

    .line 689
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    if-nez v1, :cond_0

    .line 691
    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 697
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 699
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 700
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 702
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 704
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 706
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 707
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 708
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 710
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 712
    return-void
.end method

.method public layoutForOrientation(Z)V
    .locals 14
    .parameter "landscape"

    .prologue
    .line 613
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->root:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 614
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    if-eqz v8, :cond_0

    .line 616
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->container:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    iget-object v12, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 618
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->containerPadding:[I

    .line 621
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 622
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v8}, Lcom/google/android/youtube/app/tablet/WatchController;->access$400(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 624
    if-eqz p1, :cond_2

    .line 625
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v8}, Lcom/google/android/youtube/app/tablet/WatchController;->access$500(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 626
    .local v7, sideMargin:I
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v8}, Lcom/google/android/youtube/app/tablet/WatchController;->access$600(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 628
    .local v6, playerTopMargin:I
    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v3

    .line 629
    .local v3, playerLeftMargin:I
    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v5

    .line 631
    .local v5, playerRightMargin:I
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 633
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f00

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v7

    add-int/2addr v8, v3

    add-int/2addr v8, v5

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 635
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 636
    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 638
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 639
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 640
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 641
    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 643
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v6, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 645
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 646
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 647
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 648
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 649
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v11

    sub-int v11, v7, v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 677
    .end local v3           #playerLeftMargin:I
    .end local v5           #playerRightMargin:I
    .end local v6           #playerTopMargin:I
    .end local v7           #sideMargin:I
    :goto_1
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->related:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v9, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v9}, Lcom/google/android/youtube/app/tablet/WatchController;->access$700(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 680
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 681
    .local v4, playerParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 682
    const/4 v8, -0x2

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 684
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 686
    return-void

    .line 613
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #playerParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 651
    .restart local v0       #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 653
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 657
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x3f10

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 661
    .local v2, playerHeightPx:I
    const/16 v8, 0x60

    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v8

    add-int/2addr v8, v2

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 662
    const/high16 v8, 0x420c

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 663
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 664
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x1

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 665
    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 666
    const/high16 v8, 0x4282

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 668
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->playerLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 669
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 670
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 672
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoStatus:Landroid/view/View;

    const/16 v9, 0x20

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-direct {p0, v11}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 673
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->infoLayout:Landroid/view/View;

    const/16 v9, 0x20

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-direct {p0, v11}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 674
    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->relatedLayout:Landroid/view/View;

    const/16 v9, 0x20

    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v9

    const/16 v10, 0x10

    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v10

    const/16 v11, 0x20

    invoke-direct {p0, v11}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->px(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1
.end method
