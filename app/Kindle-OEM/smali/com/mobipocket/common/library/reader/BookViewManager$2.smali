.class Lcom/mobipocket/common/library/reader/BookViewManager$2;
.super Ljava/lang/Object;
.source "BookViewManager.java"

# interfaces
.implements Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestInterrupt()V
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->cancelPrelayouting()V

    .line 1948
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-nez v0, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin:width-xMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height-yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1904
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v0

    .line 1905
    if-nez v0, :cond_2

    .line 1907
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    .line 1909
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1911
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isPreviousPagePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    .line 1916
    if-ltz v0, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3400(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v1

    .line 1922
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v3, v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderCoverPage(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2902(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1924
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 1925
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->loadPageImages()V

    .line 1926
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    goto/16 :goto_0

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)V

    .line 1938
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3600(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;I)V

    .line 1940
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$2;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;III)V

    goto/16 :goto_0
.end method
