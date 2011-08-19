.class Lcom/android/deskclock/AlarmAlertFullScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-static {v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v2, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v2, "intent.extra.alarm"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .line 66
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    iget-object v2, v2, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    iget v3, v1, Lcom/android/deskclock/Alarm;->id:I

    if-ne v2, v3, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen$1;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V

    goto :goto_0
.end method
