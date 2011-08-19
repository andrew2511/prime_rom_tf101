.class public Lcom/android/vending/velvet/SmartButton;
.super Landroid/widget/Button;
.source "SmartButton.java"


# instance fields
.field private mInitialTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeInitialTextSize(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeInitialTextSize(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeInitialTextSize(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private computeInitialTextSize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/vending/velvet/SmartButton;->mInitialTextSize:F

    .line 31
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredWidth()I

    move-result v2

    .line 39
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredHeight()I

    move-result v1

    .line 41
    .local v1, measuredHeight:I
    sub-int v0, p4, p2

    .line 43
    .local v0, availableWidth:I
    iget v3, p0, Lcom/android/vending/velvet/SmartButton;->mInitialTextSize:F

    .line 44
    .local v3, textSize:F
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/SmartButton;->setTextSize(F)V

    .line 46
    :goto_0
    invoke-virtual {p0, v5, v5}, Lcom/android/vending/velvet/SmartButton;->measure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v0, :cond_0

    .line 54
    invoke-virtual {p0, v2, v1}, Lcom/android/vending/velvet/SmartButton;->setMeasuredDimension(II)V

    .line 55
    return-void

    .line 50
    :cond_0
    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/SmartButton;->setTextSize(F)V

    goto :goto_0
.end method
