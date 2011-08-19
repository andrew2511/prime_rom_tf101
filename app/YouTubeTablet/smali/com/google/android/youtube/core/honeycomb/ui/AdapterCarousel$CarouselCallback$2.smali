.class Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;
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
.method constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    iput-object p2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->val$this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v21

    .line 505
    .local v21, currentVersion:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    .line 506
    .local v26, textureIndex:I
    div-int/lit8 v6, v26, 0x2

    .line 507
    .local v6, cardIndex:I
    and-int/lit8 v5, v26, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 509
    .local v23, isDetailView:Z
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 590
    .end local p1
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$2300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;

    move-result-object v5

    monitor-enter v5

    .line 591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v6, v0

    .end local v6           #cardIndex:I
    invoke-static {v6}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$2300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Message;

    .line 592
    .local v24, next:Landroid/os/Message;
    if-eqz v24, :cond_a

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->sendMessage(Landroid/os/Message;)Z

    .line 597
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    return-void

    .line 507
    .end local v23           #isDetailView:Z
    .end local v24           #next:Landroid/os/Message;
    .restart local v6       #cardIndex:I
    .restart local p1
    :cond_1
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_0

    .line 512
    .restart local v23       #isDetailView:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    const/4 v7, -0x1

    invoke-static {v5, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getCardCount()I

    move-result v19

    .line 515
    .local v19, currentCardCount:I
    mul-int/lit8 v20, v19, 0x2

    .line 516
    .local v20, currentTextureCount:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 518
    div-int/lit8 v6, v22, 0x2

    .line 519
    and-int/lit8 v5, v22, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 523
    :goto_4
    if-eqz v23, :cond_5

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v5, v6, v7}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V

    .line 516
    :cond_2
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 519
    :cond_3
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_4

    .line 524
    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 526
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/ex/carousel/CarouselController;->invalidateTexture(IZ)V

    goto :goto_6

    .line 531
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v18

    .line 532
    .local v18, count:I
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v8}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCardSize(II)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->createCards(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    mul-int/lit8 v7, v18, 0x2

    invoke-static {v5, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1600(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)V

    goto/16 :goto_1

    .line 542
    .end local v18           #count:I
    .end local v19           #currentCardCount:I
    .end local v20           #currentTextureCount:I
    .end local v22           #i:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v6, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getCardCount()I

    move-result v5

    if-ge v6, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;II)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 546
    .local v14, view:Landroid/view/View;
    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_7

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5, v14}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_1

    .line 550
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v7

    move/from16 v1, v26

    move v2, v8

    move/from16 v3, v21

    move-object v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 557
    .end local v14           #view:Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 558
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/graphics/Bitmap;

    .line 559
    .local v11, texture:Landroid/graphics/Bitmap;
    if-eqz v23, :cond_8

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getHeight()I

    move-result v5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v25, v5, v7

    .line 562
    .local v25, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    const/4 v7, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 564
    .end local v25           #offsetY:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v5, v6, v11}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 568
    .end local v11           #texture:Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v0, v7

    move/from16 v1, v26

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 573
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 575
    .restart local v14       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move v15, v6

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5, v14}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_1

    .line 581
    .end local v14           #view:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v7, v0

    invoke-static {v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 583
    .restart local v14       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2202(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;[I)[I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move v15, v6

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v5, v0

    invoke-static {v5, v14}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_1

    .line 595
    .end local v6           #cardIndex:I
    .end local v14           #view:Landroid/view/View;
    .restart local v24       #next:Landroid/os/Message;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->access$2402(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Z)Z

    goto/16 :goto_2

    .line 597
    .end local v24           #next:Landroid/os/Message;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
