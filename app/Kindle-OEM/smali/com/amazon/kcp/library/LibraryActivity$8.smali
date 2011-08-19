.class Lcom/amazon/kcp/library/LibraryActivity$8;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->initializeBooksView(Landroid/widget/AdapterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$8;,"Lcom/amazon/kcp/library/LibraryActivity.8;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$8;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 996
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$8;,"Lcom/amazon/kcp/library/LibraryActivity.8;"
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$8;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryActivity;->onBooksViewClicked(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 997
    return-void
.end method
