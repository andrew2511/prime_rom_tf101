.class Lcom/newspaperdirect/pressreader/android/LocalStore$4;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 222
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4, p3, v8}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onLibraryItemClick(Landroid/widget/ListAdapter;IZ)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 228
    .local v2, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountry()Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    .line 230
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->hasSupplements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplements()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$25(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Ljava/util/List;)V

    goto :goto_0

    .line 235
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 236
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$4;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const-class v6, Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string v5, "new_order_issue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 238
    const-string v5, "new_order_title"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v4, v8}, Lcom/newspaperdirect/pressreader/android/LocalStore;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
