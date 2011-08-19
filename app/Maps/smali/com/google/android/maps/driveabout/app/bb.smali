.class public Lcom/google/android/maps/driveabout/app/bb;
.super Ljava/lang/Object;


# instance fields
.field private a:[LF/u;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:[LF/K;

.field private e:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "altvia"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bj;->a(LG/y;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    aget-object v1, v2, v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "ll"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bj;->a(LG/y;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v1}, LF/u;->f()LF/s;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "q"

    invoke-virtual {v2}, LF/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v1}, LF/u;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v1}, LF/u;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bb;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const-string v1, "mode"

    const-string v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bb;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "entry"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bb;->d:[LF/K;

    if-eqz v1, :cond_8

    const-string v1, "opt"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->d:[LF/K;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bj;->a([LF/K;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bb;->e:Landroid/content/Intent;

    if-eqz v1, :cond_9

    const-string v1, "r"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bb;->e:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method a(I)Lcom/google/android/maps/driveabout/app/bb;
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bb;->b:I

    return-object p0
.end method

.method a(LF/u;)Lcom/google/android/maps/driveabout/app/bb;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [LF/u;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    return-object p0
.end method

.method a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->e:Landroid/content/Intent;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->c:Ljava/lang/String;

    return-object p0
.end method

.method a([LF/K;)Lcom/google/android/maps/driveabout/app/bb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->d:[LF/K;

    return-object p0
.end method

.method a([LF/u;)Lcom/google/android/maps/driveabout/app/bb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->a:[LF/u;

    return-object p0
.end method
