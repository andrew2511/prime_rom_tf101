.class Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->isInitialStickyBroadcast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver.onReceive: ignoring initial sticky broadcast for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/CallManager;->access$100(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, audioState:I
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver.onReceive: got ACTION_SCO_AUDIO_STATE_CHANGED, audioState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/CallManager;->access$100(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3}, Lcom/google/android/talk/videochat/CallManager;->access$200(Lcom/google/android/talk/videochat/CallManager;)V

    .line 276
    if-ne v1, v7, :cond_2

    .line 277
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/CallManager;->access$300(Lcom/google/android/talk/videochat/CallManager;I)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3}, Lcom/google/android/talk/videochat/CallManager;->access$400(Lcom/google/android/talk/videochat/CallManager;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3, v7}, Lcom/google/android/talk/videochat/CallManager;->access$300(Lcom/google/android/talk/videochat/CallManager;I)V

    goto :goto_0

    .line 282
    .end local v1           #audioState:I
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 287
    .local v2, profileState:I
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/videochat/CallManager;->access$100(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)V

    .line 290
    packed-switch v2, :pswitch_data_0

    .line 307
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3, v6}, Lcom/google/android/talk/videochat/CallManager;->access$300(Lcom/google/android/talk/videochat/CallManager;I)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3}, Lcom/google/android/talk/videochat/CallManager;->access$400(Lcom/google/android/talk/videochat/CallManager;)I

    move-result v3

    if-nez v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3, v7}, Lcom/google/android/talk/videochat/CallManager;->access$300(Lcom/google/android/talk/videochat/CallManager;I)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v3}, Lcom/google/android/talk/videochat/CallManager;->access$500(Lcom/google/android/talk/videochat/CallManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
