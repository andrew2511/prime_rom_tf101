.class public Lcom/layar/ui/smarttab/SmartTabHost;
.super Landroid/widget/FrameLayout;
.source "SmartTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$FactoryContentStrategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$LabelAndIconIndicatorStategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$LabelIndicatorStrategy;,
        Lcom/layar/ui/smarttab/SmartTabHost$TabContentFactory;,
        Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;,
        Lcom/layar/ui/smarttab/SmartTabHost$ViewIdContentStrategy;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    .line 50
    iput-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    .line 55
    iput-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 61
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->initTabHost()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    .line 50
    iput-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    .line 55
    iput-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 66
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->initTabHost()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->setFocusableInTouchMode(Z)V

    .line 71
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->setDescendantFocusability(I)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    .line 75
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 200
    invoke-static {p1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->access$1(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->access$2(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_1
    invoke-static {p1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->access$1(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/layar/ui/smarttab/SmartTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->addView(Landroid/view/View;)V

    .line 210
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 213
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTab(I)V

    .line 215
    :cond_2
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->removeAllViews()V

    .line 223
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->initTabHost()V

    .line 224
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 225
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->requestLayout()V

    .line 227
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->invalidate()V

    .line 228
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 279
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v1

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 285
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/layar/ui/smarttab/SmartTabHost;->playSoundEffect(I)V

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 295
    return-void
.end method

.method public getCurrentSubsection()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->getSubsectionWidget()Lcom/layar/ui/SubsectionWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/SubsectionWidget;->getCurrentSubsection()I

    move-result v0

    return v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 82
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 167
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 168
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 176
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 177
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onSubsectionChanged(Lcom/layar/ui/SubsectionWidget;I)V
    .locals 3
    .parameter "subsection"
    .parameter "id"

    .prologue
    .line 347
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    .line 350
    .local v0, spec:Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getSubsection()Lcom/layar/ui/SubsectionWidget$Subsection;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/layar/ui/SubsectionWidget$Subsection;->setCurrentSubsection(I)V

    .line 351
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;->onSubsectionChanged(Lcom/layar/ui/SubsectionWidget;I)V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 193
    :cond_1
    return-void
.end method

.method public setCurrentSubsection(I)V
    .locals 1
    .parameter "currentSubsection"

    .prologue
    .line 360
    if-gtz p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->getSubsectionWidget()Lcom/layar/ui/SubsectionWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layar/ui/SubsectionWidget;->setCurrentSubsection(I)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 298
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 307
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 308
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    invoke-static {v1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->access$2(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;->tabClosed()V

    .line 311
    :cond_2
    iput p1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    .line 312
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    .line 316
    .local v0, spec:Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v1

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/layar/ui/smarttab/SmartTabWidget;->focusCurrentTab(I)V

    .line 317
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->getSubsectionWidget()Lcom/layar/ui/SubsectionWidget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getSubsection()Lcom/layar/ui/SubsectionWidget$Subsection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/ui/SubsectionWidget;->setSubSection(Lcom/layar/ui/SubsectionWidget$Subsection;)V

    .line 320
    invoke-static {v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->access$2(Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;)Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    .line 322
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 325
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    .line 326
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 338
    :cond_4
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 264
    :goto_1
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnSubsectionChangeListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    .line 343
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 373
    return-void
.end method

.method public setSubsection(Ljava/lang/String;I)V
    .locals 1
    .parameter "tag"
    .parameter "arrayId"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/layar/util/Util;->getArrayIds(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->setSubsection(Ljava/lang/String;[I)V

    .line 87
    return-void
.end method

.method public setSubsection(Ljava/lang/String;[I)V
    .locals 3
    .parameter "tag"
    .parameter "array"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;

    .line 91
    .local v0, tabSpec:Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;
    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0, p2}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->setSubsection([I)V

    .line 93
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->getSubsectionWidget()Lcom/layar/ui/SubsectionWidget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost$TabSpec;->getSubsection()Lcom/layar/ui/SubsectionWidget$Subsection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/ui/SubsectionWidget;->setSubSection(Lcom/layar/ui/SubsectionWidget$Subsection;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 110
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    .line 111
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    .line 113
    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;

    invoke-virtual {v0, p0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->setOnSubsectionChangeListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V

    .line 119
    new-instance v0, Lcom/layar/ui/smarttab/SmartTabHost$1;

    invoke-direct {v0, p0}, Lcom/layar/ui/smarttab/SmartTabHost$1;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;)V

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 135
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    new-instance v1, Lcom/layar/ui/smarttab/SmartTabHost$2;

    invoke-direct {v1, p0}, Lcom/layar/ui/smarttab/SmartTabHost$2;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;)V

    invoke-virtual {v0, v1}, Lcom/layar/ui/smarttab/SmartTabWidget;->setTabSelectionListener(Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;)V

    .line 144
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 145
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    .line 147
    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabHost;->setup()V

    .line 160
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 161
    return-void
.end method
