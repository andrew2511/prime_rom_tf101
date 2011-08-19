.class Lcom/newspaperdirect/pressreader/android/LocalStore$8;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadCatalog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 394
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$8;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v0

    .line 398
    .local v0, catalog:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 408
    :goto_0
    return-object v1

    .line 399
    :cond_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$8;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->setOnCatalogLoadedListener(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;)V

    .line 405
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$30(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 408
    :cond_1
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$31(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 415
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
