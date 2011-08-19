.class Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;
.super Ljava/lang/Object;
.source "CMBPBookNavigator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IObjectSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectSelector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    return-void
.end method


# virtual methods
.method public hasSelectableObjects()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pageHasObjectSelection()Z

    move-result v0

    return v0
.end method

.method public performAction()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->performAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x2

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAt(III)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v1

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectAt(IIIZ)I

    move-result v0

    .line 93
    .local v0, objectIndex:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    move v1, v2

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectNext()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectNone()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->stop()V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 106
    return-void
.end method

.method public selectPrevious()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/mobipocket/common/library/reader/BookViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->selectPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator$ObjectSelector;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 81
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
