.class public Lcom/android/systemui/recent/RecentApplicationsCarouselView;
.super Lcom/android/ex/carousel/CarouselView;
.source "RecentApplicationsCarouselView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentApplicationsCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const/high16 v1, 0x7f05

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method
