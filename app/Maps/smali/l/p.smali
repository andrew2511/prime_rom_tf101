.class Ll/p;
.super Ljava/lang/Object;

# interfaces
.implements Ll/B;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll/A;)V
    .locals 0

    invoke-direct {p0}, Ll/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/LocationListener;Ll/t;)Ll/P;
    .locals 1

    new-instance v0, Ll/P;

    invoke-direct {v0, p1, p2}, Ll/P;-><init>(Landroid/location/LocationListener;Ll/t;)V

    return-object v0
.end method

.method public a(Landroid/location/LocationListener;)Ll/j;
    .locals 1

    new-instance v0, Ll/j;

    invoke-direct {v0, p1}, Ll/j;-><init>(Landroid/location/LocationListener;)V

    return-object v0
.end method

.method public b(Landroid/location/LocationListener;Ll/t;)Ll/b;
    .locals 1

    new-instance v0, Ll/b;

    invoke-direct {v0, p1, p2}, Ll/b;-><init>(Landroid/location/LocationListener;Ll/t;)V

    return-object v0
.end method
