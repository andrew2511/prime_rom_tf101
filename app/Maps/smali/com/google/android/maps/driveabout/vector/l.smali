.class public final Lcom/google/android/maps/driveabout/vector/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:[I

.field private final i:[I

.field private final j:[F

.field private k:Ljava/util/TreeSet;

.field private final l:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/l;->a:Lcom/google/android/maps/driveabout/vector/l;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/l;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/l;->e:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->l:[F

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->k:Ljava/util/TreeSet;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 8

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v7, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/l;->b:I

    const/high16 v0, 0x3f80

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/l;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/l;->e:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget v2, v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->l:[F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->l:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->k:Ljava/util/TreeSet;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    int-to-float v3, v3

    move v4, v2

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/l;->k:Ljava/util/TreeSet;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    aget v6, v6, v2

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    int-to-float v5, v2

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    :goto_1
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    aget v6, v6, v2

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    aput v3, v6, v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/l;->l:[F

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    aput v5, v3, v4

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->k:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    aput v2, v3, v0

    if-le v2, v7, :cond_3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    aput v0, v3, v2

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->g:I

    return v0
.end method

.method public a(F)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->d:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    :goto_0
    return v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->h:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->f:I

    return v0
.end method

.method public b(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->i:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->k:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(I)F
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public e(I)F
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->j:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->l:[F

    aget v0, v0, p1

    goto :goto_0
.end method
