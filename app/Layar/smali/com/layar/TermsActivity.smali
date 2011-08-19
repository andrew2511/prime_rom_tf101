.class public Lcom/layar/TermsActivity;
.super Landroid/app/Activity;
.source "TermsActivity.java"


# instance fields
.field private mAccept:Landroid/widget/Button;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/TermsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/layar/TermsActivity;->mAccept:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0700cb

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/layar/TermsActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f0700cd

    invoke-virtual {p0, v2}, Lcom/layar/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/layar/TermsActivity;->mWebView:Landroid/webkit/WebView;

    .line 27
    invoke-virtual {p0, v4}, Lcom/layar/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/layar/TermsActivity;->mAccept:Landroid/widget/Button;

    .line 29
    iget-object v2, p0, Lcom/layar/TermsActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/layar/TermsActivity$1;

    invoke-direct {v3, p0}, Lcom/layar/TermsActivity$1;-><init>(Lcom/layar/TermsActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-virtual {p0, v4}, Lcom/layar/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, acceptButton:Landroid/widget/Button;
    new-instance v2, Lcom/layar/TermsActivity$2;

    invoke-direct {v2, p0}, Lcom/layar/TermsActivity$2;-><init>(Lcom/layar/TermsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0700cc

    invoke-virtual {p0, v2}, Lcom/layar/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, declineButton:Landroid/widget/Button;
    new-instance v2, Lcom/layar/TermsActivity$3;

    invoke-direct {v2, p0}, Lcom/layar/TermsActivity$3;-><init>(Lcom/layar/TermsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/layar/TermsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/layar/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "terms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, terms:Ljava/lang/String;
    iget-object v0, p0, Lcom/layar/TermsActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/layar/TermsActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 79
    return-void
.end method

.method public setTermsAccepted(Z)V
    .locals 3
    .parameter "termsAccepted"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREFS_TERMS_31_ACCEPTED"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method
