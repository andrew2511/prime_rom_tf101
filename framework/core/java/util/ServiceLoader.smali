.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$ServiceIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    .local p1, service:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_b

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_b
    iput-object p1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    .line 86
    iput-object p2, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    .line 88
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/ServiceLoader;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/ServiceLoader;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    return-object v0
.end method

.method private internalLoad()V
    .registers 5

    .prologue
    .line 128
    .local p0, this:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    iget-object v2, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 130
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    iget-object v3, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2d} :catch_2e

    .line 135
    .end local v1           #name:Ljava/lang/String;
    :goto_2d
    return-void

    .line 132
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Ljava/io/IOException;
    goto :goto_2d
.end method

.method public static load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, service:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .registers 3
    .parameter
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, service:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    if-nez p1, :cond_6

    .line 122
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 124
    :cond_6
    new-instance v0, Ljava/util/ServiceLoader;

    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, service:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, service:Ljava/lang/Class;,"Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 155
    .local v0, cl:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_11

    .line 156
    :goto_6
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 157
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_6

    .line 160
    :cond_11
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$ServiceIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/ServiceLoader$ServiceIterator;-><init>(Ljava/util/ServiceLoader;Ljava/util/ServiceLoader;)V

    return-object v0
.end method

.method public reload()V
    .registers 1

    .prologue
    .line 95
    .local p0, this:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    invoke-direct {p0}, Ljava/util/ServiceLoader;->internalLoad()V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    .local p0, this:Ljava/util/ServiceLoader;,"Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceLoader for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
