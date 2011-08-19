.class public Lcom/google/android/maps/driveabout/vector/R;
.super Ljava/lang/Object;


# static fields
.field private static final b:LG/w;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bC;

.field private final c:Ljava/util/HashMap;

.field private d:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, LG/w;

    invoke-direct {v0, v1, v1, v1}, LG/w;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/R;->b:LG/w;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/bC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/R;->a:Lcom/google/android/maps/driveabout/vector/bC;

    return-void
.end method

.method public static a(Law/e;)Lcom/google/android/maps/driveabout/vector/R;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bC;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bC;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->i(I)I

    move-result v6

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v7}, Law/e;->e(II)Law/e;

    move-result-object v8

    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Law/e;->d(I)I

    move-result v3

    if-lez v2, :cond_3

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_1

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v5}, Law/e;->c(II)I

    move-result v9

    aput v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move-object v2, v4

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Law/e;->d(I)I

    move-result v4

    new-instance v5, Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/vector/l;-><init>([IIII)V

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Law/e;->i(I)I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    :goto_3
    if-ge v10, v9, :cond_5

    const/4 v1, 0x4

    invoke-virtual {v8, v1, v10}, Law/e;->e(II)Law/e;

    move-result-object v11

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Law/e;->d(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Law/e;->d(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Law/e;->i(I)I

    move-result v12

    new-instance v13, LG/w;

    invoke-direct {v13, v1, v2, v3}, LG/w;-><init>(III)V

    const/4 v1, 0x0

    move v14, v1

    :goto_4
    if-ge v14, v12, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v11, v1, v14}, Law/e;->c(II)I

    move-result v1

    int-to-byte v4, v1

    invoke-virtual {v13}, LG/w;->c()I

    move-result v1

    invoke-virtual {v13}, LG/w;->d()I

    move-result v2

    invoke-virtual {v13}, LG/w;->b()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bC;->a(IIIBLcom/google/android/maps/driveabout/vector/l;)V

    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [I

    const/4 v4, 0x0

    :goto_5
    sub-int v5, v1, v3

    if-gt v4, v5, :cond_2

    add-int v5, v4, v3

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1

    :cond_6
    new-instance p0, Lcom/google/android/maps/driveabout/vector/R;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/R;-><init>(Lcom/google/android/maps/driveabout/vector/bC;)V

    goto/16 :goto_0
.end method

.method private a(IIIBLcom/google/android/maps/driveabout/vector/bC;)Lcom/google/android/maps/driveabout/vector/l;
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->a:Lcom/google/android/maps/driveabout/vector/bC;

    if-eq p5, v0, :cond_1

    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/bC;->a(B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/bC;->a(B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/l;->a:Lcom/google/android/maps/driveabout/vector/l;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p5, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/bC;->a(III)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/google/android/maps/driveabout/vector/bC;->a(I)Lcom/google/android/maps/driveabout/vector/bC;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->a:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/vector/bC;->a(B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/l;->a:Lcom/google/android/maps/driveabout/vector/l;

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/R;->a(IIIBLcom/google/android/maps/driveabout/vector/bC;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->d:LG/Q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->d:LG/Q;

    invoke-virtual {v0, p1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/l;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/R;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    const/16 v0, 0x1e

    invoke-static {v0, p1}, LG/w;->a(ILG/Q;)LG/w;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/R;->b:LG/w;

    :cond_2
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/R;->d:LG/Q;

    invoke-virtual {v0}, LG/w;->c()I

    move-result v1

    invoke-virtual {v0}, LG/w;->d()I

    move-result v2

    invoke-virtual {v0}, LG/w;->b()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/R;->a:Lcom/google/android/maps/driveabout/vector/bC;

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/R;->a(IIIBLcom/google/android/maps/driveabout/vector/bC;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/R;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
