.class public final Llibcore/icu/NativeIDN;
.super Ljava/lang/Object;
.source "NativeIDN.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "flags"
    .parameter "toAscii"

    .prologue
    .line 36
    if-nez p0, :cond_8

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_8
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeIDN;->convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 26
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 31
    :goto_5
    return-object v1

    .line 27
    :catch_6
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    move-object v1, p0

    .line 31
    goto :goto_5
.end method
