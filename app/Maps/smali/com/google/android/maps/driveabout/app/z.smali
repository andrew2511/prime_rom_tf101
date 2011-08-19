.class Lcom/google/android/maps/driveabout/app/z;
.super Lcom/google/android/maps/driveabout/app/eL;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dH;

.field private final c:F

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dH;FIF)V
    .locals 1

    float-to-int v0, p2

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dH;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/z;->a:Lcom/google/android/maps/driveabout/app/dH;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/eL;-><init>(I)V

    iput p4, p0, Lcom/google/android/maps/driveabout/app/z;->c:F

    iput p3, p0, Lcom/google/android/maps/driveabout/app/z;->d:I

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/z;->c:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/z;->a:Lcom/google/android/maps/driveabout/app/dH;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dH;->a(Lcom/google/android/maps/driveabout/app/dH;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/z;->d:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
