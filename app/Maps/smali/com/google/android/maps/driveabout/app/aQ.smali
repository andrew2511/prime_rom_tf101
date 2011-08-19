.class public Lcom/google/android/maps/driveabout/app/aQ;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:LF/u;

.field private final e:I


# direct methods
.method private constructor <init>(IIILF/u;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aQ;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/aQ;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aQ;->d:LF/u;

    iput p5, p0, Lcom/google/android/maps/driveabout/app/aQ;->e:I

    return-void
.end method

.method static a()Lcom/google/android/maps/driveabout/app/aQ;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v1, 0x4

    const/4 v4, 0x0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(IIILF/u;I)V

    return-object v0
.end method

.method static a(I)Lcom/google/android/maps/driveabout/app/aQ;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(IIILF/u;I)V

    return-object v0
.end method

.method static a(II)Lcom/google/android/maps/driveabout/app/aQ;
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(IIILF/u;I)V

    return-object v0
.end method

.method static a(LF/u;I)Lcom/google/android/maps/driveabout/app/aQ;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v1, 0x3

    move v3, v2

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(IIILF/u;I)V

    return-object v0
.end method

.method static b(I)Lcom/google/android/maps/driveabout/app/aQ;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v1, 0x5

    const/4 v4, 0x0

    move v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(IIILF/u;I)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->c:I

    return v0
.end method

.method public e()LF/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->d:LF/u;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aQ;->e:I

    return v0
.end method
