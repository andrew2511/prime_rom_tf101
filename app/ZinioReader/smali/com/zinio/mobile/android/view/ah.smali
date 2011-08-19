.class final Lcom/zinio/mobile/android/view/ah;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->e(Lcom/zinio/mobile/android/view/IssueTextModeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/cx;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/cx;-><init>(Lcom/zinio/mobile/android/view/ah;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ah;->a:Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method
