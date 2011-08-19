.class public Lcom/mobipocket/common/library/reader/annotations/RecordComparatorForAnnotations;
.super Ljava/lang/Object;
.source "RecordComparatorForAnnotations.java"

# interfaces
.implements Lcom/mobipocket/common/filesystem/RecordComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public compare([B[B)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const v3, 0x42504152

    const/4 v6, -0x1

    const v2, 0x424b4d4b

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    invoke-static {p1, v5, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    .line 37
    invoke-static {p2, v5, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v1

    .line 40
    if-ne v0, v3, :cond_0

    move v0, v6

    .line 97
    :goto_0
    return v0

    .line 42
    :cond_0
    if-ne v1, v3, :cond_1

    move v0, v4

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    move v0, v5

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    move v0, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-ne v0, v2, :cond_4

    if-eq v1, v2, :cond_4

    move v0, v4

    .line 53
    goto :goto_0

    .line 56
    :cond_4
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V

    .line 59
    new-instance v1, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    invoke-direct {v1, p2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getType()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    move v2, v4

    .line 68
    :goto_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getType()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move v3, v4

    .line 70
    :goto_2
    if-eq v2, v3, :cond_8

    .line 72
    if-eqz v2, :cond_7

    move v0, v4

    .line 73
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    :cond_5
    move v2, v5

    .line 67
    goto :goto_1

    :cond_6
    move v3, v5

    .line 68
    goto :goto_2

    :cond_7
    move v0, v6

    .line 74
    goto :goto_0

    .line 76
    :cond_8
    if-eqz v2, :cond_a

    .line 79
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getPage()I

    move-result v2

    .line 80
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getPage()I

    move-result v3

    .line 83
    if-ge v2, v3, :cond_9

    move v0, v6

    .line 84
    goto :goto_0

    .line 85
    :cond_9
    if-le v2, v3, :cond_a

    move v0, v4

    .line 86
    goto :goto_0

    .line 90
    :cond_a
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getBegin()I

    move-result v0

    .line 91
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getBegin()I

    move-result v1

    .line 93
    if-ge v0, v1, :cond_b

    move v0, v6

    .line 94
    goto :goto_0

    .line 95
    :cond_b
    if-le v0, v1, :cond_c

    move v0, v4

    .line 96
    goto :goto_0

    :cond_c
    move v0, v5

    .line 97
    goto :goto_0
.end method
