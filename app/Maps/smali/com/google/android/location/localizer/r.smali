.class Lcom/google/android/location/localizer/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:D


# direct methods
.method constructor <init>(IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/r;->a:I

    iput p2, p0, Lcom/google/android/location/localizer/r;->b:I

    iput-wide p3, p0, Lcom/google/android/location/localizer/r;->c:D

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/localizer/r;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/location/localizer/r;->c:D

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/location/localizer/r;)I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/r;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/location/localizer/r;)I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/r;->a:I

    return v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/r;->a:I

    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/r;->b:I

    return v0
.end method
