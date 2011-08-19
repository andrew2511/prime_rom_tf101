.class Lcom/google/android/maps/driveabout/vector/aX;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/m;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/vector/m;

.field private c:I

.field private d:Lt/am;

.field private e:Lau/c;

.field private f:Lau/e;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/m;ILandroid/content/Context;Lau/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aX;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aX;->b:Lcom/google/android/maps/driveabout/vector/m;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/aX;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lau/e;

    return-void
.end method


# virtual methods
.method public a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->b:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/m;->a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->d:Lt/am;

    if-nez v0, :cond_0

    invoke-static {}, Lt/am;->a()Lt/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->d:Lt/am;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->e:Lau/c;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aX;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "buildingbounds.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lau/a;->a(Ljava/io/Reader;)Lau/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->e:Lau/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ap;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aX;->e:Lau/c;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aX;->d:Lt/am;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aX;->c:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lau/e;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lcom/google/android/maps/driveabout/vector/cb;Lau/c;Lt/am;ILau/e;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL: failed to read building bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(IZ)Lcom/google/android/maps/driveabout/vector/cv;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cv;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cv;-><init>(I)V

    return-object v0
.end method
