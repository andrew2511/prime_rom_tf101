.class public final Llibcore/internal/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final pool:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .registers 11
    .parameter "array"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, hashCode:I
    move v1, p2

    .local v1, i:I
    :goto_2
    add-int v5, p2, p3

    if-ge v1, v5, :cond_f

    .line 35
    mul-int/lit8 v5, v0, 0x1f

    aget-char v6, p1, v1

    add-int v0, v5, v6

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39
    :cond_f
    ushr-int/lit8 v5, v0, 0x14

    ushr-int/lit8 v6, v0, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    .line 40
    ushr-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    .line 41
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int v2, v0, v5

    .line 43
    .local v2, index:I
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 44
    .local v3, pooled:Ljava/lang/String;
    if-eqz v3, :cond_30

    invoke-virtual {v3, p1, p2, p3}, Ljava/lang/String;->contentEquals([CII)Z

    move-result v5

    if-eqz v5, :cond_30

    move-object v5, v3

    .line 50
    :goto_2f
    return-object v5

    .line 48
    :cond_30
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 49
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    move-object v5, v4

    .line 50
    goto :goto_2f
.end method
