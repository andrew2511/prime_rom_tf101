.class Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$conversation:Lcom/google/android/gm/ConversationInfo;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->val$conversation:Lcom/google/android/gm/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1590
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->val$account:Ljava/lang/String;

    const-string v3, "^u"

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 1592
    .local v1, label:Lcom/google/android/gm/provider/Label;
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->this$1:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$900(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/MenuHandler;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;->val$conversation:Lcom/google/android/gm/ConversationInfo;

    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Lcom/google/android/gm/ConversationInfo;ZILcom/google/android/gm/CommandListener;)V

    .line 1595
    return-void
.end method
