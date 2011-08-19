.class Lcom/google/android/talk/videochat/VideoChatService$1;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {v0, p2}, Lcom/google/android/talk/videochat/VideoChatService;->access$002(Lcom/google/android/talk/videochat/VideoChatService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 123
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnServiceConnected for BT profile: mBluetoothHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatService;->access$000(Lcom/google/android/talk/videochat/VideoChatService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$000(Lcom/google/android/talk/videochat/VideoChatService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallManager;->setBluetoothHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$1;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$002(Lcom/google/android/talk/videochat/VideoChatService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 133
    return-void
.end method
