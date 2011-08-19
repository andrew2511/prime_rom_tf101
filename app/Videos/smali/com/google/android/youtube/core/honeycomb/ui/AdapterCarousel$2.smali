.class Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;
.super Ljava/lang/Object;
.source "AdapterCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->layout(IIII)V

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$102(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;Z)Z

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$201(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V

    .line 392
    return-void
.end method
