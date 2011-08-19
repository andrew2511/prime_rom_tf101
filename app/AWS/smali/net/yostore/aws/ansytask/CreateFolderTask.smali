.class public Lnet/yostore/aws/ansytask/CreateFolderTask;
.super Landroid/os/AsyncTask;
.source "CreateFolderTask.java"


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

.field attr:Ljava/lang/String;

.field ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field ctx:Landroid/content/Context;

.field newName:Ljava/lang/String;

.field parent:Ljava/lang/String;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "ba"
    .parameter "parent"
    .parameter "attr"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->task:Landroid/os/AsyncTask;

    .line 40
    iput-object p2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 41
    iput-object p1, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 43
    iput-object p4, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->parent:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->attr:Ljava/lang/String;

    .line 45
    iput-object p0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->task:Landroid/os/AsyncTask;

    .line 46
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/CreateFolderTask;->showCreateDialog()V

    .line 47
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/CreateFolderTask;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lnet/yostore/aws/ansytask/CreateFolderTask;->chkName(Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method private showCreateDialog()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060074

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, editName:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const-string v2, "Folder Name"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/CreateFolderTask$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/ansytask/CreateFolderTask$1;-><init>(Lnet/yostore/aws/ansytask/CreateFolderTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/CreateFolderTask$2;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/ansytask/CreateFolderTask$2;-><init>(Lnet/yostore/aws/ansytask/CreateFolderTask;Landroid/widget/EditText;)V

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
.method protected createSuccess()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 199
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, rtn:I
    iget-object v6, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->newName:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 84
    :goto_0
    return-object v6

    .line 57
    :cond_0
    new-array v6, v11, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v6}, Lnet/yostore/aws/ansytask/CreateFolderTask;->publishProgress([Ljava/lang/Object;)V

    .line 58
    iget-object v6, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->attr:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 59
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    .line 60
    .local v0, at:Lnet/yostore/aws/api/entity/Attribute;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, currentM:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 64
    const-string v6, "android"

    invoke-virtual {v0, v6}, Lnet/yostore/aws/api/entity/Attribute;->setxMachinename(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->attr:Ljava/lang/String;

    .line 67
    .end local v0           #at:Lnet/yostore/aws/api/entity/Attribute;
    .end local v1           #currentM:Ljava/lang/String;
    :cond_1
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    iget-object v6, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->parent:Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->newName:Ljava/lang/String;

    iget-object v8, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->attr:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v3, helper:Lnet/yostore/aws/api/helper/FolderCreateHelper;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 73
    .local v4, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 74
    const/4 v5, 0x1

    .line 83
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_2
    :goto_1
    new-array v6, v11, [Ljava/lang/Integer;

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v6}, Lnet/yostore/aws/ansytask/CreateFolderTask;->publishProgress([Ljava/lang/Object;)V

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 77
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 79
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v6

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CreateFolderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 94
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lnet/yostore/aws/ansytask/CreateFolderTask;->createSuccess()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    const v1, 0x7f0600b2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CreateFolderTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 181
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060030

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/ansytask/CreateFolderTask$3;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/CreateFolderTask$3;-><init>(Lnet/yostore/aws/ansytask/CreateFolderTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CreateFolderTask;->_mdialog:Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CreateFolderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
