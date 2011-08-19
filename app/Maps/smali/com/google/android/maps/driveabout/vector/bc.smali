.class public Lcom/google/android/maps/driveabout/vector/bc;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static volatile c:I

.field public static d:Z

.field private static e:Z

.field private static f:Z

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v3

    const-string v1, "satellite"

    aput-object v1, v0, v4

    const-string v1, "traffic"

    aput-object v1, v0, v5

    const-string v1, "layers"

    aput-object v1, v0, v6

    const-string v1, "roadgraph"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->a:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "map"

    aput-object v1, v0, v3

    const-string v1, "satellite"

    aput-object v1, v0, v4

    const-string v1, "traffic"

    aput-object v1, v0, v5

    const-string v1, "terrain"

    aput-object v1, v0, v6

    const-string v1, "basebicycling"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "satellitebicycling"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "terrainbicycling"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "transit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inaka"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "labelsonly"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->b:[Ljava/lang/String;

    sput-boolean v3, Lcom/google/android/maps/driveabout/vector/bc;->e:Z

    const/16 v0, 0xa

    sput v0, Lcom/google/android/maps/driveabout/vector/bc;->c:I

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SOJU"

    aput-object v1, v0, v3

    const-string v1, "SOJUA"

    aput-object v1, v0, v4

    const-string v1, "SOJUK"

    aput-object v1, v0, v5

    const-string v1, "SOJU_L10N"

    aput-object v1, v0, v6

    const-string v1, "GT-I9000"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "GT-I9000B"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GT-I9000M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GT-I9000T"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SC-02B"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SGH-T959"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SGH-T959D"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SGH-T959V"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "VIBRANT T959"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SHW-M110S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SCH-I400"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SGH-I897"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SGH-I896"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bc;->g:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bc;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0xa0

    if-le p0, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILac/y;)V
    .locals 7

    const-class v6, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Las/a;->a()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/an;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/an;-><init>()V

    invoke-static {v0}, Lac/g;->a(Lac/j;)V

    invoke-static {p4}, Lac/g;->a(Lac/y;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lz/b;

    invoke-direct {v0, p0}, Lz/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lac/m;->a(Lac/m;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bc;->c(Landroid/content/Context;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bc;->b(Landroid/content/Context;)Lak/h;

    move-result-object v0

    new-instance v1, Lad/p;

    invoke-direct {v1, v0}, Lad/p;-><init>(Lak/h;)V

    invoke-virtual {v0, v1}, Lak/h;->a(Lak/c;)V

    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lak/h;->t()V

    invoke-static {p0}, Las/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v4}, Lt/w;->a(Lak/h;Ljava/io/File;)Lt/w;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lt/az;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    move-object v0, p1

    move-object v1, p2

    move-object v5, p0

    :try_start_3
    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bc;->a([Ljava/lang/String;Ljava/lang/String;Lak/h;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2, v4, v3}, Lt/am;->a(Lak/h;Ljava/io/File;Ljava/util/Locale;)Lt/am;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lt/am;->c()V

    invoke-static {v0}, Lau/e;->a(Lt/am;)Lau/e;

    :cond_5
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/util/Locale;)V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v0

    :try_start_0
    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_0
    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_1
    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_2
    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_3
    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_4
    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_5
    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V

    :cond_6
    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1, p0}, Lt/y;->a(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 1

    const-string v0, "map"

    invoke-static {v0}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v0

    check-cast v0, Lt/as;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lt/as;->a(Z)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized a([Ljava/lang/String;Ljava/lang/String;Lak/h;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V
    .locals 25

    const-class v23, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v23

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/bc;->a(I)I

    move-result v15

    const-string v5, "GMM"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 p1, 0x1

    sput p1, Lcom/google/android/maps/driveabout/vector/bc;->c:I

    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p1, v0

    const/4 v5, 0x0

    move/from16 v24, v5

    :goto_0
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_e

    aget-object v5, p0, v24

    const-string v6, "map"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lt/as;

    const/16 v7, 0xa

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v8, 0x100

    invoke-static {v6, v8}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v8

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lt/as;-><init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v6

    invoke-interface {v5, v6}, Lt/y;->a(Lcom/google/googlenav/aT;)V

    :cond_1
    invoke-interface {v5}, Lt/y;->b()V

    const-string v6, "map"

    invoke-static {v6, v5}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v24, 0x1

    move/from16 v24, v5

    goto :goto_0

    :cond_3
    const-string v6, "satellite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v11, Lt/M;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->b(Landroid/content/res/Resources;I)I

    move-result v16

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lt/M;-><init>(Lak/h;IIIILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v11}, Lt/y;->b()V

    const-string v5, "satellite"

    invoke-static {v5, v11}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v23

    throw p0

    :cond_4
    :try_start_1
    const-string v6, "traffic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v16, Lt/as;

    const/16 v18, 0x4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v19

    const/16 v21, 0x0

    move-object/from16 v17, p2

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Lt/as;-><init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V

    const v5, 0x1d4c0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Lt/as;->a(I)V

    invoke-virtual/range {v16 .. v16}, Lt/as;->b()V

    const-string v5, "traffic"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto :goto_1

    :cond_5
    const-string v6, "layers"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Lt/G;

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, 0x100

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v6

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lt/G;-><init>(Lak/h;ILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v5}, Lt/y;->b()V

    const-string v6, "layers"

    invoke-static {v6, v5}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_6
    const-string v6, "roadgraph"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v5, Lt/f;

    const/16 v6, 0xb

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lt/f;-><init>(Lak/h;ILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v5}, Lt/y;->b()V

    const-string v6, "roadgraph"

    invoke-static {v6, v5}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_7
    const-string v6, "terrain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v11, Lt/M;

    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v16

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lt/M;-><init>(Lak/h;IIIILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v11}, Lt/y;->b()V

    const-string v5, "terrain"

    invoke-static {v5, v11}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_8
    const-string v6, "basebicycling"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v11, Lt/M;

    const/4 v13, 0x2

    const/16 v14, 0x80

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v16

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lt/M;-><init>(Lak/h;IIIILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v11}, Lt/y;->b()V

    const-string v5, "basebicycling"

    invoke-static {v5, v11}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_9
    const-string v6, "satellitebicycling"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v11, Lt/M;

    const/4 v13, 0x6

    const/16 v14, 0x80

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v16

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lt/M;-><init>(Lak/h;IIIILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v11}, Lt/y;->b()V

    const-string v5, "satellitebicycling"

    invoke-static {v5, v11}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_a
    const-string v6, "terrainbicycling"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v11, Lt/M;

    const/4 v13, 0x7

    const/16 v14, 0x80

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v16

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lt/M;-><init>(Lak/h;IIIILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v11}, Lt/y;->b()V

    const-string v5, "terrainbicycling"

    invoke-static {v5, v11}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_b
    const-string v6, "transit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v16, Lt/as;

    const/16 v18, 0xd

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v19

    const/16 v21, 0x0

    move-object/from16 v17, p2

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Lt/as;-><init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V

    invoke-virtual/range {v16 .. v16}, Lt/as;->b()V

    const-string v5, "transit"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_c
    const-string v6, "inaka"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v16, Lt/as;

    const/16 v18, 0xe

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v19

    const/16 v21, 0x0

    move-object/from16 v17, p2

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Lt/as;-><init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V

    invoke-virtual/range {v16 .. v16}, Lt/as;->b()V

    const-string v5, "inaka"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V

    goto/16 :goto_1

    :cond_d
    const-string v6, "labelsonly"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v16, Lt/as;

    const/16 v18, 0xf

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x100

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v19

    const/16 v21, 0x1

    move-object/from16 v17, p2

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Lt/as;-><init>(Lak/h;IILjava/util/Locale;ZLjava/io/File;)V

    invoke-virtual/range {v16 .. v16}, Lt/as;->b()V

    const-string v5, "labelsonly"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lt/ac;->a(Ljava/lang/String;Lt/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_e
    monitor-exit v23

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->f:Z

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7

    const-wide/high16 v4, 0x3fd0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v2, v3, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float v1, v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Lak/h;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-static {}, Las/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz/b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Las/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lac/m;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v5}, Lak/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lak/h;

    move-result-object v1

    invoke-static {p0}, Las/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lak/h;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lak/h;->a(Z)V

    const-string v2, "SYSTEM"

    invoke-virtual {v1, v2}, Lak/h;->c(Ljava/lang/String;)V

    const-string v2, "DriveAbout"

    invoke-virtual {v1, v2}, Lak/h;->e(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lak/h;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lak/h;->b(Z)V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lak/h;->d(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Lak/h;->e(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Lak/h;->c(I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lak/h;->a(J)V

    return-object v1

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized c()V
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_1
    :try_start_3
    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_4
    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_2
    :try_start_5
    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :try_start_6
    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    :try_start_7
    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    :try_start_8
    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_4
    :try_start_9
    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :try_start_a
    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_5
    :goto_5
    :try_start_b
    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :try_start_c
    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :cond_6
    :goto_6
    :try_start_d
    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    :try_start_e
    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->c()V

    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_7
    :goto_7
    :try_start_f
    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    invoke-virtual {v1}, Lt/am;->e()V

    invoke-static {}, Lt/am;->b()V

    :cond_8
    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lau/e;->b()V

    :cond_9
    invoke-static {}, Lt/w;->d()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lak/h;->s()V

    invoke-static {}, Lak/h;->b()V

    :cond_a
    invoke-static {}, Lac/g;->c()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_1
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Las/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {p0}, Las/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-static {p0}, Las/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public static declared-synchronized d()V
    .locals 3

    const-class v0, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_2
    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_3
    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_4
    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_5
    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_6
    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_7
    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_8
    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->g()V

    :cond_9
    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lt/w;->a(Z)V

    :cond_a
    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    invoke-virtual {v1}, Lt/am;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/google/android/maps/driveabout/vector/bc;->c:I

    return v0
.end method

.method public static declared-synchronized f()V
    .locals 3

    const-class v0, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_2
    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "satellite"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_3
    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "terrain"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_4
    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "traffic"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_5
    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "layers"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_6
    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_7
    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "labelsonly"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_8
    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "inaka"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-interface {v1}, Lt/y;->e()V

    :cond_9
    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lt/w;->a(Z)V

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v1

    invoke-virtual {v1}, Lt/am;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g()J
    .locals 5

    const-class v0, Lcom/google/android/maps/driveabout/vector/bc;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    sget-boolean v3, Lcom/google/android/maps/driveabout/vector/bc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_0
    :try_start_1
    const-string v3, "map"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "map"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_1
    const-string v3, "satellite"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "satellite"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2
    const-string v3, "terrain"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "terrain"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_3
    const-string v3, "traffic"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "traffic"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_4
    const-string v3, "layers"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "layers"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_5
    const-string v3, "roadgraph"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "roadgraph"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_6
    const-string v3, "labelsonly"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "labelsonly"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_7
    const-string v3, "inaka"

    invoke-static {v3}, Lt/ac;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "inaka"

    invoke-static {v3}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v3

    invoke-interface {v3}, Lt/y;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_8
    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v3

    invoke-virtual {v3}, Lt/am;->h()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_9
    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v3

    invoke-virtual {v3}, Lt/w;->b()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    add-long/2addr v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
