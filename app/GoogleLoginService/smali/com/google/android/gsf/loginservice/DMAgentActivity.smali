.class public Lcom/google/android/gsf/loginservice/DMAgentActivity;
.super Lcom/google/android/gsf/loginservice/ErrorActivity;
.source "DMAgentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doErrorActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/DMAgentActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 35
    .local v0, username:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/DMAgentActivity;->mIsYoutubeRequest:Z

    if-eqz v1, :cond_0

    const-string v1, "@youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/DMAgentActivity;->mBodyText:Landroid/widget/TextView;

    const v2, 0x7f0800c3

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/DMAgentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/DMAgentActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/DMAgentActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-static {p0, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f030012

    return v0
.end method

.method protected retry()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.android.apps.enterprise.dmagent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/DMAgentActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/DMAgentActivity;->finish()V

    .line 29
    return-void
.end method
