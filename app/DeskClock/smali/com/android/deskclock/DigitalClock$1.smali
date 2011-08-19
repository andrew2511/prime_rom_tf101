.class Lcom/android/deskclock/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DigitalClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock$1;->this$0:Lcom/android/deskclock/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$1;->this$0:Lcom/android/deskclock/DigitalClock;

    invoke-static {v0}, Lcom/android/deskclock/DigitalClock;->access$000(Lcom/android/deskclock/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$1;->this$0:Lcom/android/deskclock/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/DigitalClock;->access$102(Lcom/android/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock$1;->this$0:Lcom/android/deskclock/DigitalClock;

    invoke-static {v0}, Lcom/android/deskclock/DigitalClock;->access$300(Lcom/android/deskclock/DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/DigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DigitalClock$1$1;-><init>(Lcom/android/deskclock/DigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method
