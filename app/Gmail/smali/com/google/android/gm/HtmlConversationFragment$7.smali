.class Lcom/google/android/gm/HtmlConversationFragment$7;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentProgresses(JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$conversationId:J

.field final synthetic val$runningTask:Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iput-wide p2, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$conversationId:J

    iput-object p4, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$runningTask:Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;

    iput-object p5, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$args:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v0

    .line 2438
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v2, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$conversationId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2439
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$runningTask:Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->cancel(Z)Z

    .line 2440
    monitor-exit v0

    .line 2446
    :goto_0
    return-void

    .line 2442
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:gm.conversation.updateAttachmentProgresses("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$7;->val$args:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2445
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
