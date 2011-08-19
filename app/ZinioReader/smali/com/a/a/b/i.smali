.class public Lcom/a/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field final a:Ljava/lang/ref/ReferenceQueue;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const-class v0, Lcom/a/a/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/i;->b:Ljava/util/logging/Logger;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/b/p;

    new-instance v1, Lcom/a/a/b/f;

    invoke-direct {v1}, Lcom/a/a/b/f;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/a/a/b/k;

    invoke-direct {v2}, Lcom/a/a/b/k;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/a/a/b/j;

    invoke-direct {v2}, Lcom/a/a/b/j;-><init>()V

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/a/a/b/p;->a()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-static {v3}, Lcom/a/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/i;->c:Ljava/lang/reflect/Method;

    .line 85
    return-void

    .line 82
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    :try_start_0
    sget-object v0, Lcom/a/a/b/i;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/a/a/b/m;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    move v0, v6

    .line 117
    :goto_0
    iput-object v1, p0, Lcom/a/a/b/i;->a:Ljava/lang/ref/ReferenceQueue;

    .line 118
    iput-boolean v0, p0, Lcom/a/a/b/i;->d:Z

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    sget-object v1, Lcom/a/a/b/i;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    move-object v1, v0

    move v0, v5

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter

    .prologue
    .line 276
    :try_start_0
    const-string v0, "startFinalizer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/a/a/b/i;->b:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/a/a/b/i;->d:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    return-void

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/b/i;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 139
    :try_start_0
    check-cast v0, Lcom/a/a/b/m;

    invoke-interface {v0}, Lcom/a/a/b/m;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/a/a/b/i;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
