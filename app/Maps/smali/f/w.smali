.class public Lf/w;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:Lf/l;


# instance fields
.field private final b:[Lf/h;

.field private final c:I

.field private final d:I

.field private final e:Lac/p;

.field private f:Z

.field private g:J

.field private h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lf/w;->a:J

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ag()I

    move-result v0

    mul-int/lit16 v0, v0, 0x359

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lf/w;->j:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->m()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1e24

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lf/w;->k:I

    sget v0, Lf/w;->j:I

    sget v1, Lf/w;->k:I

    mul-int/2addr v0, v1

    invoke-static {v0}, LA/h;->c(I)I

    move-result v0

    sput v0, Lf/w;->l:I

    const/16 v0, 0x16

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    sput-object v0, Lf/w;->m:Lf/l;

    return-void
.end method

.method public constructor <init>(Lf/h;Lf/h;II)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Lf/h;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    int-to-long v4, p3

    move-object v0, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lf/w;-><init>([Lf/h;IIJI)V

    return-void
.end method

.method public constructor <init>([Lf/h;IIJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lf/w;->e:Lac/p;

    iput-object p1, p0, Lf/w;->b:[Lf/h;

    iput p2, p0, Lf/w;->c:I

    iput p3, p0, Lf/w;->d:I

    iput p6, p0, Lf/w;->i:I

    iput-wide p4, p0, Lf/w;->h:J

    iget-object v0, p0, Lf/w;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/w;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/w;->f:Z

    return-void
.end method

.method private a(III)I
    .locals 4

    sub-int v0, p2, p1

    int-to-long v0, v0

    int-to-long v2, p3

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method static a(JJJI)J
    .locals 6

    const-wide/16 v1, 0x0

    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    mul-long v0, p0, p2

    div-long/2addr v0, p4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    mul-long v0, p4, p4

    sub-long v2, p4, p2

    sub-long v4, p4, p2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    div-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p2

    mul-long/2addr v0, p2

    mul-long/2addr v0, p4

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    mul-long/2addr v2, p4

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lf/h;IILf/l;)Lf/w;
    .locals 12

    const/4 v2, 0x0

    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    sget v1, Lf/w;->k:I

    div-int v1, v0, v1

    invoke-static {v0}, LA/h;->c(I)I

    move-result v0

    sget v3, Lf/w;->j:I

    if-le v1, v3, :cond_2

    sget v1, Lf/w;->l:I

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    sget v3, Lf/w;->l:I

    mul-int/2addr v3, p2

    div-int v0, v3, v0

    sget v3, Lf/w;->j:I

    sget v4, Lf/w;->l:I

    move v11, v4

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v11

    :goto_0
    if-nez v0, :cond_0

    move v1, v2

    move v6, v2

    :goto_1
    const-wide/16 v3, 0x3e8

    int-to-long v7, v0

    mul-long/2addr v3, v7

    sget v0, Lf/w;->k:I

    int-to-long v7, v0

    div-long v4, v3, v7

    int-to-long v7, v6

    const-wide/32 v9, 0x15752a00

    mul-long/2addr v7, v9

    invoke-virtual {p3}, Lf/l;->b()I

    move-result v0

    int-to-long v9, v0

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0xaba9500

    div-long/2addr v7, v9

    long-to-int v0, v7

    add-int/lit8 v3, v0, 0x1

    div-int v0, v6, v3

    div-int v6, v1, v3

    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [Lf/h;

    aput-object p0, v1, v2

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_1

    add-int/lit8 v8, v7, 0x1

    aget-object v9, v1, v7

    invoke-virtual {v9, v0, v6, p3}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int/2addr v4, v1

    div-int/2addr v4, v0

    neg-int v4, v4

    mul-int/2addr v1, v3

    div-int/2addr v1, v0

    neg-int v1, v1

    move v6, v4

    goto :goto_1

    :cond_1
    new-instance v0, Lf/w;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lf/w;-><init>([Lf/h;IIJI)V

    return-object v0

    :cond_2
    move v3, p2

    move v4, p1

    goto :goto_0
.end method


# virtual methods
.method public a()Lf/h;
    .locals 11

    const-wide/16 v9, 0x2710

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lf/w;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v2

    iget-wide v0, p0, Lf/w;->g:J

    iget-wide v4, p0, Lf/w;->h:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget v0, p0, Lf/w;->d:I

    iget-object v1, p0, Lf/w;->b:[Lf/h;

    array-length v1, v1

    sub-int/2addr v1, v7

    if-le v0, v1, :cond_1

    :cond_0
    iput-boolean v7, p0, Lf/w;->f:Z

    iget-object v0, p0, Lf/w;->b:[Lf/h;

    iget v1, p0, Lf/w;->d:I

    iget-object v2, p0, Lf/w;->b:[Lf/h;

    array-length v2, v2

    sub-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lf/w;->d:I

    iget v1, p0, Lf/w;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v9

    iget-wide v4, p0, Lf/w;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lf/w;->h:J

    iget v6, p0, Lf/w;->i:I

    invoke-static/range {v0 .. v6}, Lf/w;->a(JJJI)J

    move-result-wide v0

    iget v2, p0, Lf/w;->c:I

    int-to-long v2, v2

    div-long v4, v0, v9

    add-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lf/w;->b:[Lf/h;

    array-length v3, v3

    sub-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lf/w;->d:I

    iget v4, p0, Lf/w;->c:I

    if-le v3, v4, :cond_3

    move v3, v7

    :goto_1
    add-int/2addr v3, v2

    iget-object v4, p0, Lf/w;->b:[Lf/h;

    array-length v4, v4

    sub-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    rem-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lf/w;->b:[Lf/h;

    aget-object v1, v1, v2

    sget-object v4, Lf/w;->m:Lf/l;

    invoke-virtual {v1, v4}, Lf/h;->a(Lf/l;)I

    move-result v1

    iget-object v4, p0, Lf/w;->b:[Lf/h;

    aget-object v4, v4, v3

    sget-object v5, Lf/w;->m:Lf/l;

    invoke-virtual {v4, v5}, Lf/h;->a(Lf/l;)I

    move-result v4

    sub-int v1, v4, v1

    sget-object v4, Lf/w;->m:Lf/l;

    invoke-virtual {v4}, Lf/l;->b()I

    move-result v4

    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_4

    add-int/2addr v1, v4

    :cond_2
    :goto_2
    iget-object v4, p0, Lf/w;->b:[Lf/h;

    aget-object v4, v4, v2

    sget-object v5, Lf/w;->m:Lf/l;

    invoke-virtual {v4, v5}, Lf/h;->b(Lf/l;)I

    move-result v4

    iget-object v5, p0, Lf/w;->b:[Lf/h;

    aget-object v3, v5, v3

    sget-object v5, Lf/w;->m:Lf/l;

    invoke-virtual {v3, v5}, Lf/h;->b(Lf/l;)I

    move-result v3

    iget-object v5, p0, Lf/w;->b:[Lf/h;

    aget-object v2, v5, v2

    invoke-direct {p0, v8, v1, v0}, Lf/w;->a(III)I

    move-result v1

    sub-int/2addr v3, v4

    invoke-direct {p0, v8, v3, v0}, Lf/w;->a(III)I

    move-result v0

    sget-object v3, Lf/w;->m:Lf/l;

    invoke-virtual {v2, v1, v0, v3}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    div-int/lit8 v5, v4, 0x2

    if-le v1, v5, :cond_2

    sub-int/2addr v1, v4

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lf/w;->f:Z

    return v0
.end method
