.class Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    .line 1058
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    const/4 v1, 0x0

    .line 1067
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 1074
    :cond_0
    return-object v1

    .line 1068
    :cond_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v2

    .line 1069
    .local v2, service:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    if-eqz v2, :cond_2

    .line 1070
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->getCountries()Ljava/util/List;

    move-result-object v1

    .line 1072
    :cond_2
    if-nez v1, :cond_0

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;Ljava/util/List;)V

    .line 1081
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->notifyDataSetChanged()V

    .line 1082
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    return-void
.end method
