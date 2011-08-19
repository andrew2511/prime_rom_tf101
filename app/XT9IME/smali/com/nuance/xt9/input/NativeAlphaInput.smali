.class public final Lcom/nuance/xt9/input/NativeAlphaInput;
.super Ljava/lang/Object;
.source "NativeAlphaInput.java"


# static fields
.field public static final AUTO_CORRECTION_MODE:I = 0x64

.field public static final AUTO_CORRECTION_MODE_HIGH:I = 0x2

.field public static final AUTO_CORRECTION_MODE_LOW:I = 0x1

.field public static final AUTO_CORRECTION_MODE_OFF:I = 0x0

.field public static final AUTO_SPACE:I = 0x68

.field public static final DEFAULT_AUTO_CORRECTION_MODE:I = 0x0

.field public static final DEFAULT_WORD_COMPLETION_POINT:I = 0x3

.field public static final LANGUAGE_MODEL_BOOST:I = 0x67

.field public static final LANG_MODEL:I = 0x66

.field public static final TRACE_ACCEPT:I = 0x1

.field public static final TRACE_ACCEPT_WITH_SPACE:I = 0x2

.field public static final TRACE_FILTER:I = 0x69

.field public static final TRACE_FILTER_HIGH:I = 0x1

.field public static final TRACE_FILTER_LOW:I = 0x0

.field public static final WORD_COMPLETION_POINT:I = 0x65

.field public static final WORD_COMPLETION_POINT_AFTER_FIVE_KEYS:I = 0x5

.field public static final WORD_COMPLETION_POINT_AFTER_FOUR_KEYS:I = 0x4

.field public static final WORD_COMPLETION_POINT_AFTER_ONE_KEY:I = 0x1

.field public static final WORD_COMPLETION_POINT_AFTER_SIX_KEYS:I = 0x6

.field public static final WORD_COMPLETION_POINT_AFTER_THREE_KEYS:I = 0x3

.field public static final WORD_COMPLETION_POINT_AFTER_TWO_KEYS:I = 0x2

.field public static final WORD_COMPLETION_POINT_OFF:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native xt9input_alpha_addExplicit(I[CII)Z
.end method

.method public static native xt9input_alpha_addWordToUserDictionary(I[CI)Z
.end method

.method public static native xt9input_alpha_asdb_add(I[CI[CI)Z
.end method

.method public static native xt9input_alpha_asdb_count(I)I
.end method

.method public static native xt9input_alpha_asdb_delete(I[CI)Z
.end method

.method public static native xt9input_alpha_asdb_find(I[CI[CI)Z
.end method

.method public static native xt9input_alpha_asdb_getNext(I[C[I[C[II)Z
.end method

.method public static native xt9input_alpha_asdb_reset(I)V
.end method

.method public static native xt9input_alpha_breakContext(I)V
.end method

.method public static native xt9input_alpha_buildSelectionList(I)I
.end method

.method public static native xt9input_alpha_clearAllKeys(I)Z
.end method

.method public static native xt9input_alpha_clearKey(I)Z
.end method

.method public static native xt9input_alpha_create(Ljava/lang/String;)I
.end method

.method public static native xt9input_alpha_destroy(I)V
.end method

.method public static native xt9input_alpha_finish(I)V
.end method

.method public static native xt9input_alpha_getDefaultWordIndex(I)I
.end method

.method public static native xt9input_alpha_getExactType(I[CI)I
.end method

.method public static native xt9input_alpha_getInlineText(I[CI)I
.end method

.method public static native xt9input_alpha_getKeyCount(I)I
.end method

.method public static native xt9input_alpha_getKeyPositions(IILjava/util/List;)Z
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

.method public static native xt9input_alpha_getWord(II[C[C[II)Z
.end method

.method public static native xt9input_alpha_initTrace(IIII)V
.end method

.method public static native xt9input_alpha_isAutoSpaceBeforeTrace(IILjava/util/List;)I
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

.method public static native xt9input_alpha_isInlineKnown(I)Z
.end method

.method public static native xt9input_alpha_isLowerSymbol(IC)Z
.end method

.method public static native xt9input_alpha_isUpperSymbol(IC)Z
.end method

.method public static native xt9input_alpha_processKey(IIII)Z
.end method

.method public static native xt9input_alpha_processTap(IIIII)Z
.end method

.method public static native xt9input_alpha_processTrace(IILjava/util/List;I)Z
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

.method public static native xt9input_alpha_recaptureWord(II[CI)Z
.end method

.method public static native xt9input_alpha_setAttribute(III)Z
.end method

.method public static native xt9input_alpha_setContext(I[CI)V
.end method

.method public static native xt9input_alpha_setLanguage(II)Z
.end method

.method public static native xt9input_alpha_start(I)Z
.end method

.method public static native xt9input_alpha_toLowerSymbol(IC)C
.end method

.method public static native xt9input_alpha_toUpperSymbol(IC)C
.end method

.method public static native xt9input_alpha_udb_add(I[CI)Z
.end method

.method public static native xt9input_alpha_udb_count(I)I
.end method

.method public static native xt9input_alpha_udb_delete(I[CI)Z
.end method

.method public static native xt9input_alpha_udb_find(I[CI)Z
.end method

.method public static native xt9input_alpha_udb_getNext(I[C[II)Z
.end method

.method public static native xt9input_alpha_udb_reset(I)V
.end method

.method public static native xt9input_alpha_wordSelected(II)V
.end method
