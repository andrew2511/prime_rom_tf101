.class final Lcom/google/android/maps/driveabout/vector/cG;
.super Lcom/google/android/maps/driveabout/vector/br;


# direct methods
.method private constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/br;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cG;->g:[I

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->h:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->i:I

    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->k:I

    return-void
.end method

.method synthetic constructor <init>([ILcom/google/android/maps/driveabout/vector/cF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cG;-><init>([I)V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LG/Q;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
