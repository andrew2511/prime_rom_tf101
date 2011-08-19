.class public Lcom/nuance/xt9/input/HandWritingView;
.super Landroid/view/View;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;
    }
.end annotation


# instance fields
.field public mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getOnWritingActionListener()Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/xt9/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 44
    .local v0, h:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 48
    .local v1, w:I
    invoke-virtual {p0, v1, v0}, Lcom/nuance/xt9/input/HandWritingView;->setMeasuredDimension(II)V

    .line 49
    return-void
.end method

.method public setOnWritingActionListener(Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/xt9/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/xt9/input/HandWritingView$OnWritingAction;

    .line 34
    return-void
.end method
