.class public Lcom/google/android/gsf/login/LoginActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mCreateButton:Landroid/view/View;

.field private mExitButton:Landroid/view/View;

.field private mLastPauseMillis:J

.field private mLoginTitle:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field protected mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordError:Z

.field private mShouldFocusToPassword:Z

.field private mSignInAgreementLabel:Landroid/widget/TextView;

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z

.field protected prefilledPassword:Ljava/lang/String;

.field protected prefilledUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledUsername:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledPassword:Ljava/lang/String;

    .line 358
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/LoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gsf/login/LoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordError:Z

    return p1
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f030019

    return v0
.end method

.method protected initPrefill()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_login"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, acct:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got prefill: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, pieces:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledUsername:Ljava/lang/String;

    .line 190
    array-length v2, v1

    if-ne v2, v5, :cond_1

    .line 191
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledPassword:Ljava/lang/String;

    .line 192
    iget-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoginActivity.initPrefill: prefilling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initViews()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    const v3, 0x7f0c0021

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mLoginTitle:Landroid/widget/TextView;

    .line 199
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mLoginTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mLoginTitle:Landroid/widget/TextView;

    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/LoginActivity;->getStringWithDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    const v3, 0x7f0c0007

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mNextButton:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/login/LoginActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 206
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mBackButton:Landroid/view/View;

    .line 207
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->setBackButton(Landroid/view/View;)V

    .line 209
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mCreateButton:Landroid/view/View;

    .line 210
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mCreateButton:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mCreateButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_1
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mExitButton:Landroid/view/View;

    .line 215
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mExitButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->allowSkip()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mExitButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 224
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 226
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 229
    :cond_3
    const v3, 0x7f0c0040

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 230
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/google/android/gsf/login/LoginActivity$1;

    invoke-direct {v5, p0, v7}, Lcom/google/android/gsf/login/LoginActivity$1;-><init>(Lcom/google/android/gsf/login/LoginActivity;Z)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 242
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 246
    const v3, 0x7f0c0033

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 247
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/google/android/gsf/login/LoginActivity$2;

    invoke-direct {v5, p0, v7}, Lcom/google/android/gsf/login/LoginActivity$2;-><init>(Lcom/google/android/gsf/login/LoginActivity;Z)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 259
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gsf/login/LoginActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 263
    const v3, 0x7f0c0024

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    .line 264
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 266
    const v3, 0x7f080047

    invoke-static {p0, v3}, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 267
    .local v2, msg:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSignInAgreementLabel:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 271
    .end local v2           #msg:Ljava/lang/CharSequence;
    :cond_4
    const v3, 0x7f0c005b

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 272
    .local v1, createAccountPrompt:Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 273
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 274
    const v3, 0x7f080048

    invoke-static {p0, v3}, Lcom/google/android/gsf/login/LoginActivity$CreateAccountLinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 275
    .restart local v2       #msg:Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 278
    .end local v2           #msg:Ljava/lang/CharSequence;
    :cond_5
    return-void

    .line 219
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #createAccountPrompt:Landroid/widget/TextView;
    :cond_6
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mExitButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected maybePrefillFields()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mShouldFocusToPassword:Z

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mCreateButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mExitButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 160
    sget-object v0, Lcom/google/android/gsf/login/LoginActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->initPrefill()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->initViews()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->maybePrefillFields()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->updateWidgetState()V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    const v1, 0x7f080078

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v3, 0x7f080030

    .line 307
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_4

    if-nez p2, :cond_4

    .line 308
    iget-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameError:Z

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, validatedUsername:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 319
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v3, 0x7f080053

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    .end local v0           #username:Ljava/lang/String;
    .end local v1           #validatedUsername:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 327
    iget-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordError:Z

    if-eqz v2, :cond_5

    .line 328
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mLastPauseMillis:J

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->updateWidgetState()V

    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mLastPauseMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 120
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mShouldFocusToPassword:Z

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->prefilledPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordError:Z

    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 132
    :cond_2
    return-void

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 298
    sget-object v0, Lcom/google/android/gsf/login/LoginActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/google/android/gsf/login/LoginActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 340
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 341
    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 342
    .local v2, un:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 349
    .local v1, pw:Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mUsernameError:Z

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/LoginActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move v4, v7

    .line 351
    .local v4, validUsername:Z
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mPasswordError:Z

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v7

    .line 353
    .local v3, validPassword:Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v0, v7

    .line 354
    .local v0, enableOk:Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    return-void

    .end local v0           #enableOk:Z
    .end local v3           #validPassword:Z
    .end local v4           #validUsername:Z
    :cond_0
    move v4, v6

    .line 349
    goto :goto_0

    .restart local v4       #validUsername:Z
    :cond_1
    move v3, v6

    .line 351
    goto :goto_1

    .restart local v3       #validPassword:Z
    :cond_2
    move v0, v6

    .line 353
    goto :goto_2
.end method
