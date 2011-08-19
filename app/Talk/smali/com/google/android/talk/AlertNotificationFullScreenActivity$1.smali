.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlertNotificationFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "talk"

    const-string v1, "[AlertNotificationFullScreen] received CANCEL_NOTIFICATION_INTENT, dismiss dialog"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$000(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 123
    :cond_0
    return-void
.end method
