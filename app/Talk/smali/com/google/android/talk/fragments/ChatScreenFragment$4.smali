.class Lcom/google/android/talk/fragments/ChatScreenFragment$4;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1001
    :cond_0
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$4;Landroid/database/Cursor;)V

    .line 1013
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1014
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1021
    monitor-exit v1

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
