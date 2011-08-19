.class Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->viewOrDownload(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

.field final synthetic val$action:I

.field final synthetic val$partId:Ljava/lang/String;

.field final synthetic val$serverMessageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$serverMessageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$partId:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v2, v2, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v2

    .line 1197
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v3, v3, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-wide v4, v4, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->mConversationId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1198
    monitor-exit v2

    .line 1204
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$serverMessageId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->access$400(Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;Ljava/lang/String;)J

    move-result-wide v0

    .line 1202
    .local v0, id:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v3, v3, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$partId:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$1;->val$action:I

    invoke-static {v3, v0, v1, v4, v5}, Lcom/google/android/gm/HtmlConversationFragment;->access$500(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;I)V

    .line 1203
    monitor-exit v2

    goto :goto_0

    .end local v0           #id:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
