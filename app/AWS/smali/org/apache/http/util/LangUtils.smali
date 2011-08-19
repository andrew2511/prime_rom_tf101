.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 63
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 68
    if-nez p1, :cond_0

    move v1, v4

    .line 82
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    if-eqz p1, :cond_4

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 76
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 77
    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 80
    goto :goto_0

    .end local v0           #i:I
    :cond_4
    move v1, v3

    .line 82
    goto :goto_0
.end method

.method public static hashCode(II)I
    .locals 1
    .parameter "seed"
    .parameter "hashcode"

    .prologue
    .line 51
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .locals 1
    .parameter "seed"
    .parameter "obj"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hashCode(IZ)I
    .locals 1
    .parameter "seed"
    .parameter "b"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
