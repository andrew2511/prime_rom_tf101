.class Lcom/android/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmInitReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmInitReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 48
    const-string v0, "AlarmInitReceiver finished"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 50
    return-void
.end method
