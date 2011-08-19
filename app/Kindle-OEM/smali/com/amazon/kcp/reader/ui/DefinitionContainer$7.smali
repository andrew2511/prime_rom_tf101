.class Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;
.super Ljava/lang/Object;
.source "DefinitionContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateDefinitionLinks(ZLcom/amazon/kcp/reader/models/ColorMode;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$400(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$500(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    .line 580
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 582
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$600(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/IAndroidReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IAndroidReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    .line 585
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoPosition(I)V

    .line 604
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$800(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/ObjectSelectionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 612
    return-void

    .line 592
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->closeDocument()V

    .line 593
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v1, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$502(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/reader/models/IBookDocument;)Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 594
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v1, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$402(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/models/ILocalBookItem;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 598
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$700(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$600(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/IAndroidReaderController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/HistoryManager;->push(Lcom/amazon/kcp/application/Historizable;)Z

    .line 602
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$600(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/IAndroidReaderController;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/amazon/kcp/reader/IAndroidReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    goto :goto_0
.end method
