.class public Lab/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/location/Location;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDFJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/location/Location;

    const-string v1, "unknown"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lab/d;->a:Landroid/location/Location;

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0, p6, p7}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0, p5}, Landroid/location/Location;->setAccuracy(F)V

    iput-object p8, p0, Lab/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lab/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab/d;->a:Landroid/location/Location;

    iput-object p2, p0, Lab/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lab/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lf/h;
    .locals 6

    const-wide v4, 0x412e848000000000L

    new-instance v0, Lf/h;

    iget-object v1, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lab/d;->c:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    return v0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lab/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lab/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lab/d;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lab/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lab/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
