.class final Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TV;>;",
        "Ljava/util/Enumeration",
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
    .line 1120
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

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
    .line 1124
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1125
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValueIterator;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
