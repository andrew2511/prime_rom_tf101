.class public Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Navigator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1994
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1994
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    return-void
.end method

.method private endOfPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2623
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->access$4600(Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;)V

    .line 2624
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->access$4700(Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;)V

    .line 2626
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 2628
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2802(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 2632
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2902(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling the next page rendering thread ! @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->getNextPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2634
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->getNextPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/util/SingleThreadManager;->scheduleForLaunch(Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;)V

    .line 2638
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->enablePrelayouting()V

    .line 2640
    :cond_0
    return-void
.end method


# virtual methods
.method public back()Z
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2475
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->back()V
    :try_end_0
    .catch Lcom/mobipocket/common/library/historizer/RestoreStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    :goto_0
    const/4 v0, 0x1

    .line 2483
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method cancelPrelayouting()V
    .locals 2

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    if-eqz v0, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->cancelPrelayouting()V

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->stop()V

    .line 2604
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2606
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->stop()V

    .line 2607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    if-eqz v0, :cond_1

    .line 2610
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->enablePrelayouting()V

    .line 2615
    :cond_1
    return-void

    .line 2607
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cleanPreviousPageHistory()V
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/NavigationCache;->empty()V

    .line 2005
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/NavigationCache;->empty()V

    .line 2006
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->empty()V

    .line 2007
    return-void
.end method

.method public firstPage()V
    .locals 2

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2016
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->firstPage(Z)V

    .line 2017
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2018
    return-void
.end method

.method public getGuideItems()[Lcom/mobipocket/common/library/reader/GuideItem;
    .locals 3

    .prologue
    .line 2103
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mobipocket/common/library/reader/GuideItem;

    .line 2104
    .local v1, rep:[Lcom/mobipocket/common/library/reader/GuideItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2106
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/GuideItem;

    aput-object v2, v1, v0

    .line 2104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2108
    :cond_0
    return-object v1
.end method

.method public gotoCoverPage()Z
    .locals 2

    .prologue
    .line 2071
    const/4 v0, 0x0

    .line 2072
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->isCoverInBookFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->addHistoryState()V

    .line 2075
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2076
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z

    move-result v0

    .line 2077
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2079
    :cond_0
    return v0
.end method

.method public gotoGuideItem(Lcom/mobipocket/common/library/reader/GuideItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2123
    const/4 v0, 0x0

    .line 2124
    if-eqz p1, :cond_0

    .line 2126
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/GuideItem;->isIndexSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2128
    const/4 v0, 0x1

    .line 2130
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2145
    :cond_0
    :goto_0
    return v0

    .line 2141
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$4100(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/GuideItem;)Z

    move-result v0

    .line 2142
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    goto :goto_0
.end method

.method public gotoNextSection()V
    .locals 3

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    if-nez v0, :cond_1

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getNextSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 2504
    if-eqz v0, :cond_0

    .line 2505
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openTOCSection(Lcom/mobipocket/common/library/reader/TOCItem;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2506
    :catch_0
    move-exception v0

    .line 2507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open the TOCSection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2508
    :catch_1
    move-exception v0

    .line 2509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open the next Section:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public gotoPage(I)V
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 2349
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2351
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 2353
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->positionFromPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v4, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 2354
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2355
    return-void
.end method

.method public gotoPosition(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2368
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_0

    .line 2370
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2372
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0, p1, v1, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 2373
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2374
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2378
    :cond_0
    return-void
.end method

.method public gotoPreviousSection()V
    .locals 3

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    if-nez v0, :cond_1

    .line 2540
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPreviousSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 2532
    if-eqz v0, :cond_0

    .line 2533
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->openTOCSection(Lcom/mobipocket/common/library/reader/TOCItem;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open the TOCSection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2536
    :catch_1
    move-exception v0

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open the next Section:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public gotoStartReading()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2052
    const/4 v0, 0x1

    .line 2053
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2054
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoStartReading(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2056
    const/4 v0, 0x0

    .line 2057
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->firstPage(Z)V

    .line 2059
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2060
    return v0
.end method

.method public gotoTOC()Z
    .locals 2

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2029
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3700(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z

    move-result v0

    .line 2030
    .local v0, result:Z
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2031
    return v0
.end method

.method public gotoUserLocation(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x64

    .line 2390
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2392
    if-ge p1, v2, :cond_0

    move v0, v2

    .line 2396
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v3, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 2397
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2398
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public hasCoverView()Z
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isCoverPageAvailable()Z

    move-result v0

    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3800(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z

    move-result v0

    return v0
.end method

.method public isBackPossible()Z
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->hasBack()Z

    move-result v0

    return v0
.end method

.method public isNextLinePossible()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2454
    const/4 v0, 0x0

    .line 2455
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    .line 2456
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getNumberOfLineInScreen()I

    move-result v1

    if-le v1, v2, :cond_1

    move v0, v2

    .line 2457
    :goto_0
    if-nez v0, :cond_0

    .line 2458
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isNextPagePossible()Z

    move-result v0

    .line 2461
    :cond_0
    return v0

    .line 2456
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isNextPagePossible()Z
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isNextPagePossible()Z

    move-result v0

    return v0
.end method

.method public isNextSectionPossible()Z
    .locals 4

    .prologue
    .line 2574
    const/4 v0, 0x0

    .line 2575
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    if-nez v1, :cond_1

    .line 2589
    :cond_0
    :goto_0
    return v0

    .line 2582
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getNextSection()Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2583
    if-eqz v1, :cond_0

    .line 2584
    const/4 v0, 0x1

    goto :goto_0

    .line 2585
    :catch_0
    move-exception v1

    .line 2586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open the next Section:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isPreviousPagePossible()Z
    .locals 2

    .prologue
    .line 2432
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isFirstPage()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 2440
    .local v0, previousPagePossible:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->isCoverInBookFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isCoverPage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isCoverPageAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2441
    const/4 v0, 0x1

    .line 2443
    :cond_0
    return v0

    .line 2432
    .end local v0           #previousPagePossible:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isPreviousSectionPossible()Z
    .locals 4

    .prologue
    .line 2549
    const/4 v0, 0x0

    .line 2550
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    if-nez v1, :cond_1

    .line 2564
    :cond_0
    :goto_0
    return v0

    .line 2557
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPreviousSection()Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2558
    if-eqz v1, :cond_0

    .line 2559
    const/4 v0, 0x1

    goto :goto_0

    .line 2560
    :catch_0
    move-exception v1

    .line 2561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open the next Section:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextLine()V
    .locals 5

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 2257
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 2258
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v1

    .line 2259
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->knowsTagAndAttributeStackAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2261
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->add(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)V

    .line 2264
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$4300(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)I

    move-result v2

    .line 2266
    if-gtz v2, :cond_2

    .line 2268
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->nextPage()V

    .line 2285
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    .line 2286
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v3

    .line 2287
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/mobipocket/common/library/reader/NavigationCache;->add(IIII)V

    .line 2288
    :cond_1
    return-void

    .line 2272
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2276
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v3, v4, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$4400(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/DisplayableFrame;I)V

    .line 2278
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2282
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectLastObject()Z

    goto :goto_0
.end method

.method public nextPage()V
    .locals 5

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 2208
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[nextPage] Next page asked... Current page begin position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Current page begin position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[nextPage] Saving the TagStack with Current page end position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and TagStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 2215
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 2216
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v1

    .line 2217
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->knowsTagAndAttributeStackAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2219
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->add(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)V

    .line 2221
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isEndOfFlow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2247
    :cond_2
    :goto_0
    return-void

    .line 2227
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2229
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v3

    iput-object v3, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 2230
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 2231
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 2239
    :goto_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2108(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    .line 2240
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2241
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    .line 2243
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    .line 2244
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v3

    .line 2245
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/mobipocket/common/library/reader/NavigationCache;->add(IIII)V

    goto :goto_0

    .line 2235
    :cond_4
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3100(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Z)V

    goto :goto_1
.end method

.method public previousLine()V
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2303
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isPreviousPagePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2306
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z

    .line 2308
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2312
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectFirstObject()Z

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2322
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    .line 2324
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2326
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$4500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)V

    .line 2328
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2332
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectFirstObject()Z

    goto :goto_0
.end method

.method public previousPage()V
    .locals 2

    .prologue
    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[previousPage] Previous page asked... Current page begin position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Current page end position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2155
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isPreviousPagePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2161
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z

    .line 2162
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2174
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2176
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 2178
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2180
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2110(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    .line 2183
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2185
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 2186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 2187
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 2194
    :goto_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->endOfPage()V

    goto :goto_0

    .line 2178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2191
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)V

    .line 2192
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3600(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;I)V

    goto :goto_1
.end method
