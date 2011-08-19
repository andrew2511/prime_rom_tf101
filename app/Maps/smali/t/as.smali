.class public Lt/as;
.super Lt/aD;


# static fields
.field private static final h:Ljava/util/List;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lt/as;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lt/as;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lt/as;->a(Lak/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x100

    sget-object v6, Lt/as;->h:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lt/aD;-><init>(Lak/h;Ljava/lang/String;IIILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    const/4 v0, -0x1

    iput v0, p0, Lt/as;->i:I

    return-void
.end method

.method static synthetic a(Lt/as;)I
    .locals 1

    iget v0, p0, Lt/as;->i:I

    return v0
.end method

.method private static a(Lak/h;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lak/h;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DriveAbout"

    invoke-virtual {p0}, Lak/h;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lak/h;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string v0, "_traf"

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const-string v0, "_tran"

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    if-ne p0, v0, :cond_3

    const-string v0, "_inaka"

    goto :goto_0

    :cond_3
    const/16 v0, 0xf

    if-ne p0, v0, :cond_4

    const-string v0, "_labl"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_unk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lt/l;
    .locals 1

    new-instance v0, Lt/k;

    invoke-direct {v0, p0}, Lt/k;-><init>(Lt/as;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lt/as;->i:I

    return-void
.end method

.method public aA_()V
    .locals 1

    invoke-static {}, LaY/b;->a()V

    :try_start_0
    invoke-super {p0}, Lt/aD;->aA_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, LaY/b;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, LaY/b;->b()V

    throw v0
.end method
