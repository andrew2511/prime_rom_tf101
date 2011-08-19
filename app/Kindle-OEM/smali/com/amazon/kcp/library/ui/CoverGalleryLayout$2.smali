.class Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;
.super Ljava/lang/Object;
.source "CoverGalleryLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/CoverGalleryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 213
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-static {v1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->access$100(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 214
    .local v0, book:Lcom/amazon/kcp/library/models/IListableBook;
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->access$200(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 215
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->access$300(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void
.end method
