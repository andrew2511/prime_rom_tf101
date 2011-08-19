.class public abstract Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;
.super Landroid/view/View;
.source "BaseNewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;,
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;,
        Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;
    }
.end annotation


# instance fields
.field protected mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

.field protected mHightlightArticles:Z

.field protected mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;

.field protected mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;

.field protected mOnPageDoubleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;

.field protected mOnPageZoomInCanceledListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;

.field protected mOnPageZoomInFinishedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;

.field protected mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

.field protected processOnTouchEvents:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mHightlightArticles:Z

    .line 40
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->processOnTouchEvents:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mHightlightArticles:Z

    .line 40
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->processOnTouchEvents:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected disableOnTouchEvents(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->processOnTouchEvents:Z

    .line 108
    new-instance v0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$1;-><init>(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getPosition()Landroid/graphics/RectF;
.end method

.method public abstract recycle()V
.end method

.method public abstract restore()V
.end method

.method public abstract setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
.end method

.method public setHighlightArticles(Z)V
    .locals 0
    .parameter "highlight"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mHightlightArticles:Z

    .line 87
    return-void
.end method

.method public setOnArticleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnArticleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;

    .line 63
    return-void
.end method

.method public setOnPageClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnPageClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;

    .line 59
    return-void
.end method

.method public setOnPageDoubleClickedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnPageDoubleClickedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;

    .line 67
    return-void
.end method

.method public setOnPageZoomInCanceledListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnPageZoomInCanceledListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;

    .line 79
    return-void
.end method

.method public setOnPageZoomInFinishedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnPageZoomInFinishedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;

    .line 75
    return-void
.end method

.method public setOnPageZoomInStartedListener(Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->mOnPageZoomInStartedListener:Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInStartedListener;

    .line 71
    return-void
.end method

.method public abstract setPaddingTop(I)V
.end method

.method public abstract showNext()Z
.end method

.method public abstract showPrev()Z
.end method
