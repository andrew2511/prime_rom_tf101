.class public Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;
.super Landroid/widget/LinearLayout;
.source "SmartTabSubsectionWidget.java"


# instance fields
.field private mSubSection:Lcom/layar/ui/SubsectionWidget;

.field private mSubSectionLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->setOrientation(I)V

    .line 21
    new-instance v1, Lcom/layar/ui/smarttab/SmartTabWidget;

    invoke-direct {v1, p1, p2}, Lcom/layar/ui/smarttab/SmartTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;

    .line 22
    new-instance v1, Lcom/layar/ui/SubsectionWidget;

    invoke-direct {v1, p1}, Lcom/layar/ui/SubsectionWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    .line 23
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/layar/ui/SubsectionWidget;->setVisibility(I)V

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 28
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;

    invoke-virtual {p0, v1}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->addView(Landroid/view/View;)V

    .line 29
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {p0, v1, v0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->hasSubSection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v2}, Lcom/layar/ui/SubsectionWidget;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 45
    .local v1, subSectionBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;

    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;

    invoke-virtual {v3}, Lcom/layar/ui/smarttab/SmartTabWidget;->getCurrentTab()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, selectedChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    .end local v0           #selectedChild:Landroid/view/View;
    .end local v1           #subSectionBackground:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public getSubsectionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSectionLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubsectionWidget()Lcom/layar/ui/SubsectionWidget;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    return-object v0
.end method

.method public getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mTabWidget:Lcom/layar/ui/smarttab/SmartTabWidget;

    return-object v0
.end method

.method public hasSubSection()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v0}, Lcom/layar/ui/SubsectionWidget;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSubsectionChangeListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabSubsectionWidget;->mSubSection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v0, p1}, Lcom/layar/ui/SubsectionWidget;->setListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V

    .line 70
    return-void
.end method
