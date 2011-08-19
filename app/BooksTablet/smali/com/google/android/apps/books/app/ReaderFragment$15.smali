.class Lcom/google/android/apps/books/app/ReaderFragment$15;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1190
    .local v1, context:Landroid/content/Context;
    invoke-static {p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v3

    .line 1191
    .local v3, account:Landroid/accounts/Account;
    invoke-static {p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 1192
    .local v4, volumeId:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;->getQuery(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 1194
    .local v5, query:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;

    sget-object v2, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    instance-of v1, p2, Lcom/google/android/apps/books/util/ExceptionCursor;

    if-eqz v1, :cond_0

    .line 1202
    check-cast p2, Lcom/google/android/apps/books/util/ExceptionCursor;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/util/ExceptionCursor;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 1203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem loading search results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1207
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setEmptyLoading(Z)V

    .line 1213
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1211
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1186
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/app/ReaderFragment$15;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1217
    return-void
.end method
