.class Lnet/yostore/aws/view/capture/FolderActivity$browseTask;
.super Landroid/os/AsyncTask;
.source "FolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/FolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "browseTask"
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

.field path:Ljava/lang/String;

.field pf:Ljava/io/File;

.field task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lnet/yostore/aws/view/capture/FolderActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 171
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    .line 165
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 166
    iput-object p2, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->path:Ljava/lang/String;

    .line 167
    invoke-static {p1, p2}, Lnet/yostore/aws/view/capture/FolderActivity;->access$0(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->pf:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1, v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$1(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/util/List;)V

    .line 170
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1, v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$2(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 177
    new-array v3, v7, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->publishProgress([Ljava/lang/Object;)V

    .line 180
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->pf:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->pf:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 182
    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->pf:Ljava/io/File;

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    iget-object v4, v4, Lnet/yostore/aws/view/capture/FolderActivity;->filefilter:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 184
    .local v0, SDF:[Ljava/io/File;
    new-instance v1, Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-direct {v1, v3}, Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;)V

    .line 185
    .local v1, byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 186
    array-length v3, v0

    move v4, v5

    :goto_0
    if-lt v4, v3, :cond_1

    .line 193
    .end local v0           #SDF:[Ljava/io/File;
    .end local v1           #byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 186
    .restart local v0       #SDF:[Ljava/io/File;
    .restart local v1       #byDirThenAlpha:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/io/File;>;"
    :cond_1
    aget-object v2, v0, v4

    .line 188
    .local v2, file:Ljava/io/File;
    iget-object v5, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/capture/FolderActivity;->access$3(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v5, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/capture/FolderActivity;->access$4(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 201
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 230
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->path:Ljava/lang/String;

    sget-object v1, Lnet/yostore/aws/view/capture/FolderActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$6(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->pf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    new-instance v1, Lnet/yostore/aws/view/capture/FolderAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/FolderActivity;->access$5(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/FolderActivity;->access$3(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/capture/FolderActivity;->access$4(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnet/yostore/aws/view/capture/FolderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0, v1}, Lnet/yostore/aws/view/capture/FolderActivity;->access$7(Lnet/yostore/aws/view/capture/FolderActivity;Lnet/yostore/aws/view/capture/FolderAdapter;)V

    .line 249
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$5(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/FolderActivity;->access$8(Lnet/yostore/aws/view/capture/FolderActivity;)Lnet/yostore/aws/view/capture/FolderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    :cond_0
    new-array v0, v5, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->publishProgress([Ljava/lang/Object;)V

    .line 253
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$6(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/view/capture/FolderActivity;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/FolderActivity;->access$5(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->this$0:Lnet/yostore/aws/view/capture/FolderActivity;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/capture/FolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->path:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/view/capture/FolderActivity$browseTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask$1;-><init>(Lnet/yostore/aws/view/capture/FolderActivity$browseTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 219
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
