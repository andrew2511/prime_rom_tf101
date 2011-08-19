.class Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;
.super Ljava/lang/Object;
.source "AdapterCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iput p2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;->val$visibility:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$001(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;I)V

    .line 362
    return-void
.end method
