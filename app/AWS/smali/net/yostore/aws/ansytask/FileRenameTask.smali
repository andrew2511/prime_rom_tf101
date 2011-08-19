.class public Lnet/yostore/aws/ansytask/FileRenameTask;
.super Landroid/os/AsyncTask;
.source "FileRenameTask.java"


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

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field br:Lnet/yostore/aws/handler/entity/FsInfo;

.field ctx:Landroid/content/Context;

.field fileExt:Ljava/lang/String;

.field newName:Ljava/lang/String;

.field oldName:Ljava/lang/String;

.field position:I

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V
    .locals 4
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "ba"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput v3, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->position:I

    .line 30
    iput-object p0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->task:Landroid/os/AsyncTask;

    .line 38
    iput-object p2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 39
    iput p4, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->position:I

    .line 40
    iget-object v1, p3, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    iput-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 41
    iput-object p1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 43
    iput-object p0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->task:Landroid/os/AsyncTask;

    .line 44
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, dotPos:I
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->fileExt:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->oldName:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/FileRenameTask;->showRenameDialog()V

    .line 48
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/FileRenameTask;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lnet/yostore/aws/ansytask/FileRenameTask;->chkName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private chkName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    .line 140
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

    .line 141
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

    .line 142
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 143
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

    .line 140
    goto :goto_0
.end method

.method private showRenameDialog()V
    .locals 5

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, editName:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/FileRenameTask$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/ansytask/FileRenameTask$1;-><init>(Lnet/yostore/aws/ansytask/FileRenameTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/FileRenameTask$2;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/ansytask/FileRenameTask$2;-><init>(Lnet/yostore/aws/ansytask/FileRenameTask;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 136
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, rtn:I
    iget-object v4, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->newName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 77
    :goto_0
    return-object v4

    .line 58
    :cond_0
    new-array v4, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/FileRenameTask;->publishProgress([Ljava/lang/Object;)V

    .line 59
    new-instance v1, Lnet/yostore/aws/api/helper/FileRenameHelper;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    :goto_1
    iget-object v6, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->newName:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v7, v6}, Lnet/yostore/aws/api/helper/FileRenameHelper;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 64
    .local v1, helper:Lnet/yostore/aws/api/helper/FileRenameHelper;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/api/helper/FileRenameHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/FileRenameResponse;

    .line 65
    .local v2, response:Lnet/yostore/aws/api/entity/FileRenameResponse;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/FileRenameResponse;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 66
    const/4 v3, 0x1

    .line 76
    .end local v2           #response:Lnet/yostore/aws/api/entity/FileRenameResponse;
    :cond_1
    :goto_2
    new-array v4, v8, [Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/FileRenameTask;->publishProgress([Ljava/lang/Object;)V

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .end local v1           #helper:Lnet/yostore/aws/api/helper/FileRenameHelper;
    :cond_2
    move v5, v7

    .line 59
    goto :goto_1

    .line 70
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/FileRenameHelper;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 72
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v4

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FileRenameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 87
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 179
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->newName:Ljava/lang/String;

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    const-string v1, "fail..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FileRenameTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 173
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060030

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/ansytask/FileRenameTask$3;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/FileRenameTask$3;-><init>(Lnet/yostore/aws/ansytask/FileRenameTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FileRenameTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
