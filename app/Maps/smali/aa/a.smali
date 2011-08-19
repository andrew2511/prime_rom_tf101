.class public Laa/a;
.super Laa/w;

# interfaces
.implements Laa/y;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field a:Ljava/util/ArrayList;

.field private final e:Lt/n;

.field private final f:Ljava/util/ArrayList;

.field private g:Laa/i;

.field private h:LF/M;

.field private i:I

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "            "

    aput-object v2, v0, v1

    sput-object v0, Laa/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laa/C;)V
    .locals 2

    new-instance v0, Lt/n;

    const-string v1, "map"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lt/n;-><init>(Lt/y;)V

    invoke-direct {p0, p1, v0}, Laa/a;-><init>(Laa/C;Lt/n;)V

    return-void
.end method

.method constructor <init>(Laa/C;Lt/n;)V
    .locals 2

    const-string v0, "driveabout_hmm"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    const/4 v0, 0x0

    iput v0, p0, Laa/a;->i:I

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->b()D

    move-result-wide v0

    iput-wide v0, p0, Laa/a;->j:D

    iput-object p2, p0, Laa/a;->e:Lt/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laa/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laa/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static a(D)D
    .locals 2

    const-wide v0, 0x3fb015bf9217271aL

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private a(Landroid/location/Location;Laa/i;)Laa/E;
    .locals 3

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Laa/i;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Laa/E;

    invoke-direct {v0, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    iget-wide v1, p2, Laa/i;->g:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Laa/E;->setBearing(F)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;Laa/i;Lad/t;)Laa/E;
    .locals 18

    move-object/from16 v0, p1

    instance-of v0, v0, Laa/E;

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    check-cast v0, Laa/E;

    move-object v5, v0

    invoke-virtual {v5}, Laa/E;->b()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Laa/a;->g:Laa/i;

    move-object/from16 v0, p1

    check-cast v0, Laa/E;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Laa/a;->i:I

    move v6, v0

    invoke-virtual {v5, v6}, Laa/E;->b(I)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Laa/i;->a:D

    move-wide v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Laa/a;->a(Landroid/location/Location;Lad/t;D)Lt/al;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-direct/range {p0 .. p2}, Laa/a;->a(Landroid/location/Location;Laa/i;)Laa/E;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v6, Lt/a;

    invoke-virtual/range {p3 .. p3}, Lad/t;->e()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Laa/a;->i:I

    move v8, v0

    invoke-direct {v6, v5, v7, v8}, Lt/a;-><init>(Lt/al;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Lt/a;->a()I

    move-result v7

    if-nez v7, :cond_3

    invoke-direct/range {p0 .. p2}, Laa/a;->a(Landroid/location/Location;Laa/i;)Laa/E;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    new-instance v8, Laa/d;

    invoke-virtual {v6, v5}, Lt/a;->a(I)Lt/ap;

    move-result-object v9

    move-object v0, v8

    move v1, v5

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(ILt/ap;Laa/i;Lad/t;)V

    invoke-virtual {v6, v5}, Lt/a;->a(I)Lt/ap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lt/ap;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    iget-boolean v0, v0, Laa/i;->i:Z

    move v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p2

    iget-wide v0, v0, Laa/i;->c:D

    move-wide v8, v0

    const-wide/high16 v10, 0x4024

    cmpg-double v5, v8, v10

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->f:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Laa/a;->i:I

    move v5, v0

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    const/4 v5, 0x0

    move v8, v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->f:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->f:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Laa/a;->a(Laa/d;Lt/a;Laa/i;)V

    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    invoke-virtual {v5}, Laa/d;->c()V

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    move v6, v5

    :goto_4
    if-ge v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Laa/d;->a(Z)D

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move/from16 v17, v10

    move-wide v10, v5

    move/from16 v6, v17

    :goto_5
    if-ge v6, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    invoke-virtual/range {p3 .. p3}, Lad/t;->c()I

    move-result v12

    sub-int v12, v7, v12

    if-lt v6, v12, :cond_8

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v5, v12}, Laa/d;->a(Z)D

    move-result-wide v12

    add-double/2addr v10, v12

    iget-wide v14, v5, Laa/d;->b:D

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    goto :goto_6

    :cond_9
    const-wide/16 v5, 0x0

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v10

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    const-wide v12, 0x3fe999999999999aL

    move-object/from16 v0, p0

    iget-wide v0, v0, Laa/a;->j:D

    move-wide v14, v0

    mul-double/2addr v12, v14

    const-wide v14, 0x3fc999999999999aL

    mul-double/2addr v5, v14

    add-double/2addr v5, v12

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Laa/a;->j:D

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->f:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p3 .. p3}, Lad/t;->c()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v5, 0x0

    move v12, v5

    :goto_7
    if-ge v12, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v13, v7, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    invoke-virtual {v5, v10, v11}, Laa/d;->a(D)V

    invoke-virtual {v5}, Laa/d;->a()D

    move-result-wide v13

    invoke-virtual/range {p3 .. p3}, Lad/t;->a()D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_d

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->a:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v7, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laa/d;

    new-instance v6, Laa/E;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Laa/E;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Laa/a;->j:D

    move-wide v12, v0

    invoke-virtual/range {p3 .. p3}, Lad/t;->b()D

    move-result-wide v14

    cmpl-double v7, v12, v14

    if-lez v7, :cond_e

    iget-object v7, v5, Laa/d;->f:Lt/ap;

    invoke-virtual {v7}, Lt/ap;->b()LG/i;

    move-result-object v7

    iget-object v8, v5, Laa/d;->j:LG/Q;

    invoke-virtual {v6, v7, v8}, Laa/E;->a(LG/i;LG/Q;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v7

    if-nez v7, :cond_b

    move-object/from16 v0, p2

    iget-boolean v0, v0, Laa/i;->f:Z

    move v7, v0

    if-eqz v7, :cond_b

    move-object/from16 v0, p2

    iget-wide v0, v0, Laa/i;->g:D

    move-wide v7, v0

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Laa/E;->setBearing(F)V

    :cond_b
    iget-object v7, v5, Laa/d;->h:LF/i;

    if-eqz v7, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Laa/i;->d:LG/Q;

    move-object v7, v0

    iget-object v8, v5, Laa/d;->h:LF/i;

    invoke-virtual {v8}, LF/i;->b()LG/Q;

    move-result-object v8

    invoke-virtual {v7, v8}, LG/Q;->c(LG/Q;)F

    move-result v7

    float-to-double v7, v7

    iget-object v5, v5, Laa/d;->h:LF/i;

    invoke-virtual {v5, v7, v8}, LF/i;->a(D)LF/i;

    move-result-object v5

    invoke-virtual {v6, v5}, Laa/E;->a(LF/i;)V

    :cond_c
    :goto_8
    move-object v5, v6

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->f:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Laa/a;->i:I

    move v7, v0

    const/4 v12, 0x2

    if-eq v7, v12, :cond_f

    iget-object v7, v5, Laa/d;->j:LG/Q;

    invoke-virtual {v7}, LG/Q;->b()D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Laa/E;->setLatitude(D)V

    iget-object v7, v5, Laa/d;->j:LG/Q;

    invoke-virtual {v7}, LG/Q;->d()D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Laa/E;->setLongitude(D)V

    :cond_f
    move-object/from16 v0, p2

    iget-boolean v0, v0, Laa/i;->f:Z

    move v7, v0

    if-eqz v7, :cond_10

    iget-object v7, v5, Laa/d;->f:Lt/ap;

    invoke-virtual {v7}, Lt/ap;->e()F

    move-result v7

    invoke-virtual {v6, v7}, Laa/E;->setBearing(F)V

    :cond_10
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Laa/E;->c(Z)V

    iget-object v7, v5, Laa/d;->f:Lt/ap;

    invoke-virtual {v7}, Lt/ap;->b()LG/i;

    move-result-object v7

    iget-object v12, v5, Laa/d;->j:LG/Q;

    invoke-virtual {v6, v7, v12}, Laa/E;->a(LG/i;LG/Q;)V

    iget-object v5, v5, Laa/d;->h:LF/i;

    invoke-virtual {v6, v5}, Laa/E;->a(LF/i;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Laa/a;->h:LF/M;

    move-object v5, v0

    if-eqz v5, :cond_c

    const-wide/16 v12, 0x0

    cmpl-double v5, v10, v12

    if-lez v5, :cond_c

    div-double v7, v8, v10

    invoke-virtual {v6, v7, v8}, Laa/E;->a(D)V

    goto :goto_8
.end method

.method private a(Laa/E;Laa/i;)V
    .locals 5

    iget-object v0, p0, Laa/a;->h:LF/M;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Laa/E;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    const-wide v1, 0x40f86a0000000000L

    invoke-virtual {p2}, Laa/i;->a()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Laa/a;->h:LF/M;

    invoke-virtual {v3, v0, v1, v2}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Laa/E;->a(LF/i;)V

    :cond_0
    return-void
.end method

.method private a(Laa/d;Lt/a;Laa/i;)V
    .locals 11

    const/4 v9, 0x0

    iget-object v0, p1, Laa/d;->f:Lt/ap;

    invoke-virtual {p2, v0}, Lt/a;->a(Lt/ap;)Lt/ap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lt/ap;->c()LG/Q;

    move-result-object v0

    invoke-virtual {v1}, Lt/ap;->d()LG/Q;

    move-result-object v2

    iget-object v3, p1, Laa/d;->j:LG/Q;

    invoke-static {v0, v2, v3}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    float-to-double v2, v0

    const/4 v0, 0x7

    new-array v10, v0, [Lt/ap;

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Laa/d;->a()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Laa/a;->a(Lt/ap;DDDLaa/i;I[Lt/ap;)V

    iget-object v0, p0, Laa/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v9

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Laa/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/d;

    invoke-virtual {v0}, Laa/d;->b()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private a(Lt/ap;DDDLaa/i;I[Lt/ap;)V
    .locals 20

    aput-object p1, p10, p9

    invoke-virtual/range {p1 .. p1}, Lt/ap;->c()LG/Q;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lt/ap;->d()LG/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, LG/Q;->c(LG/Q;)F

    move-result v3

    float-to-double v14, v3

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->e:D

    move-wide v3, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->a:D

    move-wide v5, v0

    mul-double/2addr v3, v5

    div-double/2addr v3, v14

    sub-double v4, p2, v3

    invoke-virtual/range {p1 .. p1}, Lt/ap;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laa/d;

    iget-wide v6, v3, Laa/d;->i:D

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_0

    iget-wide v6, v3, Laa/d;->i:D

    sub-double v6, v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->a:D

    move-wide v8, v0

    div-double/2addr v6, v8

    add-double v6, v6, p4

    move-object/from16 v0, p8

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Laa/i;->a(D)D

    move-result-wide v6

    mul-double v6, v6, p6

    invoke-virtual {v3, v6, v7}, Laa/d;->b(D)V

    :cond_0
    if-nez p9, :cond_2

    move-wide/from16 v16, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lt/ap;->a()Ljava/util/ArrayList;

    move-result-object v18

    const/4 v3, 0x0

    move/from16 v19, v3

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_3

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/h;

    invoke-virtual {v3}, Lt/h;->b()F

    move-result v4

    float-to-double v5, v4

    cmpl-double v4, v5, v16

    if-lez v4, :cond_1

    invoke-virtual {v3}, Lt/h;->a()Lt/ap;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lt/ap;->e()F

    move-result v7

    invoke-virtual {v4}, Lt/ap;->e()F

    move-result v8

    invoke-static {v7, v8}, LG/H;->a(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Laa/a;->a(D)D

    move-result-wide v7

    sub-double v5, v5, p2

    mul-double/2addr v5, v14

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->a:D

    move-wide v9, v0

    div-double/2addr v5, v9

    add-double v5, v5, p4

    add-double/2addr v7, v5

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->j:D

    move-wide v5, v0

    const-wide/high16 v9, 0x4010

    move-object/from16 v0, p8

    iget-wide v0, v0, Laa/i;->k:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    const/4 v9, 0x6

    move/from16 v0, p9

    move v1, v9

    if-ge v0, v1, :cond_1

    cmpg-double v5, v7, v5

    if-gez v5, :cond_1

    move-object v0, v4

    move-object/from16 v1, p10

    move/from16 v2, p9

    invoke-static {v0, v1, v2}, Laa/a;->a(Lt/ap;[Lt/ap;I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lt/h;->c()F

    move-result v3

    float-to-double v5, v3

    add-int/lit8 v12, p9, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Laa/a;->a(Lt/ap;DDDLaa/i;I[Lt/ap;)V

    :cond_1
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_1

    :cond_2
    move-wide/from16 v16, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Lt/ap;[Lt/ap;I)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "driveabout_hmm"

    return-object v0
.end method

.method a(Landroid/location/Location;Lad/t;D)Lt/al;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v1

    const-wide/high16 v2, 0x4049

    mul-double/2addr v2, p3

    double-to-int v0, v2

    invoke-static {v1, v0}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v2

    iget-object v0, p0, Laa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-array v4, v3, [LG/Q;

    move v5, v6

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v0, p0, Laa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/d;

    iget-object v0, v0, Laa/d;->j:LG/Q;

    aput-object v0, v4, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    invoke-static {v4}, LG/S;->a([LG/Q;)LG/S;

    move-result-object v0

    const-wide/high16 v3, 0x4014

    mul-double/2addr v3, p3

    double-to-int v3, v3

    invoke-virtual {v0, v3}, LG/S;->b(I)LG/S;

    move-result-object v0

    invoke-virtual {v2, v0}, LG/S;->a(LG/S;)LG/S;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Lad/t;->d()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p3

    double-to-int v2, v2

    invoke-static {v1, v2}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v1

    :try_start_0
    iget v2, p0, Laa/a;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Laa/a;->e:Lt/n;

    invoke-virtual {v1, v0}, LG/S;->b(LG/S;)LG/S;

    move-result-object v0

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v0, v2, v4, v5}, Lt/n;->a(LG/S;ZJ)Lt/al;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    move v2, v6

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Laa/a;->i:I

    return-void
.end method

.method public a(LF/M;)V
    .locals 0

    iput-object p1, p0, Laa/a;->h:LF/M;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v4

    new-instance v5, Laa/i;

    iget-object v6, p0, Laa/a;->g:Laa/i;

    iget-object v7, p0, Laa/a;->h:LF/M;

    invoke-direct {v5, p1, v6, v4, v7}, Laa/i;-><init>(Landroid/location/Location;Laa/i;Lad/t;LF/M;)V

    invoke-direct {p0, p1, v5, v4}, Laa/a;->a(Landroid/location/Location;Laa/i;Lad/t;)Laa/E;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Laa/E;

    invoke-direct {v4, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    :cond_0
    invoke-virtual {v4}, Laa/E;->i()LF/i;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4, v5}, Laa/a;->a(Laa/E;Laa/i;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    const-wide/16 v5, 0xc8

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    :cond_2
    invoke-super {p0, v4}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
