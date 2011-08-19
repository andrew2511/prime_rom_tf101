.class Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 693
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$700(Lcom/amazon/kcp/reader/ui/ReaderLayout;)I

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$802(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z

    .line 698
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeAnimation()V

    .line 699
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$902(Lcom/amazon/kcp/reader/ui/ReaderLayout;I)I

    .line 700
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->requestLayout()V

    .line 714
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$700(Lcom/amazon/kcp/reader/ui/ReaderLayout;)I

    move-result v0

    if-gez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->previousPage()V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->nextPage()V

    goto :goto_0
.end method
