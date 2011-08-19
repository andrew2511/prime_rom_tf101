.class abstract Ljava/util/TreeMap$NavigableSubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NavigableSubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d2f58f19bdef1f8L


# instance fields
.field fromStart:Z

.field hi:Ljava/lang/Object;

.field hiInclusive:Z

.field lo:Ljava/lang/Object;

.field loInclusive:Z

.field m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field toEnd:Z


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .registers 9
    .parameter
    .parameter
    .parameter "fromBound"
    .parameter
    .parameter "toBound"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap$NavigableSubMap;,"Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, delegate:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, from:Ljava/lang/Object;,"TK;"
    .local p4, to:Ljava/lang/Object;,"TK;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1700
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1701
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    .line 1702
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    .line 1703
    iput-object p4, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    .line 1704
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p3, v0, :cond_28

    move v0, v2

    :goto_10
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    .line 1705
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p5, v0, :cond_2a

    move v0, v2

    :goto_17
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    .line 1706
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v0, :cond_2c

    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    .line 1707
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p5, v0, :cond_2e

    move v0, v2

    :goto_25
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    .line 1708
    return-void

    :cond_28
    move v0, v1

    .line 1704
    goto :goto_10

    :cond_2a
    move v0, v1

    .line 1705
    goto :goto_17

    :cond_2c
    move v0, v1

    .line 1706
    goto :goto_1e

    :cond_2e
    move v0, v1

    .line 1707
    goto :goto_25
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1711
    .local p0, this:Ljava/util/TreeMap$NavigableSubMap;,"Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1716
    .local p0, this:Ljava/util/TreeMap$NavigableSubMap;,"Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_23

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    .line 1717
    .local v4, fromBound:Ljava/util/TreeMap$Bound;
    :goto_7
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_2f

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    .line 1718
    .local v6, toBound:Ljava/util/TreeMap$Bound;
    :goto_e
    instance-of v0, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    move v2, v0

    .line 1719
    .local v2, ascending:Z
    :goto_14
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 1716
    .end local v2           #ascending:Z
    .end local v4           #fromBound:Ljava/util/TreeMap$Bound;
    .end local v6           #toBound:Ljava/util/TreeMap$Bound;
    :cond_23
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    if-eqz v0, :cond_2b

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    goto :goto_7

    :cond_2b
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    goto :goto_7

    .line 1717
    .restart local v4       #fromBound:Ljava/util/TreeMap$Bound;
    :cond_2f
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    if-eqz v0, :cond_37

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    goto :goto_e

    :cond_37
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    goto :goto_e

    .line 1718
    .restart local v6       #toBound:Ljava/util/TreeMap$Bound;
    :cond_3b
    const/4 v0, 0x0

    move v2, v0

    goto :goto_14
.end method
