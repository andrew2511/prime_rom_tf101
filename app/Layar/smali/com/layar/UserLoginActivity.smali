.class public Lcom/layar/UserLoginActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserLoginActivity.java"


# static fields
.field public static final EXTRAS_EXTERNAL_LOGIN:Ljava/lang/String; = "extras:external_login"

.field public static final EXTRAS_LOGIN_NAME:Ljava/lang/String; = "extras:login"

.field private static final SUBACTIVITY_FORGOT_PASSWORD:I = 0x1


# instance fields
.field private errorTextView:Landroid/widget/TextView;

.field private forgotPassword:Landroid/widget/TextView;

.field private loginButton:Landroid/widget/Button;

.field private password:Landroid/widget/EditText;

.field private userManager:Lcom/layar/data/user/UserManager;

.field private username:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->enableLoginButton()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/UserLoginActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/UserLoginActivity;)Lcom/layar/data/user/UserManager;
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->username:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->password:Landroid/widget/EditText;

    return-object v0
.end method

.method private enableDisableLoginButton(Landroid/widget/Button;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "loginButton"

    .prologue
    .line 105
    new-instance v0, Lcom/layar/UserLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/UserLoginActivity$2;-><init>(Lcom/layar/UserLoginActivity;)V

    return-object v0
.end method

.method private enableLoginButton()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private forgotLinkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/layar/UserLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/layar/UserLoginActivity$4;-><init>(Lcom/layar/UserLoginActivity;)V

    return-object v0
.end method

.method private getUserManager()Lcom/layar/data/user/UserManager;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->userManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserLoginActivity;->userManager:Lcom/layar/data/user/UserManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->userManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method private loginListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/layar/UserLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/UserLoginActivity$3;-><init>(Lcom/layar/UserLoginActivity;)V

    return-object v0
.end method

.method private setErrorMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/layar/UserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layar/UserLoginActivity;->setErrorMessage(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->errorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->errorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/layar/UserLoginActivity;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v4, 0x7f030060

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->setContentView(I)V

    .line 45
    const v4, 0x7f0700cf

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/UserLoginActivity;->errorTextView:Landroid/widget/TextView;

    .line 46
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/layar/UserLoginActivity;->setErrorMessage(Ljava/lang/String;)V

    .line 48
    const v4, 0x7f0700dd

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    .line 49
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->loginListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    const v4, 0x7f0700d4

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/layar/UserLoginActivity;->username:Landroid/widget/EditText;

    .line 53
    const v4, 0x7f0700d5

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/layar/UserLoginActivity;->password:Landroid/widget/EditText;

    .line 56
    invoke-virtual {p0}, Lcom/layar/UserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extras:login"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, extrasUsername:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 58
    move-object v3, v0

    .line 62
    .local v3, usernameString:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layar/data/user/UserManager;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, passwordString:Ljava/lang/String;
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->username:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    move-object v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->password:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->username:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/layar/UserLoginActivity;->enableDisableLoginButton(Landroid/widget/Button;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->password:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/layar/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/layar/UserLoginActivity;->enableDisableLoginButton(Landroid/widget/Button;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    const v4, 0x7f0700de

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/UserLoginActivity;->forgotPassword:Landroid/widget/TextView;

    .line 71
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->forgotPassword:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->forgotLinkListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layar/data/user/UserManager;->isOtherPhone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const v4, 0x7f0700df

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v4, 0x7f0700e0

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, link:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    new-instance v4, Lcom/layar/UserLoginActivity$1;

    invoke-direct {v4, p0}, Lcom/layar/UserLoginActivity$1;-><init>(Lcom/layar/UserLoginActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v4, 0x7f090167

    invoke-virtual {p0, v4}, Lcom/layar/UserLoginActivity;->setTitle(I)V

    .line 88
    const v4, 0x7f090168

    invoke-direct {p0, v4}, Lcom/layar/UserLoginActivity;->setErrorMessage(I)V

    .line 92
    .end local v1           #link:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/layar/UserLoginActivity;->userManager:Lcom/layar/data/user/UserManager;

    invoke-virtual {v4, v6}, Lcom/layar/data/user/UserManager;->setOtherPhone(Z)V

    .line 94
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->enableLoginButton()V

    .line 95
    return-void

    .line 60
    .end local v2           #passwordString:Ljava/lang/String;
    .end local v3           #usernameString:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/layar/UserLoginActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layar/data/user/UserManager;->getUsername()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #usernameString:Ljava/lang/String;
    goto/16 :goto_0

    .line 63
    .restart local v2       #passwordString:Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_1

    .line 64
    :cond_3
    const-string v5, ""

    goto :goto_2
.end method
