.class public Lcom/a/a/b/a/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/reflect/Field;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/ref/PhantomReference;

.field private final d:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/a/a/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/a/a;->a:Ljava/util/logging/Logger;

    .line 91
    invoke-static {}, Lcom/a/a/b/a/a;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/a/a;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method private a()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/a/a/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 172
    if-nez p0, :cond_0

    .line 181
    new-instance v0, Lcom/a/a/b/a/b;

    invoke-direct {v0}, Lcom/a/a/b/a/b;-><init>()V

    throw v0

    .line 184
    :cond_0
    :try_start_0
    const-string v0, "finalizeReferent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static b()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 192
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    sget-object v0, Lcom/a/a/b/a/a;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/a/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/b/a/a;->a()Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v2, p0, Lcom/a/a/b/a/a;->c:Ljava/lang/ref/PhantomReference;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/a/a/b/a/b;

    invoke-direct {v0}, Lcom/a/a/b/a/b;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/a/a/b/a/b; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/a/a/b/a/b; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/a/a/b/a/a;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/a/a/b/a/a;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/a/a/b/a/b; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 131
    :catch_2
    move-exception v0

    return-void
.end method
