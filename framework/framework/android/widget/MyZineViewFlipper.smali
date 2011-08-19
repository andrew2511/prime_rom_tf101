.class public Landroid/widget/MyZineViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "MyZineViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "MyZineViewFlipper"


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/MyZineViewFlipper;->mIndex:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/MyZineViewFlipper;->mIndex:I

    .line 30
    return-void
.end method


# virtual methods
.method public addMyView(Ljava/lang/String;)V
    .registers 6
    .parameter "uriString"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 59
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/MyZineViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, i:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/MyZineViewFlipper;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public removeMyAllView(I)V
    .registers 2
    .parameter "remove"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/widget/MyZineViewFlipper;->removeAllViews()V

    .line 36
    return-void
.end method

.method public removeViewAt(I)V
    .registers 2
    .parameter "index"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 98
    return-void
.end method

.method public setChildScaleType(Ljava/lang/String;)V
    .registers 6
    .parameter "type"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/widget/MyZineViewFlipper;->getChildCount()I

    move-result v1

    .line 115
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_23

    .line 116
    invoke-virtual {p0, v2}, Landroid/widget/MyZineViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, child:Landroid/widget/ImageView;
    const-string v3, "fitCenter"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 118
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 120
    :cond_1d
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1a

    .line 122
    .end local v0           #child:Landroid/widget/ImageView;
    :cond_23
    return-void
.end method

.method public setFlipInterval(I)V
    .registers 2
    .parameter "milliseconds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 54
    return-void
.end method

.method public setMyView(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/MyZineViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, i:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 109
    iget v2, p0, Landroid/widget/MyZineViewFlipper;->mIndex:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/MyZineViewFlipper;->addView(Landroid/view/View;I)V

    .line 110
    return-void
.end method

.method public setMyViewIndex(I)V
    .registers 2
    .parameter "index"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 89
    iput p1, p0, Landroid/widget/MyZineViewFlipper;->mIndex:I

    .line 91
    return-void
.end method

.method public showNext(I)V
    .registers 2
    .parameter "next"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 84
    return-void
.end method

.method public showOnly(I)V
    .registers 2
    .parameter "only"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->showOnly(I)V

    .line 72
    return-void
.end method

.method public showPrevious(I)V
    .registers 2
    .parameter "index"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 78
    return-void
.end method

.method public startFlipping(I)V
    .registers 2
    .parameter "start"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 42
    return-void
.end method

.method public stopFlipping(I)V
    .registers 2
    .parameter "stop"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 48
    return-void
.end method
