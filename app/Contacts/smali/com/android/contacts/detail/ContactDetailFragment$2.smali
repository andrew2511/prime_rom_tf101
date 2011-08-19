.class Lcom/android/contacts/detail/ContactDetailFragment$2;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
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
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    const-string v1, "contactUri"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1260
    .local v0, lookupUri:Landroid/net/Uri;
    new-instance v1, Lcom/android/contacts/ContactLoader;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ContactLoader;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1281
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_0
    :goto_0
    return-void

    .line 1269
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_1
    sget-object v1, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/android/contacts/ContactLoader$Result;->ERROR:Lcom/android/contacts/ContactLoader$Result;

    if-eq p2, v1, :cond_2

    .line 1270
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 1276
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 1278
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onContactNotFound()V

    goto :goto_0

    .line 1272
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_2
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No contact found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/android/contacts/ContactLoader;

    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1256
    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

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
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1284
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 1285
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 1286
    return-void
.end method
