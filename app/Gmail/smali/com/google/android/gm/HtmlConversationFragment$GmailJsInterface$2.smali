.class Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->onConversationInitialized()V
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
    .line 1469
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1471
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v1, v1, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1500(Lcom/google/android/gm/HtmlConversationFragment;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1472
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0, v2}, Lcom/google/android/gm/HtmlConversationFragment;->access$1502(Lcom/google/android/gm/HtmlConversationFragment;I)I

    .line 1476
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface$2;->this$1:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    iget-object v1, v1, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v1}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->blockImages:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1480
    :cond_0
    return-void
.end method
