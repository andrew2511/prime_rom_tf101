.class final Ljava/util/concurrent/ConcurrentHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 1166
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1183
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1184
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 1177
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1174
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 1180
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1171
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
