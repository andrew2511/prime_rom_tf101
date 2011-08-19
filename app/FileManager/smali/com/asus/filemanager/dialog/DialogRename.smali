.class public Lcom/asus/filemanager/dialog/DialogRename;
.super Landroid/app/AlertDialog;
.source "DialogRename.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/dialog/DialogRename$1;,
        Lcom/asus/filemanager/dialog/DialogRename$CancelListener;,
        Lcom/asus/filemanager/dialog/DialogRename$RenameListener;,
        Lcom/asus/filemanager/dialog/DialogRename$EditAction;
    }
.end annotation


# instance fields
.field apContext:Landroid/content/Context;

.field cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

.field dialogID:I

.field private mEditAction:Lcom/asus/filemanager/dialog/DialogRename$EditAction;

.field newName:Landroid/widget/EditText;

.field oldFile:Ljava/io/File;


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
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogRename;->apContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/asus/filemanager/dialog/DialogRename;->dialogID:I

    .line 33
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogRename;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

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
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/asus/filemanager/dialog/DialogRename;->setTitle(I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/asus/filemanager/dialog/DialogRename;->setView(Landroid/view/View;)V

    .line 41
    new-instance v3, Lcom/asus/filemanager/dialog/DialogRename$EditAction;

    invoke-direct {v3, p0, v6}, Lcom/asus/filemanager/dialog/DialogRename$EditAction;-><init>(Lcom/asus/filemanager/dialog/DialogRename;Lcom/asus/filemanager/dialog/DialogRename$1;)V

    iput-object v3, p0, Lcom/asus/filemanager/dialog/DialogRename;->mEditAction:Lcom/asus/filemanager/dialog/DialogRename$EditAction;

    .line 42
    new-instance v1, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;

    invoke-direct {v1, p0, v6}, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogRename;Lcom/asus/filemanager/dialog/DialogRename$1;)V

    .line 43
    .local v1, l:Lcom/asus/filemanager/dialog/DialogRename$CancelListener;
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogRename;->apContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/asus/filemanager/dialog/DialogRename$RenameListener;

    invoke-direct {v5, p0, v6}, Lcom/asus/filemanager/dialog/DialogRename$RenameListener;-><init>(Lcom/asus/filemanager/dialog/DialogRename;Lcom/asus/filemanager/dialog/DialogRename$1;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/asus/filemanager/dialog/DialogRename;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/asus/filemanager/dialog/DialogRename;->apContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1}, Lcom/asus/filemanager/dialog/DialogRename;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogRename;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    return-void
.end method

.method private DoRename()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    const/4 v1, 0x1

    .line 72
    .local v1, r:I
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/filemanager/dialog/DialogNewFolder;->IsSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/4 v1, 0x2

    .line 76
    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 77
    const v2, 0x7f050008

    invoke-static {v2, v4}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    .line 83
    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, b:Landroid/os/Bundle;
    if-nez v1, :cond_6

    .line 85
    const-string v2, "RETURN_SUCCESS"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    :goto_2
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "newname"

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogRename;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v3, p0, Lcom/asus/filemanager/dialog/DialogRename;->dialogID:I

    invoke-interface {v2, v3, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 91
    return-void

    .line 75
    .end local v0           #b:Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogRename;->oldFile:Ljava/io/File;

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3}, Lcom/asus/filemanager/edit/EditUtil;->Rename(Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    const-string v3, ""

    goto :goto_3

    .line 78
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 79
    const v2, 0x7f050007

    invoke-static {v2, v4}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_1

    .line 80
    :cond_5
    if-ne v1, v4, :cond_0

    .line 81
    const v2, 0x7f05000c

    invoke-static {v2, v4}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_1

    .line 87
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_6
    const-string v2, "RETURN_SUCCESS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private EnableButton(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogRename;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    return-void
.end method

.method private FinishDialog()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "RETURN_SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v2, p0, Lcom/asus/filemanager/dialog/DialogRename;->dialogID:I

    invoke-interface {v1, v2, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method static synthetic access$300(Lcom/asus/filemanager/dialog/DialogRename;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogRename;->EnableButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/filemanager/dialog/DialogRename;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asus/filemanager/dialog/DialogRename;->DoRename()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/filemanager/dialog/DialogRename;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asus/filemanager/dialog/DialogRename;->FinishDialog()V

    return-void
.end method


# virtual methods
.method public PrepareDialog(Ljava/io/File;)V
    .locals 5
    .parameter "f"

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogRename;->oldFile:Ljava/io/File;

    .line 57
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogNewFolder;->IsSpecialChar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/asus/filemanager/dialog/DialogRename;->EnableButton(Z)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    :cond_3
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_4
    move v1, v4

    .line 66
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogRename;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogRename;->newName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogRename;->mEditAction:Lcom/asus/filemanager/dialog/DialogRename$EditAction;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    return-void
.end method
