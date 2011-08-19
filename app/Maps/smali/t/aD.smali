.class public abstract Lt/aD;
.super Lt/ai;


# static fields
.field public static final f:Ljava/util/Map;


# instance fields
.field protected final g:I

.field private volatile h:Z

.field private final i:I

.field private final j:I

.field private final k:Ljava/util/List;

.field private final l:J

.field private final m:I

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lt/aD;->f:Ljava/util/Map;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt/aD;->f:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lak/h;Ljava/lang/String;IIILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V
    .locals 14

    new-instance v7, Lt/ab;

    const/16 v4, 0xb

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_1

    const/16 v4, 0x24

    :goto_0
    invoke-direct {v7, v4}, Lt/ab;-><init>(I)V

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p11

    invoke-static {v0, v1, v2, v3}, Lt/aD;->a(Ljava/lang/String;IIZ)Lt/c;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lt/aD;->a(I)I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v10, p9

    move/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p12

    invoke-direct/range {v4 .. v13}, Lt/ai;-><init>(Lak/h;Ljava/lang/String;Lt/ay;Lt/c;IZILjava/util/Locale;Ljava/io/File;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lt/aD;->h:Z

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lt/aD;->g:I

    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lt/aD;->i:I

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lt/aD;->j:I

    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lt/aD;->k:Ljava/util/List;

    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lt/aD;->n:I

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lt/aD;->m:I

    :goto_1
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lt/aD;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lt/aD;->f:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    or-long/2addr v4, v7

    goto :goto_2

    :cond_1
    const/16 v4, 0x40

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p5 .. p5}, Lt/aD;->b(I)I

    move-result v4

    iput v4, p0, Lt/aD;->m:I

    goto :goto_1

    :cond_3
    iput-wide v4, p0, Lt/aD;->l:J

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method static synthetic a(Lt/aD;)I
    .locals 1

    iget v0, p0, Lt/aD;->j:I

    return v0
.end method

.method private static a(Ljava/lang/String;IIZ)Lt/c;
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x800

    const/16 v4, 0xf

    const/16 v3, 0xa

    const/4 v1, -0x1

    invoke-static {}, Las/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eq p1, v3, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Lt/ag;

    if-eqz p3, :cond_1

    :goto_0
    new-instance v2, Lt/Q;

    invoke-direct {v2, v3}, Lt/Q;-><init>(I)V

    invoke-direct {v0, p0, v1, v2}, Lt/ag;-><init>(Ljava/lang/String;ILt/L;)V

    :goto_1
    return-object v0

    :cond_1
    const/16 v1, 0x1000

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    move-object v0, v5

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    new-instance v0, Lt/ag;

    if-eqz p3, :cond_4

    :goto_2
    new-instance v2, Lt/v;

    invoke-direct {v2}, Lt/v;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lt/ag;-><init>(Ljava/lang/String;ILt/L;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-ne p1, v4, :cond_7

    new-instance v0, Lt/ag;

    if-eqz p3, :cond_6

    :goto_3
    new-instance v2, Lt/Q;

    invoke-direct {v2, v4}, Lt/Q;-><init>(I)V

    invoke-direct {v0, p0, v1, v2}, Lt/ag;-><init>(Ljava/lang/String;ILt/L;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x100

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    const/16 v0, 0x80

    if-ne p2, v0, :cond_a

    if-ne p1, v3, :cond_a

    :cond_8
    new-instance v0, Lt/ag;

    if-eqz p3, :cond_9

    :goto_4
    new-instance v2, Lt/C;

    invoke-direct {v2}, Lt/C;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lt/ag;-><init>(Ljava/lang/String;ILt/L;)V

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move-object v0, v5

    goto :goto_1
.end method

.method static b(I)I
    .locals 3

    const/16 v2, 0x80

    const/4 v0, 0x0

    move v1, p0

    :goto_0
    if-le v1, v2, :cond_0

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method static synthetic b(Lt/aD;)I
    .locals 1

    iget v0, p0, Lt/aD;->n:I

    return v0
.end method

.method static synthetic c(Lt/aD;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lt/aD;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lt/aD;)Z
    .locals 1

    iget-boolean v0, p0, Lt/aD;->h:Z

    return v0
.end method

.method static synthetic e(Lt/aD;)I
    .locals 1

    iget v0, p0, Lt/aD;->m:I

    return v0
.end method

.method static synthetic f(Lt/aD;)I
    .locals 1

    iget v0, p0, Lt/aD;->i:I

    return v0
.end method

.method static synthetic g(Lt/aD;)J
    .locals 2

    iget-wide v0, p0, Lt/aD;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lt/aD;->h:Z

    return-void
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
