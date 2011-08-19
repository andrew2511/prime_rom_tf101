.class public Lcom/tinyline/util/GZIPInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final B:I = -0x4

.field private static final E:Ljava/lang/String; = "Unsupported compression method"

.field private static final F:I = 0x4

.field private static final L:Ljava/lang/String; = "Not in GZIP format"

.field private static final M:[I = null

.field private static final N:I = 0x200

.field private static final O:I = 0x8

.field private static final P:I = 0x8

.field private static final Q:I = 0x1

.field private static final R:I = 0x9

.field private static final U:[I = null

.field private static final X:[I = null

.field private static final Y:I = 0x10

.field private static final a:I = 0x1

.field private static final aB:I = 0x4

.field private static final aD:I = 0x5

.field private static final ad:[I = null

.field private static final ae:I = 0xfff80

.field private static final ag:I = -0x6

.field private static final ah:I = 0xe0

.field private static final ai:I = 0x0

.field private static final aj:I = 0xb

.field private static final ak:I = 0x5

.field private static final am:Ljava/lang/String; = "Corrupt GZIP header"

.field private static final an:I = 0xfff1

.field private static final aq:I = 0x3

.field private static final ar:I = 0xa

.field private static final as:[I = null

.field private static final ax:[I = null

.field private static final ay:I = 0x7

.field private static final az:I = 0x8

.field private static final b:I = 0x6

.field private static final byte:I = -0x5

.field private static final c:[I = null

.field private static final d:I = 0x2

.field private static final do:I = 0xd

.field private static final e:I = 0x4

.field private static final else:I = 0x2

.field private static final f:I = 0x0

.field private static final for:I = 0x3

.field private static final g:I = 0x1

.field private static final h:I = -0x3

.field private static final i:I = 0x2

.field private static final if:I = 0x7

.field private static final j:[S = null

.field private static final k:I = 0x0

.field private static final long:I = 0x9

.field private static final m:I = 0x1

.field private static final n:I = 0xf

.field private static final new:Ljava/lang/String; = "Corrupt GZIP trailer"

.field private static final null:Ljava/lang/String; = "Internal State Error"

.field private static final p:I = 0xc

.field private static q:[S = null

.field private static t:[S = null

.field private static final u:[I = null

.field private static final w:I = 0x2


# instance fields
.field private A:Z

.field private C:I

.field private D:I

.field private G:I

.field private H:Z

.field private I:I

.field private final J:I

.field private K:I

.field private S:I

.field private T:I

.field private V:I

.field protected W:I

.field private Z:[S

.field private aA:[B

.field private aC:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private final af:I

.field private al:I

.field private ao:I

.field private ap:[B

.field private at:I

.field private au:[B

.field private av:I

.field private aw:B

.field private case:I

.field private char:I

.field private goto:I

.field private int:I

.field protected l:Z

.field private o:I

.field private r:[S

.field private s:[B

.field private try:[S

.field protected v:Ljava/io/InputStream;

.field private void:[B

.field protected x:[B

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0x120

    const/16 v4, 0x20

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->U:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->M:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->as:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->u:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->ad:[I

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->j:[S

    new-array v0, v5, [B

    move v1, v6

    :goto_0
    const/16 v2, 0x90

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-byte v8, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x9

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v2, 0x118

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x7

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    aput-byte v8, v0, v1

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-static {v0, v5}, Lcom/tinyline/util/GZIPInputStream;->a([BI)[S

    move-result-object v0

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->q:[S

    new-array v0, v4, [B

    move v1, v6

    :goto_4
    if-ge v1, v4, :cond_4

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-static {v0, v4}, Lcom/tinyline/util/GZIPInputStream;->a([BI)[S

    move-result-object v0

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->t:[S

    new-array v0, v7, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->X:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->c:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/tinyline/util/GZIPInputStream;->ax:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0x2t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x1t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x1t 0x6t 0x0t 0x0t
        0x1t 0x8t 0x0t 0x0t
        0x1t 0xct 0x0t 0x0t
        0x1t 0x10t 0x0t 0x0t
        0x1t 0x18t 0x0t 0x0t
        0x1t 0x20t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x1t 0x40t 0x0t 0x0t
        0x1t 0x60t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x0t 0x0t
        0x8t 0x0t
        0x4t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xat 0x0t
        0x6t 0x0t
        0xet 0x0t
        0x1t 0x0t
        0x9t 0x0t
        0x5t 0x0t
        0xdt 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x7t 0x0t
        0xft 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/tinyline/util/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x8000

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->void:[B

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->J:I

    const/16 v0, 0x7fff

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->af:I

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iput-object p1, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->a(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    if-gtz p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->at:I

    return v0
.end method

.method private a([BII)I
    .locals 6

    const/16 v5, 0x8

    const/4 v1, -0x1

    if-gez p3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, p3

    move v2, p2

    :goto_1
    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    if-lez v3, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    ushr-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_4

    move v1, v3

    :cond_4
    iget-object v3, p0, Lcom/tinyline/util/GZIPInputStream;->aA:[B

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    invoke-static {v3, v4, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->aA:[B

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iput v5, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    :cond_5
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a([S)I
    .locals 4

    const/4 v3, -0x1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v1

    aget-short v1, p1, v1

    if-ltz v1, :cond_0

    and-int/lit8 v2, v1, 0xf

    if-gt v2, v0, :cond_0

    and-int/lit8 v0, v1, 0xf

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    shr-int/lit8 v0, v1, 0x4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    aget-short v0, p1, v0

    if-ltz v0, :cond_2

    and-int/lit8 v1, v0, 0xf

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    shr-int/lit8 v1, v0, 0x4

    neg-int v1, v1

    and-int/lit8 v0, v0, 0xf

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-ltz v0, :cond_3

    shr-int/lit8 v0, v0, 0x9

    or-int/2addr v0, v1

    aget-short v0, p1, v0

    and-int/lit8 v1, v0, 0xf

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x9

    or-int/2addr v1, v2

    aget-short v1, p1, v1

    and-int/lit8 v2, v1, 0xf

    if-gt v2, v0, :cond_4

    and-int/lit8 v0, v1, 0xf

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    shr-int/lit8 v0, v1, 0x4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private static final a(I)S
    .locals 3

    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->j:[S

    and-int/lit8 v1, p0, 0xf

    aget-short v0, v0, v1

    shl-int/lit8 v0, v0, 0xc

    sget-object v1, Lcom/tinyline/util/GZIPInputStream;->j:[S

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-short v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/tinyline/util/GZIPInputStream;->j:[S

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-short v1, v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sget-object v1, Lcom/tinyline/util/GZIPInputStream;->j:[S

    shr-int/lit8 v2, p0, 0xc

    aget-short v1, v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/tinyline/util/GZIPInputStream;->A:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->at:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->al:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    iput-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->try:[S

    iput-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->r:[S

    iput-boolean v1, p0, Lcom/tinyline/util/GZIPInputStream;->H:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a([BI)[S
    .locals 11

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0x10

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    const/4 v3, 0x0

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-byte v3, p0, v2

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x200

    const/4 v4, 0x1

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    :goto_2
    const/16 v5, 0xf

    if-gt v2, v5, :cond_3

    aput v3, v1, v2

    aget v5, v0, v2

    const/16 v6, 0x10

    sub-int/2addr v6, v2

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    const/16 v5, 0x9

    if-le v2, v5, :cond_2

    const v5, 0xfff80

    and-int/2addr v5, v3

    aget v6, v1, v2

    const v7, 0xfff80

    and-int/2addr v6, v7

    sub-int/2addr v5, v6

    const/16 v6, 0x10

    sub-int/2addr v6, v2

    shr-int/2addr v5, v6

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array v2, v4, [S

    if-nez v2, :cond_4

    move-object p0, v2

    :goto_3
    return-object p0

    :cond_4
    const/16 v4, 0x200

    const/16 v5, 0xf

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v10

    :goto_4
    const/16 v6, 0x9

    if-le v3, v6, :cond_6

    const v6, 0xfff80

    and-int/2addr v6, v4

    aget v7, v0, v3

    const/16 v8, 0x10

    sub-int/2addr v8, v3

    shl-int/2addr v7, v8

    sub-int/2addr v4, v7

    const v7, 0xfff80

    and-int/2addr v7, v4

    move v10, v7

    move v7, v5

    move v5, v10

    :goto_5
    if-ge v5, v6, :cond_5

    invoke-static {v5}, Lcom/tinyline/util/GZIPInputStream;->a(I)S

    move-result v8

    neg-int v9, v7

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v2, v8

    const/4 v8, 0x1

    const/16 v9, 0x9

    sub-int v9, v3, v9

    shl-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/lit16 v5, v5, 0x80

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, -0x1

    move v5, v7

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_b

    aget-byte v3, p0, v0

    if-nez v3, :cond_7

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    aget v4, v1, v3

    invoke-static {v4}, Lcom/tinyline/util/GZIPInputStream;->a(I)S

    move-result v5

    const/16 v6, 0x9

    if-gt v3, v6, :cond_9

    :cond_8
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v2, v5

    const/4 v6, 0x1

    shl-int/2addr v6, v3

    add-int/2addr v5, v6

    const/16 v6, 0x200

    if-lt v5, v6, :cond_8

    :goto_8
    const/4 v5, 0x1

    const/16 v6, 0x10

    sub-int/2addr v6, v3

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, v1, v3

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v5, 0x1ff

    aget-short v6, v2, v6

    const/4 v7, 0x1

    and-int/lit8 v8, v6, 0xf

    shl-int/2addr v7, v8

    shr-int/lit8 v6, v6, 0x4

    neg-int v6, v6

    :cond_a
    shr-int/lit8 v8, v5, 0x9

    or-int/2addr v8, v6

    shl-int/lit8 v9, v0, 0x4

    or-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v2, v8

    const/4 v8, 0x1

    shl-int/2addr v8, v3

    add-int/2addr v5, v8

    if-lt v5, v7, :cond_a

    goto :goto_8

    :cond_b
    move-object p0, v2

    goto :goto_3
.end method

.method private byte()Z
    .locals 2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private case()I
    .locals 2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private char()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    new-array v0, v5, [B

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->case()I

    move-result v1

    if-le v1, v5, :cond_0

    move v1, v5

    :cond_0
    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->case()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v5, v1

    :goto_0
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    sub-int v3, v5, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->l:Z

    return-void
.end method

.method private final do(I)I
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    if-ge v0, p1, :cond_1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->aA:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->aA:[B

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    :cond_1
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    shl-int v1, v5, p1

    sub-int/2addr v1, v5

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private do([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xb

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    if-gt p2, v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal State Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    move v1, p3

    move v2, p2

    :cond_4
    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    if-eq v3, v8, :cond_7

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-le v1, v4, :cond_5

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    :goto_1
    sub-int v5, v4, v3

    if-lez v5, :cond_9

    iget-object v6, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    const v7, 0x8000

    sub-int/2addr v7, v5

    invoke-static {v6, v7, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v2

    move v6, v3

    :goto_2
    iget-object v7, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    sub-int/2addr v3, v6

    invoke-static {v7, v3, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-gez v3, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal State Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0x7fff

    move v4, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, v2, v4}, Lcom/tinyline/util/GZIPInputStream;->if([BII)V

    add-int/2addr v2, v4

    add-int/2addr v0, v4

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->at:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->at:I

    sub-int/2addr v1, v4

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->for()I

    move-result v3

    if-gez v3, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal State Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    if-ne v3, v8, :cond_4

    goto :goto_0

    :cond_9
    move v5, v2

    move v6, v4

    goto :goto_2
.end method

.method private do()V
    .locals 2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    and-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    return-void
.end method

.method private else()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->ao:I

    iput-byte v0, p0, Lcom/tinyline/util/GZIPInputStream;->aw:B

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    return-void
.end method

.method private for()I
    .locals 7

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    packed-switch v0, :pswitch_data_0

    move v0, v5

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    shl-int/lit8 v1, v0, 0x8

    shr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf00

    const/16 v2, 0x800

    if-eq v1, v2, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    :pswitch_1
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    if-lez v0, :cond_5

    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->H:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->A:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    move v0, v4

    goto :goto_0

    :cond_6
    const/16 v0, 0xb

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    move v0, v6

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_8

    move v0, v4

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    iput-boolean v6, p0, Lcom/tinyline/util/GZIPInputStream;->H:Z

    :cond_9
    shr-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    move v0, v5

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->do()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :goto_2
    move v0, v6

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->q:[S

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->try:[S

    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->t:[S

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->r:[S

    const/4 v0, 0x7

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    goto :goto_2

    :pswitch_5
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->else()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    if-gez v0, :cond_a

    move v0, v4

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :pswitch_7
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_b

    move v0, v4

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    const v2, 0xffff

    xor-int/2addr v1, v2

    if-eq v0, v1, :cond_c

    move v0, v5

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x5

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :pswitch_8
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    const v1, 0x8000

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->case()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const v1, 0x8000

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_10

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    invoke-direct {p0, v2, v3, v1}, Lcom/tinyline/util/GZIPInputStream;->a([BII)I

    move-result v2

    if-gez v2, :cond_d

    move v0, v5

    goto/16 :goto_0

    :cond_d
    if-ne v2, v1, :cond_1a

    iget-object v3, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    sub-int/2addr v0, v1

    invoke-direct {p0, v3, v4, v0}, Lcom/tinyline/util/GZIPInputStream;->a([BII)I

    move-result v0

    if-gez v0, :cond_e

    move v0, v5

    goto/16 :goto_0

    :cond_e
    add-int/2addr v0, v2

    :cond_f
    :goto_3
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->aa:I

    if-nez v0, :cond_11

    const/4 v0, 0x2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    move v0, v6

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    invoke-direct {p0, v1, v2, v0}, Lcom/tinyline/util/GZIPInputStream;->a([BII)I

    move-result v0

    if-gez v0, :cond_f

    move v0, v5

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    if-eq v0, v1, :cond_12

    move v0, v6

    goto/16 :goto_0

    :cond_12
    move v0, v4

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->int()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v4

    goto/16 :goto_0

    :cond_13
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    move v0, v5

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x7

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :pswitch_a
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->goto()I

    move-result v0

    if-nez v0, :cond_15

    move v0, v4

    goto/16 :goto_0

    :cond_15
    if-ne v0, v6, :cond_16

    move v0, v6

    goto/16 :goto_0

    :cond_16
    move v0, v5

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->do()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    :goto_4
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    if-lez v0, :cond_18

    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_17

    move v0, v4

    goto/16 :goto_0

    :cond_17
    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    goto :goto_4

    :cond_18
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    if-eq v0, v1, :cond_19

    move v0, v5

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0xc

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    move v0, v4

    goto/16 :goto_0

    :pswitch_c
    move v0, v4

    goto/16 :goto_0

    :cond_1a
    move v0, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private for([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tinyline/util/GZIPInputStream;->do([BII)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->long()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->byte()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tinyline/util/GZIPInputStream;->if()V

    goto :goto_0
.end method

.method private goto()I
    .locals 13

    const/16 v11, 0x102

    const v10, 0x8000

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    sub-int v0, v10, v0

    :goto_0
    if-lt v0, v11, :cond_10

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    packed-switch v1, :pswitch_data_0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->try:[S

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->a([S)I

    move-result v1

    and-int/lit16 v2, v1, -0x100

    if-nez v2, :cond_2

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-ne v2, v10, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/lit8 v0, v0, -0x1

    if-ge v0, v11, :cond_0

    move v0, v8

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    move v0, v9

    goto :goto_1

    :cond_3
    const/16 v2, 0x100

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->r:[S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->try:[S

    const/4 v0, 0x2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    move v0, v8

    goto :goto_1

    :cond_4
    const/16 v2, 0x101

    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    const/16 v2, 0x1e

    if-le v1, v2, :cond_6

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->M:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->as:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    :pswitch_1
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    if-lez v1, :cond_8

    const/16 v1, 0x8

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v1

    if-gez v1, :cond_7

    move v0, v9

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    :cond_8
    const/16 v1, 0x9

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    :pswitch_2
    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->r:[S

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->a([S)I

    move-result v1

    if-gez v1, :cond_9

    move v0, v9

    goto :goto_1

    :cond_9
    if-ltz v1, :cond_a

    const/16 v2, 0x1d

    if-le v1, v2, :cond_b

    :cond_a
    move v0, v7

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->u:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/tinyline/util/GZIPInputStream;->I:I

    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->ad:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    :pswitch_3
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    if-lez v1, :cond_d

    const/16 v1, 0xa

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    invoke-direct {p0, v1}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v1

    if-gez v1, :cond_c

    move v0, v9

    goto/16 :goto_1

    :cond_c
    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    invoke-direct {p0, v2}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->I:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->I:I

    :cond_d
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->case:I

    if-le v1, v10, :cond_e

    move v0, v7

    goto/16 :goto_1

    :cond_e
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->I:I

    sub-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x7fff

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    sub-int v3, v10, v3

    if-gt v1, v3, :cond_12

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    if-ge v4, v3, :cond_12

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->I:I

    if-gt v2, v3, :cond_11

    iget-object v3, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget-object v4, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v5, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    :cond_f
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->ab:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    goto/16 :goto_0

    :goto_2
    sub-int v3, v1, v8

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget-object v5, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v5, v2

    aput-byte v2, v1, v4

    move v1, v3

    move v2, v6

    goto :goto_2

    :goto_3
    sub-int v3, v1, v8

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    iget v4, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    iget-object v5, p0, Lcom/tinyline/util/GZIPInputStream;->ap:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v5, v2

    aput-byte v2, v1, v4

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->av:I

    and-int/lit16 v1, v6, 0x7fff

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_10
    move v0, v8

    goto/16 :goto_1

    :cond_11
    move v12, v2

    move v2, v1

    move v1, v12

    goto :goto_2

    :cond_12
    move v12, v2

    move v2, v1

    move v1, v12

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final if(I)V
    .locals 1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    ushr-int/2addr v0, p1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    return-void
.end method

.method private if([BII)V
    .locals 6

    const v2, 0xffff

    const v4, 0xfff1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    and-int/2addr v0, v2

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    const/4 v2, 0x0

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v3, p1, v0

    add-int/2addr v2, v3

    rem-int/2addr v2, v4

    add-int/2addr v1, v2

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v1, 0x10

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    return-void
.end method

.method private int()I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x5

    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    if-gez v0, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    add-int/lit16 v0, v0, 0x101

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    invoke-direct {p0, v5}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iput v7, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    invoke-direct {p0, v5}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->au:[B

    const/4 v0, 0x2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    :pswitch_2
    invoke-direct {p0, v6}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    invoke-direct {p0, v6}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    const/16 v0, 0x13

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->s:[B

    iput v4, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iput v8, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    :goto_2
    :pswitch_3
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->V:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v8}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, v8}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->s:[B

    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->ax:[I

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    aget v2, v2, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->s:[B

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->s:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/tinyline/util/GZIPInputStream;->a([BI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->Z:[S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->s:[B

    iput v4, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iput v6, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    :cond_5
    :pswitch_4
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->Z:[S

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->a([S)I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->au:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/tinyline/util/GZIPInputStream;->aw:B

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    if-ne v0, v1, :cond_5

    :cond_6
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->au:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    invoke-static {v0, v1}, Lcom/tinyline/util/GZIPInputStream;->a([BI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->try:[S

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->au:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ac:I

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->z:I

    invoke-static {v0, v1}, Lcom/tinyline/util/GZIPInputStream;->a([BI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->r:[S

    move v0, v7

    goto/16 :goto_1

    :cond_7
    if-gez v0, :cond_8

    move v0, v4

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    iput-byte v4, p0, Lcom/tinyline/util/GZIPInputStream;->aw:B

    :cond_9
    const/16 v1, 0x10

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->ao:I

    iput v5, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    :pswitch_5
    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->c:[I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->ao:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->do(I)I

    move-result v1

    if-gez v1, :cond_b

    move v0, v4

    goto/16 :goto_1

    :cond_a
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    if-nez v1, :cond_9

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v0}, Lcom/tinyline/util/GZIPInputStream;->if(I)V

    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->X:[I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->ao:I

    aget v0, v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    if-le v1, v2, :cond_c

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_c
    :goto_3
    sub-int v1, v0, v7

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->au:[B

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iget-byte v3, p0, Lcom/tinyline/util/GZIPInputStream;->aw:B

    aput-byte v3, v0, v2

    move v0, v1

    goto :goto_3

    :cond_d
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->char:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->aC:I

    if-eq v0, v1, :cond_6

    iput v6, p0, Lcom/tinyline/util/GZIPInputStream;->S:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private long()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->T:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->C:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private new()I
    .locals 2

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->al:I

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->case()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private null()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    iput-boolean v3, p0, Lcom/tinyline/util/GZIPInputStream;->l:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    sget-object v2, Lcom/tinyline/util/GZIPInputStream;->U:[I

    aget v2, v2, v4

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/tinyline/util/GZIPInputStream;->U:[I

    aget v0, v0, v3

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not in GZIP format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    and-int/lit16 v0, v1, 0xe0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v4

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    :goto_2
    sub-int v2, v0, v3

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_b

    if-gez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_d

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_f

    move v0, v4

    :goto_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    iput-boolean v3, p0, Lcom/tinyline/util/GZIPInputStream;->y:Z

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_2
.end method

.method private try()I
    .locals 1

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->long()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->o:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->D:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->byte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected if()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    iget-object v3, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal State Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    add-int/2addr v1, v0

    if-ltz v0, :cond_2

    if-gt v0, v1, :cond_2

    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    array-length v2, v2

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal State Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget-object v3, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    iget v3, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->G:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->K:I

    move v0, v4

    :cond_4
    iget-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->x:[B

    iput-object v2, p0, Lcom/tinyline/util/GZIPInputStream;->aA:[B

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->goto:I

    iput v1, p0, Lcom/tinyline/util/GZIPInputStream;->int:I

    iget v0, p0, Lcom/tinyline/util/GZIPInputStream;->al:I

    iget v1, p0, Lcom/tinyline/util/GZIPInputStream;->W:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tinyline/util/GZIPInputStream;->al:I

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->void:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/tinyline/util/GZIPInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->void:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tinyline/util/GZIPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->y:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->null()V

    :cond_0
    iget-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->l:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/tinyline/util/GZIPInputStream;->for([BII)I

    move-result v0

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->byte()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/tinyline/util/GZIPInputStream;->char()V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tinyline/util/GZIPInputStream;->v:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    sub-long v3, p1, v1

    const/4 v5, 0x0

    array-length v6, v0

    int-to-long v6, v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_2

    long-to-int v3, v3

    :goto_1
    invoke-virtual {p0, v0, v5, v3}, Lcom/tinyline/util/GZIPInputStream;->read([BII)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tinyline/util/GZIPInputStream;->l:Z

    :cond_1
    return-wide v1

    :cond_2
    array-length v3, v0

    goto :goto_1

    :cond_3
    add-long/2addr v1, v3

    goto :goto_0
.end method
