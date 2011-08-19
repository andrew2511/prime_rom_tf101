.class Lh/cm;
.super Ljava/lang/Object;

# interfaces
.implements LI/r;


# instance fields
.field final synthetic a:Lh/ay;


# direct methods
.method constructor <init>(Lh/ay;)V
    .locals 0

    iput-object p1, p0, Lh/cm;->a:Lh/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;)V
    .locals 8

    const-wide v6, 0x416312d000000000L

    invoke-static {p1}, LI/h;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lh/cm;->a:Lh/ay;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lh/ay;->a(Lh/ay;Ljava/lang/String;JJ)V

    return-void
.end method
