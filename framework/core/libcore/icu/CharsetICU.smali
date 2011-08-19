.class public final Llibcore/icu/CharsetICU;
.super Ljava/nio/charset/Charset;
.source "CharsetICU.java"


# instance fields
.field private final icuCanonicalName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "canonicalName"
    .parameter "icuCanonName"
    .parameter "aliases"

    .prologue
    .line 20
    invoke-direct {p0, p1, p3}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Llibcore/icu/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 4
    .parameter "cs"

    .prologue
    .line 33
    if-nez p1, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 38
    :goto_3
    return v0

    .line 35
    :cond_4
    invoke-virtual {p0, p1}, Llibcore/icu/CharsetICU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    const/4 v0, 0x1

    goto :goto_3

    .line 38
    :cond_c
    invoke-virtual {p0}, Llibcore/icu/CharsetICU;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Llibcore/icu/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Llibcore/icu/CharsetDecoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Llibcore/icu/CharsetDecoderICU;

    move-result-object v0

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Llibcore/icu/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Llibcore/icu/CharsetEncoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Llibcore/icu/CharsetEncoderICU;

    move-result-object v0

    return-object v0
.end method
