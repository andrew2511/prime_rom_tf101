.class Lcom/amazon/kcp/search/SearchActivity$BookAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookAdapter"
.end annotation


# instance fields
.field private final mBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/SearchActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, books:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/kcp/library/models/IListableBook;>;"
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;->mBooks:Ljava/util/List;

    .line 236
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;->mBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;->mBooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 256
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 262
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;->mBooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/IListableBook;

    invoke-static {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getSearchBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, bookRow:Landroid/view/View;
    return-object v0
.end method
