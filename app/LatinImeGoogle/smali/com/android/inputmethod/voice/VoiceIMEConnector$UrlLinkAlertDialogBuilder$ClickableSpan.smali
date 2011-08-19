.class Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;
.super Landroid/text/style/URLSpan;
.source "VoiceIMEConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickableSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;

    .line 268
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "widget"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 274
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$ClickableSpan;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;

    invoke-static {v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->access$600(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    return-void
.end method
