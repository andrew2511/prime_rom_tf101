.class public abstract Lcom/newspaperdirect/pressreader/android/BaseZoomView;
.super Landroid/view/View;
.source "BaseZoomView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;
    }
.end annotation


# instance fields
.field protected mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

.field protected mHightlightArticles:Z

.field protected mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;

.field protected mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;

.field protected mOnZoomClosedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;

.field protected mOnZoomClosingListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;

.field protected processOnTouchEvents:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mHightlightArticles:Z

    .line 38
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->processOnTouchEvents:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mHightlightArticles:Z

    .line 38
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->processOnTouchEvents:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected disableOnTouchEvents(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->processOnTouchEvents:Z

    .line 90
    new-instance v0, Lcom/newspaperdirect/pressreader/android/BaseZoomView$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView$1;-><init>(Lcom/newspaperdirect/pressreader/android/BaseZoomView;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hide()V
.end method

.method public abstract recycle()V
.end method

.method public abstract setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
.end method

.method public abstract setCurrentPosition(Landroid/graphics/RectF;)V
.end method

.method public setHighlightArticles(Z)V
    .locals 0
    .parameter "highlight"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mHightlightArticles:Z

    .line 74
    return-void
.end method

.method public setOnArticleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;

    .line 70
    return-void
.end method

.method public setOnPageClickedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnPageClickedListener;

    .line 66
    return-void
.end method

.method public setOnZoomClosedListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mOnZoomClosedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;

    .line 58
    return-void
.end method

.method public setOnZoomClosingListener(Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->mOnZoomClosingListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;

    .line 62
    return-void
.end method

.method public abstract setOriginalPosition(Landroid/graphics/RectF;)V
.end method

.method public abstract setScale(FFF)V
.end method

.method public abstract show()V
.end method
