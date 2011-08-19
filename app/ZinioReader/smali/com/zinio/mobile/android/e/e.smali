.class public final Lcom/zinio/mobile/android/e/e;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# instance fields
.field private h:Lcom/zinio/mobile/android/e/a;

.field private i:Ljava/io/InputStream;

.field private j:[B

.field private k:[B

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 12
    const/4 v0, 0x5

    sput v0, Lcom/zinio/mobile/android/e/e;->a:I

    .line 13
    sput v2, Lcom/zinio/mobile/android/e/e;->b:I

    .line 14
    const/16 v0, 0x8

    sput v0, Lcom/zinio/mobile/android/e/e;->c:I

    .line 15
    sput v1, Lcom/zinio/mobile/android/e/e;->d:I

    .line 16
    const/16 v0, 0x3c

    sput v0, Lcom/zinio/mobile/android/e/e;->e:I

    .line 17
    sput v2, Lcom/zinio/mobile/android/e/e;->f:I

    .line 18
    sput v1, Lcom/zinio/mobile/android/e/e;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    sget v0, Lcom/zinio/mobile/android/e/e;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    .line 29
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/e;->l:Z

    .line 31
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    .line 33
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->n:I

    .line 39
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/e;->o:Z

    .line 40
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/e;->p:Z

    .line 41
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/e;->q:Z

    .line 42
    iput-boolean v1, p0, Lcom/zinio/mobile/android/e/e;->r:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->s:I

    .line 46
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->t:I

    .line 47
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->u:I

    .line 49
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->v:I

    .line 66
    iput-object p1, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    .line 67
    iput p3, p0, Lcom/zinio/mobile/android/e/e;->s:I

    .line 68
    new-instance v0, Lcom/zinio/mobile/android/e/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/e/a;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/e/e;->h:Lcom/zinio/mobile/android/e/a;

    .line 69
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->h:Lcom/zinio/mobile/android/e/a;

    invoke-static {p2}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/e/a;->a([B)V

    .line 70
    return-void
.end method

.method private a()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->l:Z

    if-eqz v0, :cond_0

    move v0, v8

    .line 134
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->o:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    sget v2, Lcom/zinio/mobile/android/e/e;->a:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    .line 78
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sget v1, Lcom/zinio/mobile/android/e/e;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    .line 79
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->v:I

    sget v1, Lcom/zinio/mobile/android/e/e;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->v:I

    .line 80
    iput-boolean v6, p0, Lcom/zinio/mobile/android/e/e;->o:Z

    .line 85
    :cond_1
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->s:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sub-int/2addr v0, v1

    sget v1, Lcom/zinio/mobile/android/e/e;->d:I

    if-le v0, v1, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->q:Z

    .line 87
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->p:Z

    if-nez v0, :cond_6

    .line 88
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->s:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sub-int/2addr v0, v1

    sget v1, Lcom/zinio/mobile/android/e/e;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->u:I

    .line 89
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    iget v2, p0, Lcom/zinio/mobile/android/e/e;->u:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 91
    if-lez v0, :cond_4

    new-array v1, v0, [B

    .line 92
    :goto_2
    iget-object v2, p0, Lcom/zinio/mobile/android/e/e;->h:Lcom/zinio/mobile/android/e/a;

    iget-object v3, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    invoke-virtual {v2, v3, v1, v5, v0}, Lcom/zinio/mobile/android/e/a;->a([B[BII)V

    .line 94
    if-lez v0, :cond_5

    sget v2, Lcom/zinio/mobile/android/e/e;->g:I

    sub-int v2, v0, v2

    new-array v2, v2, [B

    :goto_3
    iput-object v2, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    .line 95
    sget v2, Lcom/zinio/mobile/android/e/e;->g:I

    iget-object v3, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    iget-object v4, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    array-length v4, v4

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v1, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sget v2, Lcom/zinio/mobile/android/e/e;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/e/e;->t:I

    .line 98
    iput-boolean v6, p0, Lcom/zinio/mobile/android/e/e;->p:Z

    .line 122
    :cond_2
    :goto_4
    if-ne v0, v8, :cond_9

    .line 123
    iput-boolean v6, p0, Lcom/zinio/mobile/android/e/e;->l:Z

    .line 124
    iput-object v7, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    .line 125
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    if-nez v0, :cond_9

    move v0, v8

    .line 126
    goto :goto_0

    :cond_3
    move v0, v5

    .line 85
    goto :goto_1

    :cond_4
    move-object v1, v7

    .line 91
    goto :goto_2

    :cond_5
    move-object v2, v7

    .line 94
    goto :goto_3

    .line 99
    :cond_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->q:Z

    if-eqz v0, :cond_7

    .line 100
    sget v0, Lcom/zinio/mobile/android/e/e;->e:I

    sget v1, Lcom/zinio/mobile/android/e/e;->c:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    .line 103
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    sget v2, Lcom/zinio/mobile/android/e/e;->e:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    .line 105
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sget v1, Lcom/zinio/mobile/android/e/e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    .line 108
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    sget v2, Lcom/zinio/mobile/android/e/e;->c:I

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->h:Lcom/zinio/mobile/android/e/a;

    iget-object v2, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    iget-object v3, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    sget v4, Lcom/zinio/mobile/android/e/e;->e:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zinio/mobile/android/e/a;->a([B[BII)V

    .line 111
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sget v1, Lcom/zinio/mobile/android/e/e;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->t:I

    .line 112
    sget v0, Lcom/zinio/mobile/android/e/e;->e:I

    sget v1, Lcom/zinio/mobile/android/e/e;->c:I

    add-int/2addr v0, v1

    goto :goto_4

    .line 114
    :cond_7
    iget-boolean v0, p0, Lcom/zinio/mobile/android/e/e;->r:Z

    if-nez v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    iget v2, p0, Lcom/zinio/mobile/android/e/e;->s:I

    iget v3, p0, Lcom/zinio/mobile/android/e/e;->t:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 116
    if-lez v0, :cond_2

    .line 117
    if-lez v0, :cond_8

    new-array v1, v0, [B

    :goto_5
    iput-object v1, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    .line 118
    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->h:Lcom/zinio/mobile/android/e/a;

    iget-object v2, p0, Lcom/zinio/mobile/android/e/e;->j:[B

    iget-object v3, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/zinio/mobile/android/e/a;->a([B[BII)V

    goto :goto_4

    :cond_8
    move-object v1, v7

    .line 117
    goto :goto_5

    .line 129
    :cond_9
    iput v5, p0, Lcom/zinio/mobile/android/e/e;->m:I

    .line 130
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    if-nez v0, :cond_a

    .line 131
    iput v5, p0, Lcom/zinio/mobile/android/e/e;->n:I

    .line 134
    :goto_6
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->n:I

    goto/16 :goto_0

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    array-length v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/e/e;->n:I

    goto :goto_6

    :cond_b
    move v0, v5

    goto/16 :goto_4
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->n:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    .line 201
    iput v1, p0, Lcom/zinio/mobile/android/e/e;->n:I

    .line 202
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 139
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->m:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->n:I

    if-lt v0, v1, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/zinio/mobile/android/e/e;->a()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 147
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zinio/mobile/android/e/e;->m:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zinio/mobile/android/e/e;->read([BII)I

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

    .line 157
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->m:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->n:I

    if-lt v0, v1, :cond_1

    move v0, v3

    .line 160
    :goto_0
    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/zinio/mobile/android/e/e;->a()I

    move-result v0

    goto :goto_0

    .line 162
    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 175
    :goto_1
    return v0

    .line 165
    :cond_1
    if-gtz p3, :cond_2

    move v0, v3

    .line 166
    goto :goto_1

    .line 168
    :cond_2
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->n:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    sub-int/2addr v0, v1

    .line 169
    if-ge p3, v0, :cond_3

    move v0, p3

    .line 171
    :cond_3
    if-eqz p1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/zinio/mobile/android/e/e;->k:[B

    iget v2, p0, Lcom/zinio/mobile/android/e/e;->m:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_4
    iget v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    goto :goto_1
.end method

.method public final skip(J)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 180
    iget v0, p0, Lcom/zinio/mobile/android/e/e;->n:I

    iget v1, p0, Lcom/zinio/mobile/android/e/e;->m:I

    sub-int/2addr v0, v1

    .line 182
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 183
    int-to-long v0, v0

    .line 185
    :goto_0
    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    move-wide v0, v3

    .line 189
    :goto_1
    return-wide v0

    .line 188
    :cond_0
    iget v2, p0, Lcom/zinio/mobile/android/e/e;->m:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Lcom/zinio/mobile/android/e/e;->m:I

    goto :goto_1

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method
