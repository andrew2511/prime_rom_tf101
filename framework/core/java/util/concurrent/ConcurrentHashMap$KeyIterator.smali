.class final Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;
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
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;",
        "Ljava/util/Enumeration",
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
    .line 1112
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1117
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeyIterator;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
