.class public final Lcom/nuance/xt9/input/NativeWriteAlpha;
.super Ljava/lang/Object;
.source "NativeWriteAlpha.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Write_Alpha_addArc(ILjava/util/List;Ljava/util/List;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native Write_Alpha_addWordToUserDictionary(I[CI)I
.end method

.method public static native Write_Alpha_beginArc(I)I
.end method

.method public static native Write_Alpha_changeSettings(ILcom/nuance/xt9/input/WriteAlphaSettings;)I
.end method

.method public static native Write_Alpha_create(Ljava/lang/String;)I
.end method

.method public static native Write_Alpha_destroy(I)I
.end method

.method public static native Write_Alpha_endArc(I)I
.end method

.method public static native Write_Alpha_finish(I)I
.end method

.method public static native Write_Alpha_getDatabaseVersion(I)Ljava/lang/String;
.end method

.method public static native Write_Alpha_getRecognitionCandidate(II[CI[I[I)I
.end method

.method public static native Write_Alpha_getVersion(I)Ljava/lang/String;
.end method

.method public static native Write_Alpha_noteSelectedCandidate(II)I
.end method

.method public static native Write_Alpha_recognize(I[C[I)I
.end method

.method public static native Write_Alpha_start(ILcom/nuance/xt9/input/WriteAlphaSettings;I)I
.end method
