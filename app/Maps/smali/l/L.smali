.class final Ll/L;
.super Ljava/lang/Object;

# interfaces
.implements Ll/t;


# instance fields
.field private final a:LC/b;

.field private final b:Ll/t;

.field private final c:Lj/B;


# direct methods
.method private constructor <init>(LC/b;Ll/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/B;->e()Lj/B;

    move-result-object v0

    iput-object v0, p0, Ll/L;->c:Lj/B;

    iput-object p1, p0, Ll/L;->a:LC/b;

    iput-object p2, p0, Ll/L;->b:Ll/t;

    return-void
.end method

.method synthetic constructor <init>(LC/b;Ll/t;Ll/A;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll/L;-><init>(LC/b;Ll/t;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ll/L;->b:Ll/t;

    invoke-interface {v0}, Ll/t;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 3

    iget-object v0, p0, Ll/L;->c:Lj/B;

    invoke-virtual {v0, p1}, Lj/B;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/c;

    iget-object v2, p0, Ll/L;->b:Ll/t;

    invoke-interface {v2, v0}, Ll/t;->a(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7

    new-instance v5, LC/c;

    iget-object v0, p0, Ll/L;->a:LC/b;

    invoke-direct {v5, v0, p5}, LC/c;-><init>(LC/b;Landroid/location/LocationListener;)V

    iget-object v0, p0, Ll/L;->c:Lj/B;

    invoke-virtual {v0, p5, v5}, Lj/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Ll/L;->b:Ll/t;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ll/t;->a(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ll/L;->b:Ll/t;

    invoke-interface {v0, p1}, Ll/t;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Ll/L;->b:Ll/t;

    invoke-interface {v0, p1}, Ll/t;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll/L;->a:LC/b;

    invoke-virtual {v1, v0}, LC/b;->a(Landroid/location/Location;)V

    :cond_0
    return-object v0
.end method
