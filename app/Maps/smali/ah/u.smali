.class public Lah/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/be;

.field private final c:Lb/p;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/Random;

.field private final f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BACK_TO_CAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LIST_VIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SATELLITE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ROUTE_OVERVIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TRAFFIC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREET_VIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ALTERNATE_ROUTES"

    aput-object v2, v0, v1

    sput-object v0, Lah/u;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/be;JII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    sget-object v1, Lb/p;->a:Lb/p;

    iput-object v1, p0, Lah/u;->c:Lb/p;

    iput-wide p2, p0, Lah/u;->f:J

    new-instance v1, Ljava/util/Random;

    iget-wide v2, p0, Lah/u;->f:J

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lah/u;->e:Ljava/util/Random;

    new-instance v1, Lah/D;

    invoke-direct {v1, p0, v0, p5}, Lah/D;-><init>(Lah/u;Landroid/os/Handler;I)V

    iput-object v1, p0, Lah/u;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lah/u;->d:Ljava/lang/Runnable;

    mul-int/lit16 v2, p4, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a()I
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lah/u;->c:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    instance-of v1, v0, Lb/b;

    if-nez v1, :cond_0

    iget-object v1, p0, Lah/u;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lb/A;->a:Lb/A;

    if-ne v0, v1, :cond_1

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    :goto_1
    iget-object v1, p0, Lah/u;->e:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lb/q;->a:Lb/q;

    if-ne v0, v1, :cond_2

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    goto :goto_1

    :cond_2
    sget-object v1, Lb/s;->a:Lb/s;

    if-ne v0, v1, :cond_3

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    goto :goto_1

    :cond_3
    sget-object v1, Lb/j;->a:Lb/j;

    if-ne v0, v1, :cond_4

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    goto :goto_1

    :cond_4
    sget-object v1, Lb/g;->a:Lb/g;

    if-ne v0, v1, :cond_5

    new-array v0, v6, [I

    fill-array-data v0, :array_4

    goto :goto_1

    :cond_5
    sget-object v1, Lb/d;->a:Lb/d;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    goto :goto_1

    :cond_6
    sget-object v1, Lb/e;->a:Lb/e;

    if-ne v0, v1, :cond_7

    new-array v0, v4, [I

    aput v6, v0, v3

    goto :goto_1

    :cond_7
    new-array v0, v4, [I

    aput v3, v0, v3

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lah/u;)I
    .locals 1

    invoke-direct {p0}, Lah/u;->a()I

    move-result v0

    return v0
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->g()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->d()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lah/u;->g:Z

    if-nez v0, :cond_0

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lah/u;->g:Z

    iget-object v0, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    iget-boolean v1, p0, Lah/u;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->b(Z)V

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->i()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lah/u;->c:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lah/u;->c:Lb/p;

    invoke-virtual {v1}, Lb/p;->a()Lb/k;

    move-result-object v1

    sget-object v2, Lb/q;->a:Lb/q;

    if-eq v1, v2, :cond_1

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lb/k;->d(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lah/u;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->e()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lah/u;->c:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->r()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lah/u;I)V
    .locals 0

    invoke-direct {p0, p1}, Lah/u;->a(I)V

    return-void
.end method

.method static synthetic b(Lah/u;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lah/u;->d:Ljava/lang/Runnable;

    return-object v0
.end method
