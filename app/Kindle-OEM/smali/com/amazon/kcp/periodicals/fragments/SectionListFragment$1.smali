.class Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$1;
.super Ljava/lang/Object;
.source "SectionListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$500(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/amazon/kcp/periodicals/fragments/SectionListListener;->onSectionSelected(I)V

    .line 203
    return-void
.end method
