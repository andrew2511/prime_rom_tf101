.class Lcom/amazon/kcp/reader/ui/SelectionButtons$3;
.super Ljava/lang/Object;
.source "SelectionButtons.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/SelectionButtons;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/SelectionButtons;)Lcom/amazon/kcp/reader/ObjectSelectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInDocument()V

    .line 252
    const/4 v0, 0x1

    return v0
.end method
