.class public Lnet/yostore/aws/view/common/ExitConfirm;
.super Ljava/lang/Object;
.source "ExitConfirm.java"


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/yostore/aws/view/common/ExitConfirm;->ctx:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/view/common/ExitConfirm;->showExitDialog()V

    .line 20
    return-void
.end method

.method private showExitDialog()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/ExitConfirm;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Exit?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    iget-object v1, p0, Lnet/yostore/aws/view/common/ExitConfirm;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/view/common/ExitConfirm$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/ExitConfirm$1;-><init>(Lnet/yostore/aws/view/common/ExitConfirm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    iget-object v1, p0, Lnet/yostore/aws/view/common/ExitConfirm;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/view/common/ExitConfirm$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/ExitConfirm$2;-><init>(Lnet/yostore/aws/view/common/ExitConfirm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method
