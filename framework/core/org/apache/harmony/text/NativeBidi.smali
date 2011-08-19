.class public final Lorg/apache/harmony/text/NativeBidi;
.super Ljava/lang/Object;
.source "NativeBidi.java"


# static fields
.field public static final UBIDI_DEFAULT_LTR:I = 0xfe

.field public static final UBIDI_DEFAULT_RTL:I = 0xff

.field public static final UBIDI_DO_MIRRORING:I = 0x2

.field public static final UBIDI_INSERT_LRM_FOR_NUMERIC:I = 0x4

.field public static final UBIDI_KEEP_BASE_COMBINING:I = 0x1

.field public static final UBIDI_LEVEL_OVERRIDE:I = 0x80

.field public static final UBIDI_MAX_EXPLICIT_LEVEL:I = 0x3d

.field public static final UBIDI_OUTPUT_REVERSE:I = 0x10

.field public static final UBIDI_REMOVE_BIDI_CONTROLS:I = 0x8

.field public static final UBiDiDirection_UBIDI_LTR:I = 0x0

.field public static final UBiDiDirection_UBIDI_MIXED:I = 0x2

.field public static final UBiDiDirection_UBIDI_RTL:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ubidi_close(J)V
.end method

.method public static native ubidi_countRuns(J)I
.end method

.method public static native ubidi_getDirection(J)I
.end method

.method public static native ubidi_getLength(J)I
.end method

.method public static native ubidi_getLevels(J)[B
.end method

.method public static native ubidi_getParaLevel(J)B
.end method

.method public static native ubidi_getRuns(J)[Lorg/apache/harmony/text/BidiRun;
.end method

.method public static native ubidi_open()J
.end method

.method public static native ubidi_reorderVisual([BI)[I
.end method

.method public static native ubidi_setLine(JII)J
.end method

.method public static native ubidi_setPara(J[CII[B)V
.end method
