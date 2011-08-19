.class Lcom/layar/TermsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "TermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TermsActivity;


# direct methods
.method constructor <init>(Lcom/layar/TermsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TermsActivity$1;->this$0:Lcom/layar/TermsActivity;

    .line 29
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/layar/TermsActivity$1;->this$0:Lcom/layar/TermsActivity;

    invoke-static {v0}, Lcom/layar/TermsActivity;->access$0(Lcom/layar/TermsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 32
    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v1

    .line 34
    .local v1, mt:Landroid/net/MailTo;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "android.intent.extra.CC"

    invoke-virtual {v1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "message/rfc822"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/layar/TermsActivity$1;->this$0:Lcom/layar/TermsActivity;

    invoke-virtual {v2, v0}, Lcom/layar/TermsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v6

    .line 43
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mt:Landroid/net/MailTo;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
