.class Lcom/google/android/talk/fragments/SetStatusFragment$14;
.super Landroid/content/BroadcastReceiver;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$14;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$14;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->clearSelfAvatarCache()V

    .line 1238
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$14;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 1241
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$14;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1100(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 1243
    :cond_0
    return-void
.end method
