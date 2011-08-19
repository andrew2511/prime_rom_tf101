.class Lcom/amazon/kcp/search/SearchActivity$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchActivity$1;->execute(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/SearchActivity$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/SearchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/SearchActivity$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 74
    .local v0, indexOfFirstOnScreenBook:I
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/SearchActivity$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchActivity;->access$100(Lcom/amazon/kcp/search/SearchActivity;)V

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/SearchActivity$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/SearchActivity$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchActivity$1;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/SearchActivity;->access$000(Lcom/amazon/kcp/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 80
    :cond_0
    return-void
.end method
