.class Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView$1;
.super Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;
.source "PagedCarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

.field final synthetic val$rs:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView$1;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    iput p3, p0, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView$1;->val$rs:I

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView$1;->val$rs:I

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method
