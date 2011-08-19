.class Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;
.super Ljava/lang/Object;
.source "AppendingLayoutBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->setLayoutToAppend(Lcom/amazon/topaz/internal/layout/Block;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private syncedLeftIterator:Z

.field final synthetic this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

.field final synthetic val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutIterator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->syncedLeftIterator:Z

    return-void
.end method

.method private fail(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ LAYOUT APPEND - SYNC FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$402(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutTraverser;)Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    .line 307
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public endBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 2
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->syncedLeftIterator:Z

    .line 422
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$700(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$702(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 423
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$800(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$802(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 312
    .line 314
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->syncedLeftIterator:Z

    if-nez v0, :cond_2

    move-object v1, v3

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 321
    instance-of v2, v0, Lcom/amazon/topaz/internal/layout/Block;

    if-eqz v2, :cond_0

    .line 323
    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 324
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-ne v1, v2, :cond_1

    .line 356
    :goto_1
    if-nez v0, :cond_5

    .line 358
    const-string v0, "No overlap"

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->fail(Ljava/lang/String;)I

    move-result v0

    .line 375
    :goto_2
    return v0

    :cond_1
    move-object v1, v3

    .line 328
    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    new-instance v1, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$400(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;-><init>(Lcom/amazon/topaz/internal/layout/LayoutTraverser;)V

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$502(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    .line 341
    const/4 v0, 0x2

    goto :goto_2

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$600(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/amazon/topaz/internal/layout/Block;

    if-eqz v1, :cond_3

    .line 350
    :cond_4
    instance-of v1, v0, Lcom/amazon/topaz/internal/layout/Block;

    if-eqz v1, :cond_8

    .line 352
    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 363
    const-string v0, "Block spec mismatch"

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->fail(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 366
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->syncedLeftIterator:Z

    .line 372
    :cond_7
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v1, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$702(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 373
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$802(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    .line 375
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public visitLine(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/internal/layout/LayoutLine;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    new-instance v1, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$400(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;-><init>(Lcom/amazon/topaz/internal/layout/LayoutTraverser;)V

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$502(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    .line 387
    const/4 v0, 0x2

    .line 414
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 394
    const/4 v1, 0x0

    .line 395
    instance-of v2, v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    if-eqz v2, :cond_4

    .line 397
    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 400
    :goto_1
    if-nez v0, :cond_1

    .line 402
    const-string v0, "Unexpected object on the left"

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->fail(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->val$leftTreeIterator:Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    :cond_2
    invoke-virtual {v0, p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->isCompatible(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    const-string v0, "Line mismatch!"

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->fail(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;->this$0:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-static {v0, p2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->access$602(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 414
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
