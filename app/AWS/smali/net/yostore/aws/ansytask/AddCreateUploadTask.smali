.class public Lnet/yostore/aws/ansytask/AddCreateUploadTask;
.super Landroid/os/AsyncTask;
.source "AddCreateUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field ctx:Landroid/content/Context;

.field newName:Ljava/lang/String;

.field task:Landroid/os/AsyncTask;

.field ui:Lnet/yostore/aws/sqlite/entity/UploadItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 0
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->task:Landroid/os/AsyncTask;

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ui:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 31
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->showRenameDialog()V

    .line 32
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/AddCreateUploadTask;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->chkName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/ansytask/AddCreateUploadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->showRenameDialog()V

    return-void
.end method

.method private chkName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    .line 148
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 149
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 150
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 148
    goto :goto_0
.end method

.method private showRenameDialog()V
    .locals 5

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, editName:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ui:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-object v2, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/AddCreateUploadTask$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask$1;-><init>(Lnet/yostore/aws/ansytask/AddCreateUploadTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;-><init>(Lnet/yostore/aws/ansytask/AddCreateUploadTask;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ui:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v1, :cond_0

    .line 41
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 45
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ui:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->newName:Ljava/lang/String;

    iput-object v2, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 46
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ui:Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/AWSServiceInterface;->addUploadItem(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z

    .line 47
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/AWSServiceInterface;->startUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 49
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 52
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 65
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 88
    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 73
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
