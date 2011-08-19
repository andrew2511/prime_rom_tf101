.class public Lcom/google/android/music/TopBar$ActionBarController;
.super Ljava/lang/Object;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBarController"
.end annotation


# instance fields
.field private mHomeIconReturnsToTop:Z

.field private mMenuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;

.field private mSeperatorLineVisible:Z

.field private final mViewVisibilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/music/TopBar;


# direct methods
.method public constructor <init>(Lcom/google/android/music/TopBar;)V
    .locals 5
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mMenuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;

    .line 457
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    .line 460
    invoke-virtual {p1}, Lcom/google/android/music/TopBar;->getChildCount()I

    move-result v1

    .line 461
    .local v1, childCount:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    .line 462
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 463
    invoke-virtual {p1, v2}, Lcom/google/android/music/TopBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, child:Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/music/TopBar;->access$500(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v3

    if-eq v0, v3, :cond_0

    invoke-static {p1}, Lcom/google/android/music/TopBar;->access$600(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v3

    if-eq v0, v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-static {p1}, Lcom/google/android/music/TopBar;->access$700(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 470
    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/music/TopBar;->access$700(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/music/TopBar;->access$800(Lcom/google/android/music/TopBar;)Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_2
    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/music/TopBar;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->mHomeIconReturnsToTop:Z

    .line 475
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/TopBar;Lcom/google/android/music/TopBar$ActionBarController;)V
    .locals 2
    .parameter
    .parameter "template"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mMenuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    .line 478
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    .line 479
    iget-boolean v0, p2, Lcom/google/android/music/TopBar$ActionBarController;->mHomeIconReturnsToTop:Z

    iput-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mHomeIconReturnsToTop:Z

    .line 480
    iget-boolean v0, p2, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    iput-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    .line 481
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TopBar$ActionBarController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mHomeIconReturnsToTop:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/TopBar$ActionBarController;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 452
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private configureBackground()V
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-virtual {v1}, Lcom/google/android/music/TopBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0f0099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, topLineBar:Landroid/view/View;
    iget-boolean v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1000(Lcom/google/android/music/TopBar;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public focusInSearchField()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 589
    return-void
.end method

.method public getMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mMenuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;

    return-object v0
.end method

.method public hideAllButTitle()V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/android/music/TopBar$ActionBarController;->hideSearchIcon()V

    .line 500
    invoke-virtual {p0}, Lcom/google/android/music/TopBar$ActionBarController;->hideMenuIcon()V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/music/TopBar$ActionBarController;->hideDisplayModes()V

    .line 502
    return-void
.end method

.method public hideDisplayModes()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    const v1, 0x7f0f0087

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 585
    return-void
.end method

.method public hideMenuIcon()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1500(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 577
    return-void
.end method

.method public hideNewPlaylistButton()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1100(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 540
    return-void
.end method

.method public hideSearchField()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v3}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v3}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 647
    :goto_0
    return-void

    .line 630
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 633
    .local v0, searchBoxAnim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 635
    new-instance v1, Lcom/google/android/music/TopBar$ActionBarController$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/TopBar$ActionBarController$2;-><init>(Lcom/google/android/music/TopBar$ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 645
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 646
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1900(Lcom/google/android/music/TopBar;)V

    goto :goto_0
.end method

.method public hideSearchIcon()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1200(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 553
    return-void
.end method

.method public hideSeperatorLine()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    .line 517
    invoke-direct {p0}, Lcom/google/android/music/TopBar$ActionBarController;->configureBackground()V

    .line 518
    return-void
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$900(Lcom/google/android/music/TopBar;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 496
    return-void
.end method

.method public hideToggleButton()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1400(Lcom/google/android/music/TopBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1400(Lcom/google/android/music/TopBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 573
    :cond_0
    return-void
.end method

.method public hideTopBar()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 548
    invoke-virtual {p0}, Lcom/google/android/music/TopBar$ActionBarController;->hideSeperatorLine()V

    .line 549
    return-void
.end method

.method public restoreVisibilities()V
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Lcom/google/android/music/TopBar$ActionBarController;->mViewVisibilities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 671
    .local v1, visibility:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 673
    .end local v1           #visibility:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/TopBar$ActionBarController;->configureBackground()V

    .line 674
    return-void
.end method

.method public setHomeIconReturnsToTop(Z)V
    .locals 0
    .parameter "returnsToTop"

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/google/android/music/TopBar$ActionBarController;->mHomeIconReturnsToTop:Z

    .line 492
    return-void
.end method

.method public setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V
    .locals 0
    .parameter "menuCustomizer"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/music/TopBar$ActionBarController;->mMenuCustomizer:Lcom/google/android/music/TopBar$MenuCustomizer;

    .line 485
    return-void
.end method

.method public setSearchFieldText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 655
    invoke-static {}, Lcom/google/android/music/TopBar;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TopBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSearchFieldText(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 667
    return-void
.end method

.method public showDisplayModes()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    const v1, 0x7f0f0087

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 581
    return-void
.end method

.method public showNewPlaylistButton()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1100(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 536
    return-void
.end method

.method public showSearchField()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 592
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 621
    :goto_0
    return-void

    .line 598
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    move v5, v3

    move v6, v4

    move v7, v3

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 601
    .local v0, searchBoxAnim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 602
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 603
    new-instance v1, Lcom/google/android/music/TopBar$ActionBarController$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/TopBar$ActionBarController$1;-><init>(Lcom/google/android/music/TopBar$ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 620
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showSearchIcon()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1200(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 557
    return-void
.end method

.method public showSeperatorLine()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->mSeperatorLineVisible:Z

    .line 522
    invoke-direct {p0}, Lcom/google/android/music/TopBar$ActionBarController;->configureBackground()V

    .line 523
    return-void
.end method

.method public showToggleButton()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1400(Lcom/google/android/music/TopBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1400(Lcom/google/android/music/TopBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 567
    :cond_0
    return-void
.end method

.method public showTopBar()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 544
    return-void
.end method

.method public showTrackListingIcon()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1300(Lcom/google/android/music/TopBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setVisibility(Landroid/view/View;I)V

    .line 561
    return-void
.end method
