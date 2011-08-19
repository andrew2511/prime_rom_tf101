.class Lcom/asus/reader/book/DrmBookFulfillmentService$1;
.super Landroid/os/Handler;
.source "DrmBookFulfillmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/DrmBookFulfillmentService;
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
    .line 97
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    new-instance v0, Lcom/asus/reader/book/DrmBookFulfillmentService$1$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/DrmBookFulfillmentService$1$1;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentService$1;)V

    .line 108
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 115
    .end local v0           #t:Ljava/lang/Thread;
    :pswitch_2
    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentService$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentService;

    const v3, 0x7f0700a1

    invoke-virtual {v2, v3}, Lcom/asus/reader/book/DrmBookFulfillmentService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
