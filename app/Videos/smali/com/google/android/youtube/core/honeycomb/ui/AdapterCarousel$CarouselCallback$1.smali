.class Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;
.super Landroid/os/Handler;
.source "AdapterCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

.field final synthetic val$this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Looper;Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iput-object p3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->val$this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 473
    iget v4, p1, Landroid/os/Message;->what:I

    .line 474
    .local v4, textureIndex:I
    and-int/lit8 v6, v4, 0x1

    if-ne v6, v10, :cond_0

    move v2, v10

    .line 475
    .local v2, isDetailView:Z
    :goto_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    .line 476
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v6, v6, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v6}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 478
    .local v1, detailView:Landroid/view/View;
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 479
    if-eqz v2, :cond_1

    .line 480
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v6, v6, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, v7, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v8}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$600(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v8

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .local v0, detailTexture:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v7, v4, v11, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    .line 496
    .end local v0           #detailTexture:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-static {v6, v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    .line 497
    return-void

    .end local v1           #detailView:Landroid/view/View;
    .end local v2           #isDetailView:Z
    .end local v5           #view:Landroid/view/View;
    :cond_0
    move v2, v9

    .line 474
    goto :goto_0

    .line 484
    .restart local v1       #detailView:Landroid/view/View;
    .restart local v2       #isDetailView:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 485
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v6, v6, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v6}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_2
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v6, v6, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, v7, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v8}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v8

    invoke-virtual {v6, v5, v7, v8, v10}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 488
    .local v3, mainTexture:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v7, v4, v11, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto :goto_1

    .end local v3           #mainTexture:Landroid/graphics/Bitmap;
    :cond_3
    move v6, v9

    .line 485
    goto :goto_2

    .line 493
    :cond_4
    iget-object v6, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v4, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto :goto_1
.end method
