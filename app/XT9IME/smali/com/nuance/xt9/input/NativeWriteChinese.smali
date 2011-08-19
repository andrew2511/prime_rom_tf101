.class public final Lcom/nuance/xt9/input/NativeWriteChinese;
.super Ljava/lang/Object;
.source "NativeWriteChinese.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Write_Chinese_addArc(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native Write_Chinese_beginArc(I)I
.end method

.method public static native Write_Chinese_changeSettings(ILcom/nuance/xt9/input/WriteChineseSettings;)I
.end method

.method public static native Write_Chinese_create(Ljava/lang/String;)I
.end method

.method public static native Write_Chinese_destroy(I)I
.end method

.method public static native Write_Chinese_endArc(I)I
.end method

.method public static native Write_Chinese_finish(I)I
.end method

.method public static native Write_Chinese_getDatabaseVersion(I)Ljava/lang/String;
.end method

.method public static native Write_Chinese_getVersion(I)Ljava/lang/String;
.end method

.method public static native Write_Chinese_getWord(II[C[II)Z
.end method

.method public static native Write_Chinese_recognize(IC[C[I)I
.end method

.method public static native Write_Chinese_setAttribute(III)Z
.end method

.method public static native Write_Chinese_setContext(I[CI)Z
.end method

.method public static native Write_Chinese_start(ILcom/nuance/xt9/input/WriteChineseSettings;I)I
.end method
