.class Lcom/google/android/gm/HtmlConversationFragment$3;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentStates(JLjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$conversationId:J


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iput-wide p2, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->val$conversationId:J

    iput-object p4, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->val$args:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2082
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v2, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->val$conversationId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2090
    :goto_0
    return-void

    .line 2085
    :cond_0
    invoke-static {}, Lcom/google/android/gm/HtmlConversationFragment;->access$3700()Lcom/google/android/gm/LRUCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->val$conversationId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 2086
    .local v0, cached:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    if-eqz v0, :cond_1

    .line 2087
    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markDirtyAndUncacheable()V

    .line 2089
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:gm.updateAttachmentStates("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$3;->val$args:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
