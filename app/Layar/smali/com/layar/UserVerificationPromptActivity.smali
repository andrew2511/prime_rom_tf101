.class public Lcom/layar/UserVerificationPromptActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "UserVerificationPromptActivity.java"


# static fields
.field private static final SUBACTIVITY_LOGIN:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private helper:Lcom/layar/ActivityHelper;

.field private userManager:Lcom/layar/data/user/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    const-class v1, Lcom/layar/UserVerificationPromptActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/UserVerificationPromptActivity;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 31
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/UserVerificationPromptActivity;->helper:Lcom/layar/ActivityHelper;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserVerificationPromptActivity;)Lcom/layar/data/user/UserManager;
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/UserVerificationPromptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->showDialogVerificationLinkSent()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/UserVerificationPromptActivity;)Lcom/layar/ActivityHelper;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity;->helper:Lcom/layar/ActivityHelper;

    return-object v0
.end method

.method private finishListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/layar/UserVerificationPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/UserVerificationPromptActivity$3;-><init>(Lcom/layar/UserVerificationPromptActivity;)V

    return-object v0
.end method

.method private getUserManager()Lcom/layar/data/user/UserManager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity;->userManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/UserVerificationPromptActivity;->userManager:Lcom/layar/data/user/UserManager;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity;->userManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method private loginListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/layar/UserVerificationPromptActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/UserVerificationPromptActivity$2;-><init>(Lcom/layar/UserVerificationPromptActivity;)V

    return-object v0
.end method

.method private showDialogVerificationLinkSent()V
    .locals 4

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    const/4 v2, 0x1

    .line 131
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    const v2, 0x7f090016

    .line 133
    new-instance v3, Lcom/layar/UserVerificationPromptActivity$4;

    invoke-direct {v3, p0}, Lcom/layar/UserVerificationPromptActivity$4;-><init>(Lcom/layar/UserVerificationPromptActivity;)V

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 142
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/layar/DestroyInformerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/layar/UserVerificationPromptActivity;->finish()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/layar/UserVerificationPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    const v1, 0x7f090160

    .line 155
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030062

    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/layar/UserVerificationPromptActivity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 48
    :cond_0
    const v1, 0x7f0700e3

    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, verifyAccountButton:Landroid/widget/Button;
    new-instance v1, Lcom/layar/UserVerificationPromptActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/UserVerificationPromptActivity$1;-><init>(Lcom/layar/UserVerificationPromptActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0700e4

    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->loginListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/layar/UserVerificationPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    invoke-direct {p0}, Lcom/layar/UserVerificationPromptActivity;->finishListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
