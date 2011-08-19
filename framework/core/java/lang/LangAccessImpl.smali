.class final Ljava/lang/LangAccessImpl;
.super Lorg/apache/harmony/kernel/vm/LangAccess;
.source "LangAccessImpl.java"


# static fields
.field static final THE_ONE:Ljava/lang/LangAccessImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/LangAccessImpl;

    invoke-direct {v0}, Ljava/lang/LangAccessImpl;-><init>()V

    sput-object v0, Ljava/lang/LangAccessImpl;->THE_ONE:Ljava/lang/LangAccessImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/harmony/kernel/vm/LangAccess;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getEnumValuesInOrder(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v0

    .line 38
    .local v0, members:Ljava/lang/ClassMembers;,"Ljava/lang/ClassMembers<TT;>;"
    invoke-virtual {v0}, Ljava/lang/ClassMembers;->getEnumValuesInOrder()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parkFor(J)V
    .registers 4
    .parameter "nanos"

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->parkFor(J)V

    .line 49
    return-void
.end method

.method public parkUntil(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->parkUntil(J)V

    .line 54
    return-void
.end method

.method public unpark(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/Thread;->unpark()V

    .line 44
    return-void
.end method
