.class Lcom/google/android/talk/ChatView$13$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$13;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$13;)V
    .locals 0
    .parameter

    .prologue
    .line 2710
    iput-object p1, p0, Lcom/google/android/talk/ChatView$13$1;->this$1:Lcom/google/android/talk/ChatView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/google/android/talk/ChatView$13$1;->this$1:Lcom/google/android/talk/ChatView$13;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$13;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->getBluetoothState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2722
    :goto_0
    :pswitch_0
    return-void

    .line 2715
    :pswitch_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->setUseBluetooth(Z)V

    goto :goto_0

    .line 2718
    :pswitch_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->setUseBluetooth(Z)V

    goto :goto_0

    .line 2713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
