.class Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
.super Landroid/os/Handler;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 162
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->start()V

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    :cond_0
    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
