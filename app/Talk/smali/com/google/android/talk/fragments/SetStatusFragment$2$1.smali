.class Lcom/google/android/talk/fragments/SetStatusFragment$2$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$2;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$2;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$2$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$2;

    iget-object v1, v1, Lcom/google/android/talk/fragments/SetStatusFragment$2;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
