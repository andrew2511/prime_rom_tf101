.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout;
.source "PeriodicalLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$001(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
    .locals 3
    .parameter "activity"

    .prologue
    .line 29
    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 30
    .local v0, periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 31
    return-object v0
.end method

.method private setOverlayVisible(Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;ZZZ)V
    .locals 4
    .parameter "periodicalPageLayout"
    .parameter "prevVisible"
    .parameter "visible"
    .parameter "animated"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 97
    if-ne p2, v1, :cond_0

    if-ne p3, v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p3, :cond_2

    const/high16 v2, 0x10a

    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 103
    .local v0, animation:Landroid/view/animation/Animation;
    if-nez p4, :cond_1

    .line 105
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    :cond_1
    new-instance v1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;

    invoke-direct {v2, p0, p3, p4, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;ZZLcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;)V

    invoke-direct {v1, v3, v3, v2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 102
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    const v2, 0x10a0001

    goto :goto_1
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 4

    .prologue
    .line 123
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    instance-of v3, v3, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v1

    .line 127
    .local v1, pageLayout:Lcom/amazon/kcp/reader/ui/PageLayout;
    instance-of v3, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    if-eqz v3, :cond_0

    .line 129
    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    move-object v2, v0

    .line 130
    .local v2, periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->isPrevNextVisibility()Z

    move-result v3

    .line 134
    .end local v1           #pageLayout:Lcom/amazon/kcp/reader/ui/PageLayout;
    .end local v2           #periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 48
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setOverlaysVisible(ZZ)V

    .line 49
    return-void
.end method

.method protected newPageLayout()Lcom/amazon/kcp/reader/ui/PageLayout;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/ui/PageLayout;

    return-object p0
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 4
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    instance-of v3, v3, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getCurrentPageView()Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v1

    .line 68
    .local v1, pageLayout:Lcom/amazon/kcp/reader/ui/PageLayout;
    instance-of v3, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    if-eqz v3, :cond_1

    .line 70
    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;

    move-object v2, v0

    .line 72
    .local v2, periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->areOverlaysVisible()Z

    move-result v3

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setOverlayVisible(Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;ZZZ)V

    .line 83
    .end local v1           #pageLayout:Lcom/amazon/kcp/reader/ui/PageLayout;
    .end local v2           #periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
    :cond_1
    :goto_0
    return-void

    .line 79
    .restart local v1       #pageLayout:Lcom/amazon/kcp/reader/ui/PageLayout;
    .restart local v2       #periodicalPageLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;
    :cond_2
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalPageLayout;->setPrevNextVisibility(Z)V

    goto :goto_0
.end method

.method public turnPage(IF)V
    .locals 1
    .parameter "direction"
    .parameter "velocity"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setOverlaysVisible(ZZ)V

    .line 89
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->turnPage(IF)V

    .line 90
    return-void
.end method
