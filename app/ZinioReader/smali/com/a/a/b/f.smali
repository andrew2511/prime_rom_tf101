.class final Lcom/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    :try_start_1
    const-string v1, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/a/a/b/i;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Not allowed to access system class loader."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v0, v2

    .line 186
    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 196
    goto :goto_0
.end method
