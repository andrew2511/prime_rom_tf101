.class public Lcom/google/android/gsf/login/CaptchaActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCaptchaEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setContentView(I)V

    .line 45
    iget-boolean v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleLoginService"

    const-string v3, "Doing captcha..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    sget-object v2, Lcom/google/android/gsf/login/CaptchaActivity;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 49
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const v2, 0x7f0c002a

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    .line 50
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    const v2, 0x7f0c002b

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    .line 53
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    .line 57
    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    .line 58
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 63
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/CaptchaActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->updateWidgetState()V

    .line 73
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, answer:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/login/CaptchaActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CaptchaActivity;->finish()V

    .line 81
    return-void
.end method

.method public updateWidgetState()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 89
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mCaptchaEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 90
    .local v0, answer:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 91
    .local v1, answerValid:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v2, p0, Lcom/google/android/gsf/login/CaptchaActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 93
    return-void

    .line 90
    .end local v1           #answerValid:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method
