.class public final Lorg/apache/harmony/dalvik/NativeTestTarget;
.super Ljava/lang/Object;
.source "NativeTestTarget.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static emptyInlineMethod()V
    .registers 0

    .prologue
    .line 60
    return-void
.end method

.method public static native emptyInternalStaticMethod()V
.end method

.method public static native emptyJniStaticMethod0()V
.end method

.method public static native emptyJniStaticMethod6(IIIIII)V
.end method

.method public static native emptyJniStaticMethod6L(Ljava/lang/String;[Ljava/lang/String;[[ILjava/lang/Object;[Ljava/lang/Object;[[[[Ljava/lang/Object;)V
.end method
