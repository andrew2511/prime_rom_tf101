.class public final Ljava/net/IDN;
.super Ljava/lang/Object;
.source "IDN.java"


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field public static final USE_STD3_ASCII_RULES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 62
    invoke-static {p0, p1}, Llibcore/icu/NativeIDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llibcore/icu/NativeIDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 92
    invoke-static {p0, p1}, Llibcore/icu/NativeIDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
