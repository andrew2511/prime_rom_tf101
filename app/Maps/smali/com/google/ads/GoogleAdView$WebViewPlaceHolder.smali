.class Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;
.super Landroid/view/View;
.source "GoogleAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewPlaceHolder"
.end annotation


# instance fields
.field private mHeight:I

.field private mTemporaryPicture:Landroid/graphics/Picture;

.field private mWidth:I

.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method public constructor <init>(Lcom/google/ads/GoogleAdView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->this$0:Lcom/google/ads/GoogleAdView;

    .line 805
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 806
    return-void
.end method


# virtual methods
.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mTemporaryPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 823
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 824
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mTemporaryPicture:Landroid/graphics/Picture;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mWidth:I

    iget v3, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 825
    return-void
.end method

.method public setPicture(Landroid/graphics/Picture;)V
    .locals 0
    .parameter "temporaryPicture"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mTemporaryPicture:Landroid/graphics/Picture;

    .line 810
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 813
    iput p1, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mWidth:I

    .line 814
    iput p2, p0, Lcom/google/ads/GoogleAdView$WebViewPlaceHolder;->mHeight:I

    .line 815
    return-void
.end method
