.class public Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
.super Ljava/lang/Exception;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodAndArgsCaller"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V
    .registers 3
    .parameter "method"
    .parameter "args"

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 835
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    .line 836
    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    .line 837
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_17

    .line 853
    return-void

    .line 842
    :catch_f
    move-exception v2

    move-object v1, v2

    .line 843
    .local v1, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 844
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_17
    move-exception v2

    move-object v1, v2

    .line 845
    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 846
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_24

    .line 847
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 848
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_24
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2b

    .line 849
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 851
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
