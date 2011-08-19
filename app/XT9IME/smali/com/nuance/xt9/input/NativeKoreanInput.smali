.class public final Lcom/nuance/xt9/input/NativeKoreanInput;
.super Ljava/lang/Object;
.source "NativeKoreanInput.java"


# static fields
.field public static final LANGUAGE_MODEL_BOOST:I = 0x67

.field public static final LANG_MODEL:I = 0x66

.field public static final TRACE_ACCEPT:I = 0x1

.field public static final TRACE_ACCEPT_WITH_SPACE:I = 0x2

.field public static final TRACE_FILTER:I = 0x69

.field public static final TRACE_FILTER_HIGH:I = 0x1

.field public static final TRACE_FILTER_LOW:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native xt9input_korean_addExplicit(I[CII)Z
.end method

.method public static native xt9input_korean_buildHangulWord(I)Z
.end method

.method public static native xt9input_korean_clearAllKeys(I)Z
.end method

.method public static native xt9input_korean_clearKey(I)Z
.end method

.method public static native xt9input_korean_create(Ljava/lang/String;)I
.end method

.method public static native xt9input_korean_decodeHangulWord(I)Z
.end method

.method public static native xt9input_korean_deleteSymbs(III)Z
.end method

.method public static native xt9input_korean_destroy(I)V
.end method

.method public static native xt9input_korean_finish(I)V
.end method

.method public static native xt9input_korean_getDefaultWordIndex(I)I
.end method

.method public static native xt9input_korean_getHangulWord(I[C[I[SI)Z
.end method

.method public static native xt9input_korean_getJamoWord(I[C[II)Z
.end method

.method public static native xt9input_korean_getKeyCount(I)I
.end method

.method public static native xt9input_korean_getKeyPositions(IILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation
.end method

.method public static native xt9input_korean_initTrace(IIII)V
.end method

.method public static native xt9input_korean_isAutoSpaceBeforeTrace(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native xt9input_korean_isLowerSymbol(IC)Z
.end method

.method public static native xt9input_korean_isUpperSymbol(IC)Z
.end method

.method public static native xt9input_korean_processKey(IIII)Z
.end method

.method public static native xt9input_korean_processTap(IIIII)Z
.end method

.method public static native xt9input_korean_processTrace(IILjava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public static native xt9input_korean_start(I)Z
.end method

.method public static native xt9input_korean_toLowerSymbol(IC)C
.end method

.method public static native xt9input_korean_toUpperSymbol(IC)C
.end method
