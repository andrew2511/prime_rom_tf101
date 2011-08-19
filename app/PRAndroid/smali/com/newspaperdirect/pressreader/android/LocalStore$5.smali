.class Lcom/newspaperdirect/pressreader/android/LocalStore$5;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$26(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    instance-of v5, v5, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;

    if-eqz v5, :cond_1

    .line 249
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$26(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onLibraryItemClick(Landroid/widget/ListAdapter;IZ)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 255
    .local v2, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-eqz v5, :cond_0

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v4, supplements:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 260
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->hasSupplements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplements()Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, lNppr:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v5, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    .end local v1           #lNppr:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    :cond_2
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$5;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const-class v8, Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v7, "new_order_issue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 273
    const-string v7, "new_order_supplements"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 274
    const-string v7, "new_order_title"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 275
    const/4 v7, 0x1

    .line 271
    invoke-virtual {v5, v6, v7}, Lcom/newspaperdirect/pressreader/android/LocalStore;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 263
    .restart local v1       #lNppr:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 266
    .local v3, npr:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    iget-object v6, v3, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-eqz v6, :cond_0

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
