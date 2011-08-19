.class Lcom/google/android/maps/driveabout/app/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:LF/u;

.field private final b:F

.field private final c:I


# direct methods
.method constructor <init>(LF/u;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bv;->a:LF/u;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bv;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/app/bv;->c:I

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/bv;)LF/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->a:LF/u;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/bv;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/bv;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/bv;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bv;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/app/bv;->c:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/app/bv;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bv;)I

    move-result v0

    return v0
.end method
