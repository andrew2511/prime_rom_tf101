.class public Lcom/splashtop/remote/ServiceActivity;
.super Landroid/app/Activity;
.source "ServiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/splashtop/remote/ServiceActivity;->requestWindowFeature(I)Z

    .line 21
    invoke-virtual {p0}, Lcom/splashtop/remote/ServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "context"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, context:Ljava/lang/String;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, url:Ljava/lang/String;
    const-string v4, "rversion"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 26
    .local v2, rversion:I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070048

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07004c

    new-instance v6, Lcom/splashtop/remote/ServiceActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/splashtop/remote/ServiceActivity$2;-><init>(Lcom/splashtop/remote/ServiceActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07004d

    new-instance v6, Lcom/splashtop/remote/ServiceActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/splashtop/remote/ServiceActivity$1;-><init>(Lcom/splashtop/remote/ServiceActivity;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
