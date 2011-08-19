.class public Lcom/google/android/maps/driveabout/app/bK;
.super Lcom/google/android/maps/driveabout/vector/cK;


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/app/bi;

.field private final e:Lt/D;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILG/Y;Lcom/google/android/maps/driveabout/app/bi;Lt/D;)V
    .locals 12

    invoke-virtual/range {p5 .. p5}, LG/Y;->c()LG/Q;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, LG/Y;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, LG/Y;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/google/android/maps/driveabout/vector/cK;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;LG/Y;Ljava/lang/String;)V

    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/app/bK;->d:Lcom/google/android/maps/driveabout/app/bi;

    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/app/bK;->e:Lt/D;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILG/Y;Lcom/google/android/maps/driveabout/app/bi;Lt/D;Lcom/google/android/maps/driveabout/app/dA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/maps/driveabout/app/bK;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILG/Y;Lcom/google/android/maps/driveabout/app/bi;Lt/D;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bK;)Lt/D;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bK;->e:Lt/D;

    return-object v0
.end method


# virtual methods
.method public r()Lcom/google/android/maps/driveabout/app/bi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bK;->d:Lcom/google/android/maps/driveabout/app/bi;

    return-object v0
.end method
