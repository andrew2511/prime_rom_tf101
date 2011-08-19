.class public Lcom/google/android/maps/driveabout/app/dH;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dH;->a:Landroid/content/Context;

    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dH;->a()V

    return-void

    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dH;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/eL;

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/eL;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/maps/driveabout/app/eL;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 13

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->b:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->d:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x5f

    aget v8, v1, v4

    const-string v9, "50"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x91

    aget v8, v1, v4

    const-string v9, "100"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0xbe

    aget v8, v1, v4

    const-string v9, "150"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x118

    aget v8, v1, v4

    const-string v9, "200"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x172

    aget v8, v1, v4

    const-string v9, "300"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x1cc

    aget v8, v1, v4

    const-string v9, "400"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x226

    aget v8, v1, v4

    const-string v9, "500"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x2ee

    aget v8, v1, v4

    const-string v9, "600"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x3b6

    aget v8, v1, v4

    const-string v9, "800"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/z;

    const/16 v7, 0x514

    aget v8, v2, v4

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/B;

    const/16 v7, 0x73a

    aget v8, v3, v4

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    new-instance v6, Lcom/google/android/maps/driveabout/app/z;

    const v7, 0x7fffffff

    aget v8, v2, v4

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_8

    const/4 v7, 0x0

    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_1

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x41e7a5e4

    aget v11, v1, v7

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x4230c8b4

    aget v11, v1, v7

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x4267a5e4

    aget v11, v1, v7

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x42aab021

    aget v11, v1, v7

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x42e18d50

    aget v11, v1, v7

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x430c3540

    aget v11, v1, v7

    const-string v12, "400"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x4327a3d7

    aget v11, v1, v7

    const-string v12, "500"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x43618d50

    aget v11, v1, v7

    const-string v12, "600"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x4390c7ae

    aget v11, v1, v7

    const-string v12, "800"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x43c61eb8

    aget v11, v1, v7

    const-string v12, "1000"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x44350d1b

    aget v11, v3, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x448cd14e

    aget v11, v4, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x44bf1c0f

    aget v11, v5, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/z;

    const v10, 0x4502c25b

    aget v11, v2, v7

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x45350d1b

    aget v11, v6, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/z;

    const v10, 0x7fffffff

    aget v11, v2, v7

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/dH;->h:Ljava/util/ArrayList;

    aput-object v7, v0, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/dH;->i:Ljava/util/ArrayList;

    aput-object v7, v0, v1

    const/4 v1, 0x2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Ljava/util/ArrayList;

    aput-object v7, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/4 v7, 0x0

    :goto_2
    array-length v8, v0

    if-ge v7, v8, :cond_2

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x42adbc6b

    aget v11, v1, v7

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x43049688

    aget v11, v1, v7

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x432dbc6b

    aget v11, v1, v7

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x43800419

    aget v11, v1, v7

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x43a929fc

    aget v11, v1, v7

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x44350d1b

    aget v11, v3, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x448cd14e

    aget v11, v4, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x44bf1c0f

    aget v11, v5, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/z;

    const v10, 0x4502c25b

    aget v11, v2, v7

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/B;

    const v10, 0x45350d1b

    aget v11, v6, v7

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/dH;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v0, v7

    new-instance v9, Lcom/google/android/maps/driveabout/app/z;

    const v10, 0x7fffffff

    aget v11, v2, v7

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 0x4
        0x8at 0x0t 0xbt 0x7ft
        0x8ct 0x0t 0xbt 0x7ft
        0x8et 0x0t 0xbt 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xct 0x7ft
        0x1t 0x0t 0xct 0x7ft
        0x2t 0x0t 0xct 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x8bt 0x0t 0xbt 0x7ft
        0x8dt 0x0t 0xbt 0x7ft
        0x8ft 0x0t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x91t 0x0t 0xbt 0x7ft
        0x97t 0x0t 0xbt 0x7ft
        0x9dt 0x0t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0xct 0x7ft
        0x4t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x93t 0x0t 0xbt 0x7ft
        0x99t 0x0t 0xbt 0x7ft
        0x9ft 0x0t 0xbt 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x94t 0x0t 0xbt 0x7ft
        0x9at 0x0t 0xbt 0x7ft
        0xa0t 0x0t 0xbt 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x95t 0x0t 0xbt 0x7ft
        0x9bt 0x0t 0xbt 0x7ft
        0xa1t 0x0t 0xbt 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x96t 0x0t 0xbt 0x7ft
        0x9ct 0x0t 0xbt 0x7ft
        0xa2t 0x0t 0xbt 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x92t 0x0t 0xbt 0x7ft
        0x98t 0x0t 0xbt 0x7ft
        0x9et 0x0t 0xbt 0x7ft
    .end array-data
.end method


# virtual methods
.method public a(II)Lm/w;
    .locals 4

    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:I

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->b:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/google/android/maps/driveabout/app/dH;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lm/J;

    invoke-direct {v3, p1, v0}, Lm/J;-><init>(II)V

    invoke-static {v2, v1, v3}, Lm/w;->a(ILjava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->h:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    move v0, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(LF/w;II)Lm/w;
    .locals 3

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/util/ArrayList;

    :goto_1
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/maps/driveabout/app/dH;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lm/t;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lm/t;-><init>(I)V

    invoke-static {p1, v0, v1}, Lm/w;->a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/C;

    invoke-virtual {v0}, LF/C;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->i:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->d:Ljava/util/ArrayList;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
