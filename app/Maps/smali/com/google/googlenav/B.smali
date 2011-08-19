.class public Lcom/google/googlenav/B;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/googlenav/bk;


# instance fields
.field private final b:J

.field private final c:[Lcom/google/googlenav/aC;

.field private final d:Lcom/google/googlenav/bk;

.field private final e:J

.field private final f:Lcom/google/googlenav/bk;

.field private final g:Lcom/google/googlenav/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/bk;

    new-instance v1, Lcom/google/googlenav/bk;

    const/16 v2, 0x240

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v5}, Lcom/google/googlenav/bk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/bk;

    const/16 v3, 0x3e8

    const/16 v4, 0x23f

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/bk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/googlenav/bk;

    const/16 v3, 0x7d0

    const/16 v4, 0x242

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/bk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/googlenav/bk;

    const/16 v3, 0xbb8

    const/16 v4, 0x241

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/bk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/B;->a:[Lcom/google/googlenav/bk;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/bk;JLcom/google/googlenav/bk;Lcom/google/googlenav/bk;J[Lcom/google/googlenav/aC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/B;->d:Lcom/google/googlenav/bk;

    iput-wide p2, p0, Lcom/google/googlenav/B;->e:J

    iput-object p4, p0, Lcom/google/googlenav/B;->f:Lcom/google/googlenav/bk;

    iput-object p5, p0, Lcom/google/googlenav/B;->g:Lcom/google/googlenav/bk;

    iput-wide p6, p0, Lcom/google/googlenav/B;->b:J

    iput-object p8, p0, Lcom/google/googlenav/B;->c:[Lcom/google/googlenav/aC;

    return-void
.end method

.method public static a(JIJIJIJ[Lcom/google/googlenav/aC;)Lcom/google/googlenav/B;
    .locals 11

    const/4 v2, 0x0

    cmp-long v3, p0, p6

    if-lez v3, :cond_0

    move-object v6, v2

    move-wide/from16 v4, p6

    move/from16 p0, p5

    :goto_0
    move-object/from16 v0, p11

    move v1, p0

    invoke-static {v0, v1}, Lcom/google/googlenav/B;->a([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;

    move-result-object v3

    move-object/from16 v0, p11

    move v1, p0

    invoke-static {v0, v1}, Lcom/google/googlenav/B;->b([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;

    move-result-object v7

    new-instance v2, Lcom/google/googlenav/B;

    move-wide/from16 v8, p6

    move-object/from16 v10, p11

    invoke-direct/range {v2 .. v10}, Lcom/google/googlenav/B;-><init>(Lcom/google/googlenav/bk;JLcom/google/googlenav/bk;Lcom/google/googlenav/bk;J[Lcom/google/googlenav/aC;)V

    return-object v2

    :cond_0
    cmp-long p0, p0, p9

    if-lez p0, :cond_1

    move-object/from16 v0, p11

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/google/googlenav/B;->a([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;

    move-result-object p0

    move-object v6, p0

    move-wide v4, p3

    move p0, p2

    goto :goto_0

    :cond_1
    move-object v6, v2

    move-wide v4, p3

    move p0, p2

    goto :goto_0
.end method

.method private static a([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/B;->a:[Lcom/google/googlenav/bk;

    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/googlenav/bk;->a()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v0, Lcom/google/googlenav/B;->a:[Lcom/google/googlenav/bk;

    aget-object v0, v0, v2

    :goto_1
    return-object v0

    :cond_1
    move v1, v2

    :goto_2
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/google/googlenav/bk;->a()I

    move-result v2

    if-ge p1, v2, :cond_3

    :cond_2
    aget-object v0, v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method private static b([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_3

    move-object v0, v3

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/B;->a:[Lcom/google/googlenav/bk;

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/googlenav/bk;->a()I

    move-result v2

    if-ge p1, v2, :cond_1

    aget-object v0, v0, v1

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/bk;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/B;->d:Lcom/google/googlenav/bk;

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/bk;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/B;->c:[Lcom/google/googlenav/aC;

    invoke-static {v0, p1}, Lcom/google/googlenav/B;->a([Lcom/google/googlenav/bk;I)Lcom/google/googlenav/bk;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/googlenav/bk;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/B;->f:Lcom/google/googlenav/bk;

    return-object v0
.end method
