.class public Lcom/asus/filemanager/dialog/DialogDelete;
.super Landroid/app/AlertDialog;
.source "DialogDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/dialog/DialogDelete$1;,
        Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;,
        Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;
    }
.end annotation


# instance fields
.field apContext:Landroid/content/Context;

.field cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

.field dialogID:I

.field srcFileArray:[Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->apContext:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/asus/filemanager/dialog/DialogDelete;->dialogID:I

    .line 26
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogDelete;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    .line 29
    const v1, 0x1080027

    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->setIcon(I)V

    .line 31
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->setTitle(I)V

    .line 32
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;

    invoke-direct {v0, p0, v4}, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogDelete;Lcom/asus/filemanager/dialog/DialogDelete$1;)V

    .line 35
    .local v0, l:Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogDelete;->apContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;

    invoke-direct {v3, p0, v4}, Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;-><init>(Lcom/asus/filemanager/dialog/DialogDelete;Lcom/asus/filemanager/dialog/DialogDelete$1;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/filemanager/dialog/DialogDelete;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 36
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogDelete;->apContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/asus/filemanager/dialog/DialogDelete;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogDelete;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    return-void
.end method

.method private FinishDialog(Z)V
    .locals 3
    .parameter "r"

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "RETURN_SUCCESS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v2, p0, Lcom/asus/filemanager/dialog/DialogDelete;->dialogID:I

    invoke-interface {v1, v2, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public static ShowResult(I[Ljava/io/File;)V
    .locals 5
    .parameter "r"
    .parameter "fa"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 85
    const v0, 0x7f050007

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-ne p0, v3, :cond_2

    .line 87
    const v0, 0x7f050013

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 90
    :cond_2
    if-eqz p1, :cond_0

    .line 92
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 93
    const v0, 0x7f050014

    new-array v1, v3, [Ljava/lang/Object;

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v3, v1}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_3
    const v0, 0x7f050015

    invoke-static {v0, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/asus/filemanager/dialog/DialogDelete;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogDelete;->FinishDialog(Z)V

    return-void
.end method


# virtual methods
.method public PrepareDialog([Ljava/io/File;)V
    .locals 6
    .parameter "fa"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 42
    const-string v0, ""

    .line 43
    .local v0, s:Ljava/lang/String;
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    .line 44
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    array-length v1, v1

    if-ne v1, v3, :cond_1

    .line 48
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogDelete;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    array-length v1, v1

    if-le v1, v3, :cond_0

    .line 53
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogDelete;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogDelete;->srcFileArray:[Ljava/io/File;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
