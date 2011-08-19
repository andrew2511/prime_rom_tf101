.class public Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
.super Landroid/view/ViewGroup;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatingItemView"
.end annotation


# instance fields
.field private mAnimatedHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/gm/AnimatedAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/AnimatedAdapter;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "initialHeight"

    .prologue
    const/4 v1, -0x1

    .line 507
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->this$0:Lcom/google/android/gm/AnimatedAdapter;

    .line 508
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 505
    iput v1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    .line 509
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/AnimatedAdapter;->access$002(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 525
    :cond_0
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    return-void

    .line 527
    :cond_1
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/AnimatedAdapter;->access$102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 531
    :cond_2
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 539
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 540
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    .line 542
    :cond_0
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    iget v1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setMeasuredDimension(II)V

    .line 543
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 514
    iput p1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mAnimatedHeight:I

    .line 515
    return-void
.end method
