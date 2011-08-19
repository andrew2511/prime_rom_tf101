.class public Lcom/google/android/gsf/loginservice/LoginActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/LoginActivity$6;
    }
.end annotation


# instance fields
.field private mBottomMessage:Landroid/widget/TextView;

.field private mMessage:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameFixed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    .line 293
    new-instance v0, Lcom/google/android/gsf/loginservice/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/loginservice/LoginActivity$5;-><init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->submit()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/loginservice/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->updateWidgetState()V

    return-void
.end method

.method private static getDefaultDialogIcon(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010355

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 127
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private getMessage()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mIsYoutubeRequest:Z

    if-eqz v2, :cond_1

    .line 236
    const v2, 0x7f0800ce

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, domain:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, msg:Ljava/lang/CharSequence;
    move-object v2, v1

    .line 290
    .end local v1           #msg:Ljava/lang/CharSequence;
    :goto_1
    return-object v2

    .line 238
    .end local v0           #domain:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getDefaultDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0       #domain:Ljava/lang/String;
    const-string v2, "gmail.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    const v2, 0x7f0800cf

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    const-string v2, "googlemail.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const v2, 0x7f0800d0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

    if-ne v2, v3, :cond_5

    .line 263
    :cond_4
    const v2, 0x7f0800cc

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 266
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    const v2, 0x7f0800ca

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 273
    :cond_6
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v3, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-nez v2, :cond_9

    .line 276
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-eqz v2, :cond_8

    .line 279
    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    .line 286
    :cond_8
    const v2, 0x7f0800c9

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    .line 290
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private isOAuth()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOAuthMigrationRequired()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private submit()V
    .locals 3

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mAddedNewAccount:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 133
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mIsYoutubeRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@youtube.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->authenticate()V

    .line 141
    return-void
.end method

.method private updateWidgetState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 314
    iget-boolean v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mAddedNewAccount:Z

    if-nez v4, :cond_3

    .line 320
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, username:Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 322
    .local v2, idx:I
    iget-boolean v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mIsYoutubeRequest:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v6

    .line 326
    .local v1, goodUsername:Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 327
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 328
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 333
    .end local v2           #idx:I
    .end local v3           #username:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_4

    move v0, v6

    .line 334
    .local v0, goodPassword:Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 336
    return-void

    .end local v0           #goodPassword:Z
    .end local v1           #goodUsername:Z
    .restart local v2       #idx:I
    .restart local v3       #username:Ljava/lang/String;
    :cond_0
    move v1, v7

    .line 322
    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_0

    .line 330
    .end local v2           #idx:I
    .end local v3           #username:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    .restart local v1       #goodUsername:Z
    goto :goto_1

    :cond_4
    move v0, v7

    .line 333
    goto :goto_2

    .restart local v0       #goodPassword:Z
    :cond_5
    move v5, v7

    .line 334
    goto :goto_3

    :cond_6
    move v5, v7

    .line 335
    goto :goto_4
.end method


# virtual methods
.method protected doLoginActivity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    .local v0, msg:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mIsYoutubeRequest:Z

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBottomMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBottomMessage:Landroid/widget/TextView;

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBottomMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 161
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    if-ne v1, v2, :cond_2

    .line 162
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_2
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/LoginFilter$PasswordFilterGMail;

    invoke-direct {v3}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/loginservice/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/loginservice/LoginActivity$2;-><init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/loginservice/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/loginservice/LoginActivity$3;-><init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 185
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 187
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mAddedNewAccount:Z

    if-nez v1, :cond_5

    .line 189
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameFixed:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v3}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-nez v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_3
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/gsf/loginservice/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/loginservice/LoginActivity$4;-><init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 226
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->updateWidgetState()V

    .line 227
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBottomMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 197
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mIsYoutubeRequest:Z

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v4, v4, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getDefaultDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameFixed:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameFixed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 359
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x3

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->isOAuth()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->isOAuthMigrationRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget v0, v0, Lcom/google/android/gsf/LoginData;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 76
    :cond_1
    if-nez p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->doRunBrowserLoginIntroActivity()V

    .line 122
    :cond_2
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->doErrorActivity()V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-eqz v0, :cond_4

    .line 83
    sget-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 90
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mRequestNewAccount:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBootstrapMode:Z

    if-eqz v0, :cond_6

    .line 91
    :cond_5
    if-nez p1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->doRunSetupWizardActivity()V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->doCaptchaActivity()V

    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/LoginActivity;->requestWindowFeature(I)Z

    .line 99
    const v0, 0x1030077

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->setTheme(I)V

    .line 100
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->setTitle(I)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->setVisible(Z)V

    .line 102
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/LoginActivity;->getDefaultDialogIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 107
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mMessage:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mBottomMessage:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 110
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mUsernameFixed:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mOkButton:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/LoginActivity;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/gsf/loginservice/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/loginservice/LoginActivity$1;-><init>(Lcom/google/android/gsf/loginservice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    if-nez p1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/LoginActivity;->doLoginActivity()V

    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method
