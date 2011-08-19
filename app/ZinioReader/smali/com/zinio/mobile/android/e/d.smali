.class public final Lcom/zinio/mobile/android/e/d;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/e/a;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:[B

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/zinio/mobile/android/e/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/e/d;->c:[B

    .line 20
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/d;->e:Z

    .line 22
    iput v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    .line 24
    iput v1, p0, Lcom/zinio/mobile/android/e/d;->g:I

    .line 37
    iput-object p1, p0, Lcom/zinio/mobile/android/e/d;->b:Ljava/io/InputStream;

    .line 38
    iput-object p2, p0, Lcom/zinio/mobile/android/e/d;->a:Lcom/zinio/mobile/android/e/a;

    .line 39
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 42
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/d;->e:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 66
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/e/d;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/d;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 46
    if-ne v0, v2, :cond_1

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/d;->e:Z

    .line 48
    iput-object v6, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    .line 50
    iget-object v1, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    if-nez v1, :cond_1

    move v0, v2

    .line 51
    goto :goto_0

    .line 55
    :cond_1
    if-lez v0, :cond_3

    :try_start_0
    new-array v1, v0, [B

    :goto_1
    iput-object v1, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    .line 56
    iget-object v1, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/zinio/mobile/android/e/d;->a:Lcom/zinio/mobile/android/e/a;

    iget-object v2, p0, Lcom/zinio/mobile/android/e/d;->c:[B

    iget-object v3, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zinio/mobile/android/e/a;->a([B[BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_2
    :goto_2
    iput v5, p0, Lcom/zinio/mobile/android/e/d;->f:I

    .line 62
    iget-object v0, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    if-nez v0, :cond_4

    .line 63
    iput v5, p0, Lcom/zinio/mobile/android/e/d;->g:I

    .line 66
    :goto_3
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->g:I

    goto :goto_0

    :cond_3
    move-object v1, v6

    .line 55
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    goto :goto_2

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    array-length v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/e/d;->g:I

    goto :goto_3
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->g:I

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/zinio/mobile/android/e/d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    iput v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    .line 133
    iput v1, p0, Lcom/zinio/mobile/android/e/d;->g:I

    .line 134
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 71
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->f:I

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->g:I

    if-lt v0, v1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/zinio/mobile/android/e/d;->a()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 79
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zinio/mobile/android/e/d;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zinio/mobile/android/e/d;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 89
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->f:I

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->g:I

    if-lt v0, v1, :cond_1

    move v0, v3

    .line 92
    :goto_0
    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/zinio/mobile/android/e/d;->a()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 107
    :goto_1
    return v0

    .line 97
    :cond_1
    if-gtz p3, :cond_2

    move v0, v3

    .line 98
    goto :goto_1

    .line 100
    :cond_2
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->g:I

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    sub-int/2addr v0, v1

    .line 101
    if-ge p3, v0, :cond_3

    move v0, p3

    .line 103
    :cond_3
    if-eqz p1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/zinio/mobile/android/e/d;->d:[B

    iget v2, p0, Lcom/zinio/mobile/android/e/d;->f:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :cond_4
    iget v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    goto :goto_1
.end method

.method public final skip(J)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 112
    iget v0, p0, Lcom/zinio/mobile/android/e/d;->g:I

    iget v1, p0, Lcom/zinio/mobile/android/e/d;->f:I

    sub-int/2addr v0, v1

    .line 114
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 115
    int-to-long v0, v0

    .line 117
    :goto_0
    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    move-wide v0, v3

    .line 121
    :goto_1
    return-wide v0

    .line 120
    :cond_0
    iget v2, p0, Lcom/zinio/mobile/android/e/d;->f:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Lcom/zinio/mobile/android/e/d;->f:I

    goto :goto_1

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method
