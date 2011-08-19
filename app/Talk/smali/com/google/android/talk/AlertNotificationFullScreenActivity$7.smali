.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->acceptCall(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

.field final synthetic val$remoteJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iput-object p2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$remoteJid:Ljava/lang/String;

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
    .line 453
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;->val$remoteJid:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->acceptIncomingCall(Ljava/lang/String;)Z

    .line 454
    return-void
.end method
