.class Lcom/asus/reader/book/DrmBookFulfillmentService$2;
.super Ljava/lang/Thread;
.source "DrmBookFulfillmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentService;->runFulfillProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

.field final synthetic val$acsmPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    iput-object p2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->val$acsmPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    iget-object v1, v1, Lcom/asus/reader/book/DrmBookFulfillmentService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    const-string v0, "DRMFulfillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start the thread to fulfill acsm ( thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->initFulfillment()V

    .line 201
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->val$acsmPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/asus/reader/book/DrmProcessor;->fulfillmentNative(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->access$102(Lcom/asus/reader/book/DrmBookFulfillmentService;Z)Z

    .line 203
    const-string v0, "DRMFulfillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish the thread to fulfill acsm ( thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$2;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method
