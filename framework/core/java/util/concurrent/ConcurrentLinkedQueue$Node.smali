.class Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 168
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 170
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J

    .line 172
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "item"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

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
    .line 150
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, item:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 152
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
    .line 155
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, cmp:Ljava/lang/Object;,"TE;"
    .local p2, val:Ljava/lang/Object;,"TE;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p1, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 160
    return-void
.end method
