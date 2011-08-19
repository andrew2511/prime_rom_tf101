.class Lcom/amazon/kcp/library/DeleteActivity$3;
.super Ljava/lang/Object;
.source "DeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteActivity$3;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

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
    .line 87
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity$3;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

    invoke-static {v0, p3}, Lcom/amazon/kcp/library/DeleteActivity;->access$100(Lcom/amazon/kcp/library/DeleteActivity;I)V

    .line 88
    return-void
.end method
