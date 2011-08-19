.class Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;
.super Landroid/database/DataSetObserver;
.source "AdapterCarousel.java"

# interfaces
.implements Lcom/android/ex/carousel/CarouselRS$CarouselCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarouselCallback"
.end annotation


# static fields
.field private static final MSG_CARD_LONG_PRESS:I = 0x5

.field private static final MSG_CARD_SELECTED:I = 0x4

.field private static final MSG_DATASET_CHANGED:I = 0x1

.field private static final MSG_GET_VIEW:I = 0x2

.field private static final MSG_SET_TEXTURE:I = 0x3

.field private static final RECYCLE_BIN_SIZE:I = 0x40


# instance fields
.field private final bgHandler:Landroid/os/Handler;

.field private final bgThread:Landroid/os/HandlerThread;

.field private final carouselMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private isCarouselMessageScheduled:Z

.field private final recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private textureVersions:[I

.field final synthetic this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

.field private final uiHandler:Landroid/os/Handler;

.field private final version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 461
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 432
    iput-boolean v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    .line 462
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 463
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    .line 464
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 465
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    .line 467
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarouselCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 470
    new-instance v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$1;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Looper;Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    .line 500
    new-instance v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback$2;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    .line 600
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->getTextureVersion(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->createTextureVersions(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->getConvertView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized createTextureVersions(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConvertView()Landroid/view/View;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private declared-synchronized getTextureVersion(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queueCarouselMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    if-nez v1, :cond_0

    .line 605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    .line 606
    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    :goto_0
    monitor-exit v0

    .line 611
    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method private removeCarouselMessages(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 614
    iget-object v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 615
    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 616
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 618
    .local v1, next:Landroid/os/Message;
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_0

    .line 619
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 622
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1           #next:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    return-void
.end method

.method private declared-synchronized setTextureVersion(II)V
    .locals 1
    .parameter "index"
    .parameter "textureVersion"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_0
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAnimationFinished(F)V
    .locals 2
    .parameter "carouselRotationAngle"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$2502(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;

    .line 686
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .locals 5
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    return-void
.end method

.method public onCardSelected(I)V
    .locals 4
    .parameter "n"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 670
    return-void
.end method

.method public onChanged()V
    .locals 4

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 635
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 627
    return-void
.end method

.method public onDetailSelected(III)V
    .locals 4
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 679
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 656
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 657
    .local v0, textureIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    .line 658
    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    .line 660
    return-void
.end method

.method public onInvalidateGeometry(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 666
    return-void
.end method

.method public onInvalidateTexture(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 643
    mul-int/lit8 v0, p1, 0x2

    .line 644
    .local v0, textureIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    .line 645
    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    .line 647
    return-void
.end method

.method public onRequestDetailTexture(I)V
    .locals 4
    .parameter "n"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 653
    :cond_0
    return-void
.end method

.method public onRequestGeometry(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 663
    return-void
.end method

.method public onRequestTexture(I)V
    .locals 4
    .parameter "n"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 640
    return-void
.end method
