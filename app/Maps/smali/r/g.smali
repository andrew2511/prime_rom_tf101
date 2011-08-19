.class public Lr/g;
.super Lr/i;


# static fields
.field public static final a:Lr/g;

.field public static final b:Lcom/google/android/maps/driveabout/vector/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/g;

    invoke-direct {v0}, Lr/g;-><init>()V

    sput-object v0, Lr/g;->a:Lr/g;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bk;->c:Lcom/google/android/maps/driveabout/vector/aw;

    sput-object v0, Lr/g;->b:Lcom/google/android/maps/driveabout/vector/aw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 2

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->j()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->j()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->m()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->j()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->j()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v0, 0x2

    const v1, 0x3e4ccccd

    const/4 v2, 0x0

    sget-object v3, Lr/g;->b:Lcom/google/android/maps/driveabout/vector/aw;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(IFFLcom/google/android/maps/driveabout/vector/aw;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "David D."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method
