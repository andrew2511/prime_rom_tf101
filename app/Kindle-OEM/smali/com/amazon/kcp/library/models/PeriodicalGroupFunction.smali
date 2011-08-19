.class public Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;
.super Ljava/lang/Object;
.source "PeriodicalGroupFunction.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;
    }
.end annotation


# instance fields
.field private final groups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pubDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groups:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$1;-><init>(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->pubDateComparator:Ljava/util/Comparator;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groupForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->createGroupForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method private createGroupForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groupNameForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group already exists for item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->pubDateComparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 127
    iget-object v2, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groups:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-object v1
.end method

.method private equivalentItem(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 151
    if-nez p1, :cond_1

    .line 153
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private groupForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/PriorityQueue;
    .locals 2
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groupNameForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, groupName:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/PriorityQueue;

    return-object p0
.end method

.method private groupNameForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 134
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private performChangeOperation(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    .locals 3
    .parameter "operation"

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;->itemBeingChanged()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->canonicalItemForItemGroup(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v1

    .line 177
    .local v1, originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;->makeChange()V

    .line 179
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;->itemBeingChanged()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->canonicalItemForItemGroup(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    .line 181
    .local v0, newCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->equivalentItem(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;->itemBeingChanged()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    new-instance v2, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    invoke-direct {v2, v1, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;-><init>(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 187
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canonicalItemForItemGroup(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groupNameForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, groupName:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->groups:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    .line 119
    .local v0, group:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    move-object v2, p0

    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 69
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isCatalogItemPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    return v0
.end method

.method public onGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    .locals 1
    .parameter "addedItem"

    .prologue
    .line 75
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$2;-><init>(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->performChangeOperation(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v0

    return-object v0
.end method

.method public onGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    .locals 1
    .parameter "removedItem"

    .prologue
    .line 98
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$3;-><init>(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;->performChangeOperation(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$ChangeOperation;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v0

    return-object v0
.end method
