.class final Ljava/util/Collections$SingletonMap;
.super Ljava/util/AbstractMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60dcf66e8e80946fL


# instance fields
.field final k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 317
    iput-object p1, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    .line 318
    iput-object p2, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    .line 319
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 323
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    if-nez v0, :cond_a

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 328
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    if-nez v0, :cond_a

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SingletonMap$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonMap$1;-><init>(Ljava/util/Collections$SingletonMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$SingletonMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    iget-object v0, p0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    .line 336
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 341
    .local p0, this:Ljava/util/Collections$SingletonMap;,"Ljava/util/Collections$SingletonMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method
