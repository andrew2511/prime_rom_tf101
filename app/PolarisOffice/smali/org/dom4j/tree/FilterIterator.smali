.class public abstract Lorg/dom4j/tree/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private first:Z

.field private next:Ljava/lang/Object;

.field protected proxy:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    .line 32
    iput-object p1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    .line 33
    return-void
.end method


# virtual methods
.method protected findNext()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    iput-object v2, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    :cond_1
    move-object v1, v2

    .line 90
    :goto_0
    return-object v1

    .line 80
    :cond_2
    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, nextObject:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/FilterIterator;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 83
    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    .line 38
    iput-boolean v1, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected abstract matches(Ljava/lang/Object;)Z
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    .line 50
    .local v0, answer:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
