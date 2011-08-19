.class Lcom/google/android/talk/fragments/SetStatusFragment$2;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
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
    .line 215
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$2$2;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    :goto_0
    monitor-exit p0

    .line 240
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$2$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 219
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
