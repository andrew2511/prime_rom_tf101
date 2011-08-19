.class Lcom/amazon/kcp/library/LibraryActivity$6;
.super Landroid/widget/ArrayAdapter;
.source "LibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->newBooksAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<TBookType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 375
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$6;,"Lcom/amazon/kcp/library/LibraryActivity.6;"
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<TBookType;>;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

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

    .line 380
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity$6;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 381
    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$20;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$ViewType:[I

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v2, v2, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid view mode type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :pswitch_0
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity$6;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/amazon/kcp/library/LibraryActivity;->makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity$6;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/amazon/kcp/library/LibraryActivity;->makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$6;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity;->getCoverGallery()Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity$6;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->makeCoverGalleryBookView(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
