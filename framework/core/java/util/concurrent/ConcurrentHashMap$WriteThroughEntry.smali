.class final Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$SimpleEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    .local p2, k:Ljava/lang/Object;,"TK;"
    .local p3, v:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1136
    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1137
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1150
    :cond_8
    invoke-super {p0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1151
    .local v0, v:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-object v0
.end method
