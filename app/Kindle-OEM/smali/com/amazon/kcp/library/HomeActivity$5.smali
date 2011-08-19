.class Lcom/amazon/kcp/library/HomeActivity$5;
.super Landroid/widget/ArrayAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/HomeActivity;->newBooksAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/HomeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/HomeActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 301
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/kcp/library/models/IListableBook;>;"
    iput-object p1, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeActivity;->access$400(Lcom/amazon/kcp/library/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 358
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 360
    sget-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->ordinal()I

    move-result v0

    .line 364
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BACK_ISSUES_ROW:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/HomeActivity$5;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BACK_ISSUES_ROW:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getBackIssueCount()I

    move-result v0

    .line 310
    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$6;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$ViewType:[I

    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    iget-object v2, v2, Lcom/amazon/kcp/library/HomeActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid view mode type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity$5;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBackIssuesRow(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    .line 316
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity$5;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBackIssuesCell(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": getView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/HomeActivity$5;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 325
    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$6;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$ViewType:[I

    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    iget-object v2, v2, Lcom/amazon/kcp/library/HomeActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid view mode type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_2
    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity$5;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/amazon/kcp/library/HomeActivity;->makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity$5;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity$5;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/amazon/kcp/library/HomeActivity;->makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->values()[Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
