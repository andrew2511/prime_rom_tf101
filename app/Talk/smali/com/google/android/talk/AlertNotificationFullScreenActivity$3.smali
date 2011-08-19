.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V
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
    .line 188
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$200(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V

    .line 193
    :cond_0
    const-string v0, "talk"

    const-string v1, "[AlertNotificationFullScreen] onCancel: dismiss"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$300(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 195
    return-void
.end method
