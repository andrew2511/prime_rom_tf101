.class Lcom/google/android/maps/driveabout/app/dx;
.super Ljava/lang/Object;


# instance fields
.field final a:LG/y;

.field final b:LF/s;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(LF/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LF/u;->e()LG/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    invoke-virtual {p1}, LF/u;->f()LF/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    invoke-virtual {p1}, LF/u;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/dx;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    invoke-static {v0}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    invoke-static {v1}, LG/Q;->a(LG/y;)LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, LG/Q;->e()D

    move-result-wide v3

    div-double v0, v1, v3

    const-wide/high16 v2, 0x4069

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/maps/driveabout/app/dx;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    invoke-virtual {v0, v1}, LG/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    invoke-virtual {v0, v1}, LF/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dx;->a:LG/y;

    invoke-virtual {v0}, LG/y;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dx;->b:LF/s;

    invoke-virtual {v1}, LF/s;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dx;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
