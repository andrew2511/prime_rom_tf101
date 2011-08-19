.class Lcom/google/android/talk/videochat/NotificationReceiver$1;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationReceiver;

.field final synthetic val$accountId:J

.field final synthetic val$existingCall:Lcom/google/android/talk/videochat/CallState;

.field final synthetic val$isVideo:Z

.field final synthetic val$jid:Ljava/lang/String;

.field final synthetic val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationReceiver;Lcom/google/android/talk/videochat/IncomingCallNotifier;Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->this$0:Lcom/google/android/talk/videochat/NotificationReceiver;

    iput-object p2, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    iput-object p3, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$jid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$accountId:J

    iput-boolean p6, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$isVideo:Z

    iput-object p7, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$existingCall:Lcom/google/android/talk/videochat/CallState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$jid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$accountId:J

    iget-boolean v4, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$isVideo:Z

    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$existingCall:Lcom/google/android/talk/videochat/CallState;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->postNotification(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    .line 79
    return-void
.end method
