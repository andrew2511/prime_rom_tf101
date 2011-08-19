.class public abstract Lcom/android/vending/velvet/ArcView;
.super Landroid/view/ViewGroup;
.source "ArcView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/velvet/ArcView$LayoutParams;
    }
.end annotation


# instance fields
.field protected mFooterArea:Landroid/view/ViewGroup;

.field protected final mScreenScaleFactor:F

.field protected mTitleArea:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/vending/velvet/ArcView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/vending/velvet/ArcView;->mScreenScaleFactor:F

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/ArcView;->setWillNotDraw(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 75
    new-instance v0, Lcom/android/vending/velvet/ArcView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/vending/velvet/ArcView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/vending/velvet/ArcView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public abstract getLayoutOverlapInPixels()I
.end method

.method getOffsetForDropShadowBlending()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/vending/velvet/ArcView;->mScreenScaleFactor:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f020083

    .line 59
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/ArcView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vending/velvet/ArcView;->mTitleArea:Landroid/view/ViewGroup;

    .line 60
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/ArcView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vending/velvet/ArcView;->mFooterArea:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcom/android/vending/velvet/ArcView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/vending/velvet/ArcView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/ArcView;->mFooterArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/vending/velvet/ArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 71
    :cond_1
    return-void
.end method
