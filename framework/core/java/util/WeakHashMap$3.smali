.class Ljava/util/WeakHashMap$3;
.super Ljava/util/AbstractCollection;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    .local p0, this:Ljava/util/WeakHashMap$3;,"Ljava/util/WeakHashMap.3;"
    iput-object p1, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 442
    .local p0, this:Ljava/util/WeakHashMap$3;,"Ljava/util/WeakHashMap.3;"
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 443
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 447
    .local p0, this:Ljava/util/WeakHashMap$3;,"Ljava/util/WeakHashMap.3;"
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, this:Ljava/util/WeakHashMap$3;,"Ljava/util/WeakHashMap.3;"
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/WeakHashMap$3$1;

    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$3$1;-><init>(Ljava/util/WeakHashMap$3;)V

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 437
    .local p0, this:Ljava/util/WeakHashMap$3;,"Ljava/util/WeakHashMap.3;"
    iget-object v0, p0, Ljava/util/WeakHashMap$3;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
