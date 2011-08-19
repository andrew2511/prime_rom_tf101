.class Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    .line 1126
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    const/4 v1, 0x0

    .line 1135
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 1139
    :cond_0
    return-object v1

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->getLanguages()Ljava/util/List;

    move-result-object v1

    .line 1137
    if-nez v1, :cond_0

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->onPostExecute(Ljava/util/List;)V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    if-eqz p1, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;Ljava/util/List;)V

    .line 1146
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->notifyDataSetChanged()V

    .line 1147
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

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
    .line 1129
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    return-void
.end method
