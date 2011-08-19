.class final Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .registers 2
    .parameter

    .prologue
    .line 2199
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2201
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->nextValue:Ljava/lang/Object;

    .line 2202
    .local v0, v:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->advance()V

    .line 2203
    return-object v0
.end method
