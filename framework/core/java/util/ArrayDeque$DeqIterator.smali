.class Ljava/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ljava/util/ArrayDeque;)V
    .registers 3
    .parameter

    .prologue
    .line 575
    .local p0, this:Ljava/util/ArrayDeque$DeqIterator;,"Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->head:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$200(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 585
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->tail:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$300(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    .local p0, this:Ljava/util/ArrayDeque$DeqIterator;,"Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 594
    .local p0, this:Ljava/util/ArrayDeque$DeqIterator;,"Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, this:Ljava/util/ArrayDeque$DeqIterator;,"Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_c

    .line 599
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 600
    :cond_c
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v1, v2

    .line 603
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->tail:I
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$300(Ljava/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_22

    if-nez v0, :cond_28

    .line 604
    :cond_22
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 605
    :cond_28
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 606
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 607
    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .local p0, this:Ljava/util/ArrayDeque$DeqIterator;,"Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    const/4 v2, 0x1

    .line 611
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    if-gez v0, :cond_b

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 613
    :cond_b
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    #calls: Ljava/util/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->access$500(Ljava/util/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 614
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    sub-int/2addr v0, v2

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 615
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->tail:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$300(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    .line 617
    :cond_2b
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 618
    return-void
.end method
