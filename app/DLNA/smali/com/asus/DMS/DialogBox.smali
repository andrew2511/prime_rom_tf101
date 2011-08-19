.class public Lcom/asus/DMS/DialogBox;
.super Ljava/lang/Object;
.source "DialogBox.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public Finish()V
    .locals 0

    .prologue
    .line 87
    iget-object p0, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method

.method public OK(II)V
    .locals 3
    .parameter "aTitle"
    .parameter "aMessage"

    .prologue
    const/4 v2, 0x1

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, theDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 28
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 29
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 31
    const-string v1, "OK"

    new-instance v2, Lcom/asus/DMS/DialogBox$1;

    invoke-direct {v2, p0}, Lcom/asus/DMS/DialogBox$1;-><init>(Lcom/asus/DMS/DialogBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 40
    return-void
.end method

.method public OKExit(II)V
    .locals 3
    .parameter "aTitle"
    .parameter "aMessage"

    .prologue
    const/4 v2, 0x1

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, theDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    const-string v1, "OK"

    new-instance v2, Lcom/asus/DMS/DialogBox$3;

    invoke-direct {v2, p0}, Lcom/asus/DMS/DialogBox$3;-><init>(Lcom/asus/DMS/DialogBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 81
    return-void
.end method

.method public OKWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, theDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 48
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v1, p0, Lcom/asus/DMS/DialogBox;->mContext:Landroid/content/Context;

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 51
    const-string v1, "OK"

    new-instance v2, Lcom/asus/DMS/DialogBox$2;

    invoke-direct {v2, p0}, Lcom/asus/DMS/DialogBox$2;-><init>(Lcom/asus/DMS/DialogBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 61
    return-void
.end method
