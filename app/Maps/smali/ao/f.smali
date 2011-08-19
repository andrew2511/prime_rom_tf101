.class public Lao/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field private final i:Lao/a;

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_flakes_grid"

    aput-object v1, v0, v2

    sput-object v0, Lao/f;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_cloud_light_0_50pct"

    aput-object v1, v0, v2

    const-string v1, "weather_cloud_light_1_50pct"

    aput-object v1, v0, v3

    const-string v1, "weather_cloud_light_2_50pct"

    aput-object v1, v0, v4

    const-string v1, "weather_cloud_light_3_50pct"

    aput-object v1, v0, v5

    const-string v1, "weather_cloud_light_4_50pct"

    aput-object v1, v0, v6

    sput-object v0, Lao/f;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_cloud_heavy_01"

    aput-object v1, v0, v2

    const-string v1, "weather_cloud_heavy_02"

    aput-object v1, v0, v3

    const-string v1, "weather_cloud_heavy_03"

    aput-object v1, v0, v4

    const-string v1, "weather_cloud_heavy_04"

    aput-object v1, v0, v5

    const-string v1, "weather_cloud_heavy_05"

    aput-object v1, v0, v6

    sput-object v0, Lao/f;->c:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lao/f;->d:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_fog"

    aput-object v1, v0, v2

    sput-object v0, Lao/f;->e:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_lightning_01b"

    aput-object v1, v0, v2

    sput-object v0, Lao/f;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_tilecover"

    aput-object v1, v0, v2

    sput-object v0, Lao/f;->g:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_icon_grid"

    aput-object v1, v0, v2

    sput-object v0, Lao/f;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lao/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao/f;->i:Lao/a;

    new-instance v0, Lao/e;

    invoke-direct {v0, p0}, Lao/e;-><init>(Lao/f;)V

    iput-object v0, p0, Lao/f;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hosted_images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lao/f;)Z
    .locals 1

    invoke-direct {p0}, Lao/f;->h()Z

    move-result v0

    return v0
.end method

.method private a(Z[Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    array-length v1, p2

    move v2, v0

    move v0, v5

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lao/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/bz;->c(Ljava/lang/String;)Lk/l;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v3}, Lao/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bz;->a(Ljava/lang/String;)V

    :cond_0
    move v2, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private a([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lao/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bz;->c(Ljava/lang/String;)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic b(Lao/f;)Lao/a;
    .locals 1

    iget-object v0, p0, Lao/f;->i:Lao/a;

    return-object v0
.end method

.method private h()Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lao/f;->a:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->b:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->c:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->d:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->e:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->f:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->g:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao/f;->h:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lao/f;->a(Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lao/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lao/f;->a:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->b:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->c:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->d:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->e:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->f:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->g:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lao/f;->h:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lao/f;->a(Z[Ljava/lang/String;)Z

    iget-object v1, p0, Lao/f;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return v0
.end method

.method public b()[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lao/f;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lao/f;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lao/f;->f:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lao/f;->c:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lao/f;->e:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lao/f;->h:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lao/f;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
