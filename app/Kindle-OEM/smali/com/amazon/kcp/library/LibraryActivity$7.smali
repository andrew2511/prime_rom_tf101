.class Lcom/amazon/kcp/library/LibraryActivity$7;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryActivity;->buildSortDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;

.field final synthetic val$sortTypes:[I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 881
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$7;,"Lcom/amazon/kcp/library/LibraryActivity.7;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->val$sortTypes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 885
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$7;,"Lcom/amazon/kcp/library/LibraryActivity.7;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget v0, v0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->val$sortTypes:[I

    aget v1, v1, p2

    if-eq v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$7;->val$sortTypes:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->access$300(Lcom/amazon/kcp/library/LibraryActivity;I)V

    .line 890
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 892
    :cond_0
    return-void
.end method
