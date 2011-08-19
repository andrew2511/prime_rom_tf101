.class Lcom/amazon/kcp/library/DeleteActivity$4;
.super Landroid/widget/ArrayAdapter;
.source "DeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 95
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/kcp/library/models/IListableBook;>;"
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteActivity$4;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/DeleteActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 100
    .local v0, bookItem:Lcom/amazon/kcp/library/models/IListableBook;
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity$4;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

    invoke-static {v1, v0, p2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getDeleteBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
