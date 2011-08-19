.class final Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final prevOffset:J


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field volatile prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 302
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "prev"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prevOffset:J

    .line 304
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "item"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->itemOffset:J

    .line 306
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->nextOffset:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, item:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 276
    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, cmp:Ljava/lang/Object;,"TE;"
    .local p2, val:Ljava/lang/Object;,"TE;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prevOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->nextOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 284
    return-void
.end method

.method lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p1, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prevOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 292
    return-void
.end method
