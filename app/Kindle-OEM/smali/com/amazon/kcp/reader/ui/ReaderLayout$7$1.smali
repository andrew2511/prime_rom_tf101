.class Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$7;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$7;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 668
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$700(Lcom/amazon/kcp/reader/ui/ReaderLayout;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 671
    .local v0, currentTitle:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$600(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/PageLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 672
    .local v1, transitionTitle:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    .end local v0           #currentTitle:Landroid/widget/TextView;
    .end local v1           #transitionTitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
