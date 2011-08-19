.class Lcom/amazon/kcp/library/models/GroupedCatalogView$1;
.super Ljava/lang/Object;
.source "GroupedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/GroupedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private equivalentItem(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 233
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private processGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->onGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v0

    .line 166
    .local v0, change:Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    .line 170
    :cond_0
    return-void
.end method

.method private processGroupedItemChange(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 6
    .parameter "originalCatalogItem"
    .parameter "updatedCatalogItem"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->onGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v0

    .line 195
    .local v0, originalRemovalChange:Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->onGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v1

    .line 197
    .local v1, updatedAddChange:Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 203
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    goto :goto_0

    .line 205
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 207
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2, v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v2, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    iget-object v3, v1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->equivalentItem(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    iget-object v3, v1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->equivalentItem(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    new-instance v3, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    iget-object v4, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    iget-object v5, v1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;-><init>(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    invoke-static {v2, v3}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    goto :goto_0

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    .line 220
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v2, v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    goto :goto_0
.end method

.method private processGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->onGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    move-result-object v0

    .line 258
    .local v0, change:Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public onBulkUpdateBegin()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateBegin()V

    .line 268
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateEnd()V

    .line 274
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    .line 153
    .local v0, isGroupedItem:Z
    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->processGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    iget-object v1, v1, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    .line 178
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->processGroupedItemChange(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    .line 245
    .local v0, isGroupedItem:Z
    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->processGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    iget-object v1, v1, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method
