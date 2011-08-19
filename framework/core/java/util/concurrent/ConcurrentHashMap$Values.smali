.class final Ljava/util/concurrent/ConcurrentHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 1187
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1201
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1202
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 1198
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1195
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1189
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1192
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Values;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Values;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
