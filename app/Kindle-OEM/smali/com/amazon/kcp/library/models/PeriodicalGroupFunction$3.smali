.class Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;
.super Ljava/lang/Object;
.source "PeriodicalGroupFunction.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->onGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

.field final synthetic val$removedItem:Lcom/amazon/kcp/library/models/ICatalogItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->this$0:Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

    iput-object p2, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->val$removedItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemBeingChanged()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->val$removedItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object v0
.end method

.method public makeChange()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->this$0:Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->val$removedItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->access$000(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;->val$removedItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method
