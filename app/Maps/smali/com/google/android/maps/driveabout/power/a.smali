.class public Lcom/google/android/maps/driveabout/power/a;
.super Ljava/lang/Object;

# interfaces
.implements LF/G;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LF/w;)Z
    .locals 1

    invoke-virtual {p1}, LF/w;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/power/i;->b()Lcom/google/android/maps/driveabout/power/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->c(Lcom/google/android/maps/driveabout/power/i;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILF/l;LF/B;)V
    .locals 0

    return-void
.end method

.method public a(LF/B;)V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/power/i;->b()Lcom/google/android/maps/driveabout/power/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->d(Lcom/google/android/maps/driveabout/power/i;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, LF/B;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "User not on route"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, LF/B;->b()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    const-string v0, "User on a long step"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(LF/w;I)V
    .locals 1

    const/16 v0, 0x1f4

    if-gt p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/a;->a(LF/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Approaching guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(LF/B;)V
    .locals 0

    return-void
.end method

.method public b(LF/w;I)V
    .locals 1

    if-lez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/a;->a(LF/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(LF/B;)V
    .locals 0

    return-void
.end method

.method public d(LF/B;)V
    .locals 0

    return-void
.end method

.method public e(LF/B;)V
    .locals 0

    return-void
.end method

.method public f(LF/B;)V
    .locals 0

    return-void
.end method
