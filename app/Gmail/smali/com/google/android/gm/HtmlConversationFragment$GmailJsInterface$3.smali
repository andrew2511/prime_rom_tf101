.class Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->changeLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v1, v1, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-wide v2, v2, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$3;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v1, v1, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$900(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    .line 1496
    :cond_0
    monitor-exit v0

    .line 1497
    return-void

    .line 1496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
