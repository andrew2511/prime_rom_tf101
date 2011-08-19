.class Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;
.super Landroid/os/AsyncTask;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAttachmentProgressesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConversationId:J

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;J)V
    .locals 2
    .parameter
    .parameter "conversationId"

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2311
    iput-wide p2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->mConversationId:J

    .line 2313
    monitor-enter p1

    .line 2314
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->mConversationId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2315
    monitor-exit p1

    .line 2318
    :goto_0
    return-void

    .line 2317
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2307
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 2323
    :goto_0
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$3100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2324
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$3200(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2326
    :cond_0
    monitor-exit v1

    move-object v1, v4

    .line 2336
    :goto_1
    return-object v1

    .line 2328
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v2, p0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->mConversationId:J

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gm/HtmlConversationFragment;->access$3800(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V

    .line 2333
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2334
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v4

    .line 2336
    goto :goto_1

    .line 2328
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
