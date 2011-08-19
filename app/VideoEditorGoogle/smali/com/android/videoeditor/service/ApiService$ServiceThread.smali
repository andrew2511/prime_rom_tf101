.class Lcom/android/videoeditor/service/ApiService$ServiceThread;
.super Ljava/lang/Thread;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "threadName"

    .prologue
    .line 5413
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5393
    new-instance v0, Lcom/android/videoeditor/service/ApiService$ServiceThread$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/service/ApiService$ServiceThread$1;-><init>(Lcom/android/videoeditor/service/ApiService$ServiceThread;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 5414
    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mHandler:Landroid/os/Handler;

    .line 5415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->setName(Ljava/lang/String;)V

    .line 5416
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    .line 5417
    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5389
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->put(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5389
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->cancel(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancel(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 5440
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private put(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 5425
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5427
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5428
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5430
    :cond_0
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 4

    .prologue
    .line 5470
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5471
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 5475
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 5476
    .local v0, queueSize:I
    if-lez v0, :cond_1

    .line 5477
    const-string v1, "VEApiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread queue is not empty. Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 5480
    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 5448
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5450
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    .line 5453
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/service/ApiService$ServiceThread$2;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/service/ApiService$ServiceThread$2;-><init>(Lcom/android/videoeditor/service/ApiService$ServiceThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5463
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5464
    return-void
.end method
