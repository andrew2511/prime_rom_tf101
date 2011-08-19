.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 178
    const-string v0, "Notification Update Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppNotification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 189
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I

    .line 190
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v0

    .line 195
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
