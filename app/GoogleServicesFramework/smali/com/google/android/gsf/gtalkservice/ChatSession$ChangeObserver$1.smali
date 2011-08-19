.class Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

.field final synthetic val$oldOffTheRecord:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iput-boolean p2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->val$oldOffTheRecord:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requeryOtrCursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v2, v2, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$000(Lcom/google/android/gsf/gtalkservice/ChatSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$100(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    .line 156
    :cond_0
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$200(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->val$oldOffTheRecord:Z

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v1, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver$1;->this$1:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addOffTheRecordStatusChange()V

    .line 162
    :cond_1
    return-void

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
