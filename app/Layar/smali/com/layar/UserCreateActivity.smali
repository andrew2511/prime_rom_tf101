.class public Lcom/layar/UserCreateActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserCreateActivity.java"


# static fields
.field private static BUNDLE_KEY_EMAIL:Ljava/lang/String;

.field private static BUNDLE_KEY_INFORM:Ljava/lang/String;

.field private static BUNDLE_KEY_PASS:Ljava/lang/String;

.field private static BUNDLE_KEY_USERNAME:Ljava/lang/String;

.field private static SUBACTIVITY_CREATE_CONFIRMATION:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private helper:Lcom/layar/ActivityHelper;

.field private inputTextListener:Landroid/text/TextWatcher;

.field private userManager:Lcom/layar/data/user/UserManager;

.field private viewCreateAccount:Landroid/widget/Button;

.field private viewEmail:Landroid/widget/EditText;

.field private viewInformCheck:Landroid/widget/CheckBox;

.field private viewPassword:Landroid/widget/EditText;

.field private viewUsername:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/UserCreateActivity;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "bundle:username"

    sput-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_USERNAME:Ljava/lang/String;

    .line 42
    const-string v0, "bundle:email"

    sput-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_EMAIL:Ljava/lang/String;

    .line 43
    const-string v0, "bundle:password"

    sput-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_PASS:Ljava/lang/String;

    .line 44
    const-string v0, "bundle:inform"

    sput-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_INFORM:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/layar/UserCreateActivity;->SUBACTIVITY_CREATE_CONFIRMATION:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 48
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/UserCreateActivity;->helper:Lcom/layar/ActivityHelper;

    .line 37
    return-void
.end method

.method private _getUserNameFilter()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 247
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/layar/UserCreateActivity$5;

    invoke-direct {v2, p0}, Lcom/layar/UserCreateActivity$5;-><init>(Lcom/layar/UserCreateActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 269
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 270
    .local v0, result:[Landroid/text/InputFilter;
    return-object v0
.end method

.method static synthetic access$0(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->onInformViewClick()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/UserCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/UserCreateActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/UserCreateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewCreateAccount:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/UserCreateActivity;)Lcom/layar/data/user/UserManager;
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/layar/UserCreateActivity;->SUBACTIVITY_CREATE_CONFIRMATION:I

    return v0
.end method

.method static synthetic access$8(Lcom/layar/UserCreateActivity;)Lcom/layar/ActivityHelper;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->helper:Lcom/layar/ActivityHelper;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->enableDisableButtons()V

    return-void
.end method

.method private createUser()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/layar/UserCreateActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/UserCreateActivity$3;-><init>(Lcom/layar/UserCreateActivity;)V

    return-object v0
.end method

.method private enableDisableButtons()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewCreateAccount:Landroid/widget/Button;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 213
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserManager()Lcom/layar/data/user/UserManager;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->userManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserCreateActivity;->userManager:Lcom/layar/data/user/UserManager;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->userManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method private inputTextListener()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->inputTextListener:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/layar/UserCreateActivity$4;

    invoke-direct {v0, p0}, Lcom/layar/UserCreateActivity$4;-><init>(Lcom/layar/UserCreateActivity;)V

    iput-object v0, p0, Lcom/layar/UserCreateActivity;->inputTextListener:Landroid/text/TextWatcher;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->inputTextListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private onInformViewClick()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/layar/DestroyInformerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    sget v0, Lcom/layar/UserCreateActivity;->SUBACTIVITY_CREATE_CONFIRMATION:I

    if-ne p1, v0, :cond_0

    .line 207
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/UserCreateActivity;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/layar/UserCreateActivity;->finish()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f030059

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->setContentView(I)V

    .line 64
    const v1, 0x7f0700d3

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/layar/UserCreateActivity;->viewCreateAccount:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewCreateAccount:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->createUser()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0700d4

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    .line 68
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->_getUserNameFilter()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 69
    const v1, 0x7f0700d2

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    .line 70
    const v1, 0x7f0700d5

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    .line 72
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->inputTextListener()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->inputTextListener()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->inputTextListener()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    .line 78
    const v1, 0x7f0700d7

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 81
    const v1, 0x7f0700d6

    invoke-virtual {p0, v1}, Lcom/layar/UserCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, viewKeepInformed:Landroid/view/View;
    new-instance v1, Lcom/layar/UserCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/UserCreateActivity$1;-><init>(Lcom/layar/UserCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v1, Lcom/layar/UserCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/UserCreateActivity$2;-><init>(Lcom/layar/UserCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->enableDisableButtons()V

    .line 100
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    sget-object v1, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_USERNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    sget-object v1, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_EMAIL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    sget-object v1, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_PASS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    sget-object v1, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_INFORM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    invoke-direct {p0}, Lcom/layar/UserCreateActivity;->enableDisableButtons()V

    .line 123
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 108
    sget-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_USERNAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_EMAIL:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_PASS:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/layar/UserCreateActivity;->BUNDLE_KEY_INFORM:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/UserCreateActivity;->viewInformCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method
