.class public Lcom/layar/TwitterEmailActivity;
.super Lcom/layar/OurActivity;
.source "TwitterEmailActivity.java"


# instance fields
.field private doneButton:Landroid/widget/Button;

.field private email:Landroid/widget/EditText;

.field private inputTextListener:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/TwitterEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->done()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/TwitterEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->disableEnableButton()V

    return-void
.end method

.method private disableEnableButton()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->doneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private done()V
    .locals 4

    .prologue
    .line 63
    iget-object v2, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, email_text:Ljava/lang/String;
    invoke-static {v0}, Lcom/layar/util/Util;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const v2, 0x7f090146

    .line 66
    const v3, 0x7f090147

    .line 65
    invoke-static {v2, v3, p0}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    .line 67
    iget-object v2, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, i:Landroid/content/Intent;
    const-string v2, "Email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/layar/TwitterEmailActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/layar/TwitterEmailActivity;->finish()V

    goto :goto_0
.end method

.method private doneListner()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/layar/TwitterEmailActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/TwitterEmailActivity$2;-><init>(Lcom/layar/TwitterEmailActivity;)V

    return-object v0
.end method

.method private inputTextListener()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->inputTextListener:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/layar/TwitterEmailActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/TwitterEmailActivity$3;-><init>(Lcom/layar/TwitterEmailActivity;)V

    iput-object v0, p0, Lcom/layar/TwitterEmailActivity;->inputTextListener:Landroid/text/TextWatcher;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->inputTextListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private softDone()Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/layar/TwitterEmailActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/TwitterEmailActivity$1;-><init>(Lcom/layar/TwitterEmailActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/layar/TwitterEmailActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/layar/TwitterEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/layar/TwitterEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/layar/TwitterEmailActivity;->doneButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->doneButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->doneListner()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->inputTextListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity;->email:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->softDone()Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 38
    invoke-direct {p0}, Lcom/layar/TwitterEmailActivity;->disableEnableButton()V

    .line 39
    return-void
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
