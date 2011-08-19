.class Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$1(Lcom/newspaperdirect/pressreader/android/core/DownloadService;IZ)V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$2(Lcom/newspaperdirect/pressreader/android/core/DownloadService;I)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
