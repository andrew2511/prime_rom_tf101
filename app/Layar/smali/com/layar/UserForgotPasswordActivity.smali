.class public Lcom/layar/UserForgotPasswordActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserForgotPasswordActivity.java"


# static fields
.field private static final SUBACTIVITY_FORGOT_PASSWORD_CONFIRMATION:I = 0x1


# instance fields
.field private email:Landroid/widget/EditText;

.field private errorTextView:Landroid/widget/TextView;

.field helper:Lcom/layar/ActivityHelper;

.field private inputTextListener:Landroid/text/TextWatcher;

.field private submitRequestButton:Landroid/widget/Button;

.field private userManager:Lcom/layar/data/user/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 37
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->helper:Lcom/layar/ActivityHelper;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserForgotPasswordActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/layar/UserForgotPasswordActivity;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/UserForgotPasswordActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->submitRequestButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/UserForgotPasswordActivity;)Lcom/layar/data/user/UserManager;
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/UserForgotPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->showDialogPasswordResetLinkSent()V

    return-void
.end method

.method static synthetic access$5(Lcom/layar/UserForgotPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->enableDisableButtons()V

    return-void
.end method

.method private cancel()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/layar/UserForgotPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/UserForgotPasswordActivity$1;-><init>(Lcom/layar/UserForgotPasswordActivity;)V

    return-object v0
.end method

.method private enableDisableButtons()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->submitRequestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/layar/UserForgotPasswordActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserManager()Lcom/layar/data/user/UserManager;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->userManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->userManager:Lcom/layar/data/user/UserManager;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->userManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method private inputTextListener()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->inputTextListener:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/layar/UserForgotPasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/UserForgotPasswordActivity$3;-><init>(Lcom/layar/UserForgotPasswordActivity;)V

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->inputTextListener:Landroid/text/TextWatcher;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->inputTextListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method private showDialogPasswordResetLinkSent()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    const v2, 0x7f090016

    .line 158
    new-instance v3, Lcom/layar/UserForgotPasswordActivity$4;

    invoke-direct {v3, p0}, Lcom/layar/UserForgotPasswordActivity$4;-><init>(Lcom/layar/UserForgotPasswordActivity;)V

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method

.method private submitRequest()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/layar/UserForgotPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/UserForgotPasswordActivity$2;-><init>(Lcom/layar/UserForgotPasswordActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/layar/DestroyInformerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/layar/UserForgotPasswordActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->errorTextView:Landroid/widget/TextView;

    .line 45
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->setErrorMessage(Ljava/lang/String;)V

    .line 47
    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->submitRequestButton:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->submitRequestButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->submitRequest()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->cancel()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/layar/UserForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->email:Landroid/widget/EditText;

    .line 54
    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->enableDisableButtons()V

    .line 55
    iget-object v0, p0, Lcom/layar/UserForgotPasswordActivity;->email:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/UserForgotPasswordActivity;->inputTextListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    return-void
.end method
