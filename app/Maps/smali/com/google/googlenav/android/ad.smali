.class public Lcom/google/googlenav/android/ad;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/google/googlenav/android/ad;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Hashtable;

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/android/ad;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/ad;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/googlenav/android/ad;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/google/googlenav/android/ad;
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/ad;->g:Lcom/google/googlenav/android/ad;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/ad;->g:Lcom/google/googlenav/android/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/android/ad;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/ad;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/googlenav/android/ad;->g:Lcom/google/googlenav/android/ad;

    :cond_0
    return-void
.end method

.method private c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/google/googlenav/android/ad;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/android/ad;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/M;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/googlenav/android/M;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/ad;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/android/ad;->c:I

    iput p2, p0, Lcom/google/googlenav/android/ad;->d:I

    iput-object p3, p0, Lcom/google/googlenav/android/ad;->e:Landroid/content/Intent;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(ILcom/google/googlenav/android/M;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V
    .locals 2

    invoke-interface {p2}, Lcom/google/googlenav/android/M;->ay_()I

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/android/ad;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/android/ad;->a(ILcom/google/googlenav/android/M;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/M;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/googlenav/android/ad;->c:I

    invoke-interface {p1}, Lcom/google/googlenav/android/M;->ay_()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/googlenav/android/ad;->c:I

    iget v2, p0, Lcom/google/googlenav/android/ad;->d:I

    iget-object v3, p0, Lcom/google/googlenav/android/ad;->e:Landroid/content/Intent;

    invoke-interface {p1, v1, v2, v3}, Lcom/google/googlenav/android/M;->a(IILandroid/content/Intent;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/android/ad;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/android/ad;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/android/ad;->e:Landroid/content/Intent;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/googlenav/android/ad;->c:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
