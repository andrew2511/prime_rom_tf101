.class Lcom/asus/reader/book/DrmBookFulfillmentService$3;
.super Ljava/lang/Thread;
.source "DrmBookFulfillmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentService;->checkDeviceActivation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentService;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$3;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 428
    const-string v0, "DRMFulfillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start the thread to do anonymous activation ( thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$3;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->initActivation()V

    .line 430
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->anonymousActivation()V

    .line 431
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$3;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentService;->access$202(Lcom/asus/reader/book/DrmBookFulfillmentService;Z)Z

    .line 432
    const-string v0, "DRMFulfillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish the thread to do anonymous activation ( thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$3;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method
