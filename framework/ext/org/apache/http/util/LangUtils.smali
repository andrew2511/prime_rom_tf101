.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 64
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    if-nez p0, :cond_a

    .line 69
    if-nez p1, :cond_8

    move v1, v4

    .line 83
    :goto_7
    return v1

    :cond_8
    move v1, v3

    .line 72
    goto :goto_7

    .line 75
    :cond_a
    if-eqz p1, :cond_25

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_25

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_23

    .line 77
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v3

    .line 78
    goto :goto_7

    .line 76
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    move v1, v4

    .line 81
    goto :goto_7

    .end local v0           #i:I
    :cond_25
    move v1, v3

    .line 83
    goto :goto_7
.end method

.method public static hashCode(II)I
    .registers 3
    .parameter "seed"
    .parameter "hashcode"

    .prologue
    .line 52
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 3
    .parameter "seed"
    .parameter "obj"

    .prologue
    .line 60
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static hashCode(IZ)I
    .registers 3
    .parameter "seed"
    .parameter "b"

    .prologue
    .line 56
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method
