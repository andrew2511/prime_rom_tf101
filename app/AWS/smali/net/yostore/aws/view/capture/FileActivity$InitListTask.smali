.class public Lnet/yostore/aws/view/capture/FileActivity$InitListTask;
.super Landroid/os/AsyncTask;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitListTask"
.end annotation

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

.field checkedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ctx:Landroid/content/Context;

.field mPath:Landroid/widget/TextView;

.field path:Ljava/lang/String;

.field pf:Ljava/io/File;

.field task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lnet/yostore/aws/view/capture/FileActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "path"
    .parameter "mPath"

    .prologue
    .line 192
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    .line 182
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->checkedList:Ljava/util/List;

    .line 176
    iput-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->task:Landroid/os/AsyncTask;

    .line 183
    invoke-static {p1, p3}, Lnet/yostore/aws/view/capture/FileActivity;->access$0(Lnet/yostore/aws/view/capture/FileActivity;Ljava/lang/String;)V

    .line 184
    iput-object p3, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->path:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1, v0}, Lnet/yostore/aws/view/capture/FileActivity;->access$1(Lnet/yostore/aws/view/capture/FileActivity;Ljava/util/List;)V

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1, v0}, Lnet/yostore/aws/view/capture/FileActivity;->access$2(Lnet/yostore/aws/view/capture/FileActivity;Ljava/util/List;)V

    .line 189
    iput-object p4, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->mPath:Landroid/widget/TextView;

    .line 190
    iput-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->task:Landroid/os/AsyncTask;

    .line 191
    iput-object p2, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 196
    const/4 v9, 0x0

    .line 198
    .local v9, rtn:I
    new-array v0, v11, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->publishProgress([Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 205
    .local v6, SDF:[Ljava/io/File;
    new-instance v7, Lnet/yostore/aws/view/capture/FileActivity$DirAlphaComparator;

    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-direct {v7, v0}, Lnet/yostore/aws/view/capture/FileActivity$DirAlphaComparator;-><init>(Lnet/yostore/aws/view/capture/FileActivity;)V

    .line 206
    .local v7, byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 207
    array-length v0, v6

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 213
    .end local v6           #SDF:[Ljava/io/File;
    .end local v7           #byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    :cond_0
    iget-object v10, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    new-instance v0, Lnet/yostore/aws/view/capture/FileAdapter;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/FileActivity;->access$3(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FileActivity;->access$4(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/capture/FileActivity;->access$5(Lnet/yostore/aws/view/capture/FileActivity;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/view/capture/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;J)V

    invoke-static {v10, v0}, Lnet/yostore/aws/view/capture/FileActivity;->access$6(Lnet/yostore/aws/view/capture/FileActivity;Lnet/yostore/aws/view/capture/FileAdapter;)V

    .line 215
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 207
    .restart local v6       #SDF:[Ljava/io/File;
    .restart local v7       #byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    :cond_1
    aget-object v8, v6, v1

    .line 209
    .local v8, file:Ljava/io/File;
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/FileActivity;->access$3(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/FileActivity;->access$4(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 222
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 247
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->publishProgress([Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 249
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->path:Ljava/lang/String;

    sget-object v1, Lnet/yostore/aws/view/capture/FileActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->mPath:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->pf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/ListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->this$0:Lnet/yostore/aws/view/capture/FileActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FileActivity;->access$7(Lnet/yostore/aws/view/capture/FileActivity;)Lnet/yostore/aws/view/capture/FileAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    :goto_1
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->mPath:Landroid/widget/TextView;

    sget-object v1, Lnet/yostore/aws/view/capture/FileActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    const-string v1, "fail..."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 232
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->path:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/view/capture/FileActivity$InitListTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask$1;-><init>(Lnet/yostore/aws/view/capture/FileActivity$InitListTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 240
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
