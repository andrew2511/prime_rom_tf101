.class public Lcom/asus/filemanager/dialog/DialogNewFolder;
.super Landroid/app/AlertDialog;
.source "DialogNewFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/dialog/DialogNewFolder$1;,
        Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;,
        Lcom/asus/filemanager/dialog/DialogNewFolder$NewFolderListener;,
        Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;
    }
.end annotation


# instance fields
.field apContext:Landroid/content/Context;

.field cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

.field dialogID:I

.field mEditAction:Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;

.field newName:Landroid/widget/EditText;

.field parentFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->apContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->dialogID:I

    .line 33
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, textEntryView:Landroid/view/View;
    const v3, 0x7f050016

    invoke-virtual {p0, v3}, Lcom/asus/filemanager/dialog/DialogNewFolder;->setTitle(I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/asus/filemanager/dialog/DialogNewFolder;->setView(Landroid/view/View;)V

    .line 41
    new-instance v3, Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;

    invoke-direct {v3, p0, v6}, Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;-><init>(Lcom/asus/filemanager/dialog/DialogNewFolder;Lcom/asus/filemanager/dialog/DialogNewFolder$1;)V

    iput-object v3, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->mEditAction:Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;

    .line 42
    new-instance v1, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;

    invoke-direct {v1, p0, v6}, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogNewFolder;Lcom/asus/filemanager/dialog/DialogNewFolder$1;)V

    .line 43
    .local v1, l:Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->apContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/asus/filemanager/dialog/DialogNewFolder$NewFolderListener;

    invoke-direct {v5, p0, v6}, Lcom/asus/filemanager/dialog/DialogNewFolder$NewFolderListener;-><init>(Lcom/asus/filemanager/dialog/DialogNewFolder;Lcom/asus/filemanager/dialog/DialogNewFolder$1;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/asus/filemanager/dialog/DialogNewFolder;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->apContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1}, Lcom/asus/filemanager/dialog/DialogNewFolder;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogNewFolder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    return-void
.end method

.method private DoNewFolder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 62
    const/4 v1, 0x1

    .line 63
    .local v1, r:I
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogNewFolder;->IsSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v1, 0x2

    .line 67
    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 68
    const v2, 0x7f050009

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v5, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II[Ljava/lang/Object;)V

    .line 78
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, b:Landroid/os/Bundle;
    if-nez v1, :cond_5

    .line 80
    const-string v2, "RETURN_SUCCESS"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    :goto_2
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v3, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->dialogID:I

    invoke-interface {v2, v3, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 84
    return-void

    .line 66
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->parentFile:Ljava/io/File;

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/filemanager/edit/EditUtil;->NewFolder(Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 70
    const v2, 0x7f050007

    invoke-static {v2, v5}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_1

    .line 71
    :cond_2
    if-ne v1, v5, :cond_3

    .line 72
    const v2, 0x7f050017

    invoke-static {v2, v5}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_1

    .line 73
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 74
    const v2, 0x7f050028

    invoke-static {v2, v5}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_1

    .line 76
    :cond_4
    const v2, 0x7f050018

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v5, v3}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II[Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_5
    const-string v2, "RETURN_SUCCESS"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private EnableButton(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method private FinishDialog()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "RETURN_SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v2, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->dialogID:I

    invoke-interface {v1, v2, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public static IsSpecialChar(Ljava/lang/String;)Z
    .locals 5
    .parameter "src"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x2a

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 108
    :goto_0
    return v1

    .line 96
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, temp:Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 106
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v4

    .line 108
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/asus/filemanager/dialog/DialogNewFolder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogNewFolder;->EnableButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/filemanager/dialog/DialogNewFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->DoNewFolder()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/filemanager/dialog/DialogNewFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->FinishDialog()V

    return-void
.end method


# virtual methods
.method public PrepareDialog(Ljava/io/File;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->parentFile:Ljava/io/File;

    .line 56
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->newName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogNewFolder;->mEditAction:Lcom/asus/filemanager/dialog/DialogNewFolder$EditAction;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    return-void
.end method
