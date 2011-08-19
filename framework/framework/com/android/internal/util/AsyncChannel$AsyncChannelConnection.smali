.class Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .registers 2
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 735
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->access$600(Lcom/android/internal/util/AsyncChannel;I)V

    .line 736
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #getter for: Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->access$700(Lcom/android/internal/util/AsyncChannel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 740
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 741
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 742
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #getter for: Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->access$500(Lcom/android/internal/util/AsyncChannel;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 743
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #getter for: Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->access$700(Lcom/android/internal/util/AsyncChannel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 744
    return-void
.end method
