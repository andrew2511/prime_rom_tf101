.class final Ljava/util/concurrent/ConcurrentSkipListMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final nextOffset:J

.field private static final valueOffset:J


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 482
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 483
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "value"

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->valueOffset:J

    .line 485
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->nextOffset:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 4
    .parameter
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 374
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 375
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 376
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 387
    iput-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 388
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 389
    return-void
.end method


# virtual methods
.method appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 395
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->valueOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, v:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_8

    .line 477
    const/4 v1, 0x0

    .line 478
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method getValidValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 464
    .local v0, v:Ljava/lang/Object;
    if-eq v0, p0, :cond_a

    invoke-static {}, Ljava/util/concurrent/ConcurrentSkipListMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 465
    :cond_a
    const/4 v1, 0x0

    .line 466
    :goto_b
    return-object v1

    :cond_c
    move-object v1, v0

    goto :goto_b
.end method

.method helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p2, v0, :cond_11

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne p0, v0, :cond_11

    .line 449
    if-eqz p2, :cond_e

    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eq v0, p2, :cond_12

    .line 450
    :cond_e
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    .line 454
    :cond_11
    :goto_11
    return-void

    .line 452
    :cond_12
    iget-object v0, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    goto :goto_11
.end method

.method isBaseHeader()Z
    .registers 3

    .prologue
    .line 423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/ConcurrentSkipListMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isMarker()Z
    .registers 2

    .prologue
    .line 415
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
