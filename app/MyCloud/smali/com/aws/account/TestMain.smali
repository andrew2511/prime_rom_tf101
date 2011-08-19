.class public Lcom/aws/account/TestMain;
.super Landroid/app/Activity;
.source "TestMain.java"


# instance fields
.field ctx:Landroid/content/Context;

.field mLoginButton:Landroid/widget/Button;

.field mRegisButton:Landroid/widget/Button;

.field recTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aws/account/TestMain;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/aws/account/TestMain;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method private gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/aws/account/TestMain;->setContentView(I)V

    .line 36
    iput-object p0, p0, Lcom/aws/account/TestMain;->ctx:Landroid/content/Context;

    .line 37
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/aws/account/TestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/account/TestMain;->mLoginButton:Landroid/widget/Button;

    .line 38
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/aws/account/TestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/account/TestMain;->mRegisButton:Landroid/widget/Button;

    .line 39
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/aws/account/TestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/account/TestMain;->recTextView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/aws/account/TestMain;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/aws/account/TestMain$1;

    invoke-direct {v1, p0}, Lcom/aws/account/TestMain$1;-><init>(Lcom/aws/account/TestMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/aws/account/TestMain;->mRegisButton:Landroid/widget/Button;

    new-instance v1, Lcom/aws/account/TestMain$2;

    invoke-direct {v1, p0}, Lcom/aws/account/TestMain$2;-><init>(Lcom/aws/account/TestMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
