.class public Lba/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/b;->a:Landroid/location/Geocoder;

    return-void
.end method

.method static synthetic a(Lba/b;)Landroid/location/Geocoder;
    .locals 1

    iget-object v0, p0, Lba/b;->a:Landroid/location/Geocoder;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILba/c;)V
    .locals 6

    new-instance v0, Lba/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lba/a;-><init>(Lba/b;LT/c;Ljava/lang/String;ILba/c;)V

    invoke-virtual {v0}, Lba/a;->b()V

    return-void
.end method
