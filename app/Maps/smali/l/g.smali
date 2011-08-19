.class public Ll/g;
.super Landroid/location/Location;


# instance fields
.field private a:Ll/s;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll/g;->b:Ljava/util/List;

    instance-of v0, p1, Ll/g;

    if-eqz v0, :cond_0

    check-cast p1, Ll/g;

    iget-object v0, p1, Ll/g;->a:Ll/s;

    iput-object v0, p0, Ll/g;->a:Ll/s;

    iget-object v0, p1, Ll/g;->b:Ljava/util/List;

    iput-object v0, p0, Ll/g;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ll/s;
    .locals 1

    iget-object v0, p0, Ll/g;->a:Ll/s;

    return-object v0
.end method

.method public a(Ll/s;)V
    .locals 0

    iput-object p1, p0, Ll/g;->a:Ll/s;

    return-void
.end method
