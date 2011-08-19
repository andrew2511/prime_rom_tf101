.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
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
    .line 159
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    packed-switch p2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$300(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 181
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->acceptCall(JLjava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    const-string v1, "click positive button"

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v2, v2, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$100(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;Landroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$200(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
