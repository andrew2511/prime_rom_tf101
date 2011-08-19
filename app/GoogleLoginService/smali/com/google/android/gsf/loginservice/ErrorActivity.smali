.class public Lcom/google/android/gsf/loginservice/ErrorActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "ErrorActivity.java"


# instance fields
.field protected mBodyText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doErrorActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/ErrorActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 85
    .local v0, username:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/ErrorActivity;->mIsYoutubeRequest:Z

    if-eqz v1, :cond_0

    const-string v1, "@youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/ErrorActivity;->mBodyText:Landroid/widget/TextView;

    const v2, 0x7f0800c1

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/ErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f030016

    return v0
.end method

.method protected isDialog()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x3

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->isDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/loginservice/ErrorActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/ErrorActivity;->setContentView(I)V

    .line 50
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/ErrorActivity;->mBodyText:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0c004b

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, b:Landroid/widget/Button;
    new-instance v1, Lcom/google/android/gsf/loginservice/ErrorActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/loginservice/ErrorActivity$1;-><init>(Lcom/google/android/gsf/loginservice/ErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->doErrorActivity()V

    .line 59
    return-void

    .line 45
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected retry()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->authenticate()V

    .line 73
    return-void
.end method
