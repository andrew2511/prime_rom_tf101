.class Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;
.super Landroid/os/AsyncTask;
.source "Catalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->update()V
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
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$0(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$1(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Z)V

    .line 96
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$2(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->delete()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$3(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CatalogUpdateDate_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$4(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$5(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Ljava/lang/Boolean;)V

    .line 101
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$6(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$6(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;->onCatalogLoaded()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
