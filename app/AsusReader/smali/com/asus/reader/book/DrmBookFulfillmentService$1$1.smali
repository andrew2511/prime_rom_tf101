.class Lcom/asus/reader/book/DrmBookFulfillmentService$1$1;
.super Ljava/lang/Thread;
.source "DrmBookFulfillmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/book/DrmBookFulfillmentService$1;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentService$1;

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentService$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentService;->access$000(Lcom/asus/reader/book/DrmBookFulfillmentService;)V

    .line 106
    return-void
.end method
