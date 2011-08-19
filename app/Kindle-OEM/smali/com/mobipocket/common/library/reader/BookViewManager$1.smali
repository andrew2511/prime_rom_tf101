.class Lcom/mobipocket/common/library/reader/BookViewManager$1;
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
    .line 1847
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestInterrupt()V
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->cancelPrelayouting()V

    .line 1886
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-nez v0, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v0

    .line 1858
    if-nez v0, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isEndOfFlow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1864
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$3100(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Z)V

    .line 1866
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;III)V

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1875
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling the previous page rendering thread ! @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPreviousPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1878
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$1;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPreviousPageLayoutRunnable()Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/util/SingleThreadManager;->scheduleForLaunch(Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;)V

    .line 1880
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
