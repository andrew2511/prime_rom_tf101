.class public Lcom/google/android/location/localizer/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/g;

.field private final b:Lcom/google/android/location/localizer/i;


# direct methods
.method public constructor <init>(Lal/a;Lal/a;Lw/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Lw/l;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/localizer/MetricModel;->a(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/localizer/MetricModel;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/localizer/t;

    invoke-direct {v1, v0}, Lcom/google/android/location/localizer/t;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/location/localizer/g;

    new-instance v2, Lcom/google/android/location/localizer/p;

    invoke-direct {v2}, Lcom/google/android/location/localizer/p;-><init>()V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/google/android/location/localizer/g;-><init>(Lcom/google/android/location/localizer/p;Lcom/google/android/location/localizer/t;Lal/a;Lw/l;)V

    iput-object v0, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/g;

    new-instance v0, Lcom/google/android/location/localizer/i;

    invoke-direct {v0, p1, p3}, Lcom/google/android/location/localizer/i;-><init>(Lal/a;Lw/l;)V

    iput-object v0, p0, Lcom/google/android/location/localizer/a;->b:Lcom/google/android/location/localizer/i;

    return-void
.end method

.method private a(LW/k;LW/k;)LW/d;
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/g;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/util/List;)LW/d;

    move-result-object v0

    iget-object v1, v0, LW/d;->d:LW/n;

    sget-object v2, LW/n;->a:LW/n;

    if-eq v1, v2, :cond_0

    if-eq p1, p2, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/location/localizer/a;->a:Lcom/google/android/location/localizer/g;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/util/List;)LW/d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(LW/h;LW/h;)LW/h;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, LW/h;->d:LW/n;

    sget-object v1, LW/n;->a:LW/n;

    if-ne v0, v1, :cond_0

    move v0, v6

    :goto_0
    iget-object v1, p2, LW/h;->d:LW/n;

    sget-object v2, LW/n;->a:LW/n;

    if-ne v1, v2, :cond_1

    move v1, v6

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, p2

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    move-object v0, p1

    goto :goto_2

    :cond_4
    iget-object v0, p1, LW/h;->c:LW/o;

    iget-object v1, p2, LW/h;->c:LW/o;

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(LW/o;LW/o;)I

    move-result v2

    iget v3, v0, LW/o;->c:I

    iget v4, v1, LW/o;->c:I

    add-int/2addr v3, v4

    const v4, 0x3567e0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    if-gt v2, v3, :cond_5

    move v2, v6

    :goto_3
    if-eqz v2, :cond_7

    iget v0, v0, LW/o;->c:I

    iget v1, v1, LW/o;->c:I

    if-le v0, v1, :cond_6

    move v0, v6

    :goto_4
    if-eqz v0, :cond_9

    move-object v0, p2

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_4

    :cond_7
    iget v0, v0, LW/o;->d:I

    iget v1, v1, LW/o;->d:I

    if-ge v0, v1, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    move v0, v5

    goto :goto_4

    :cond_9
    move-object v0, p1

    goto :goto_2
.end method


# virtual methods
.method public a(LW/a;LW/k;LW/i;)LW/b;
    .locals 5

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/location/localizer/a;->a(LW/k;LW/k;)LW/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/localizer/a;->b:Lcom/google/android/location/localizer/i;

    invoke-virtual {v1, p1}, Lcom/google/android/location/localizer/i;->a(LW/a;)LW/l;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/localizer/a;->a(LW/h;LW/h;)LW/h;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p3, LW/i;->d:LW/n;

    sget-object v4, LW/n;->a:LW/n;

    if-ne v3, v4, :cond_0

    move-object v2, p3

    :cond_0
    new-instance v3, LW/b;

    invoke-direct {v3, v2, v0, v1, p3}, LW/b;-><init>(LW/h;LW/d;LW/l;LW/i;)V

    return-object v3

    :cond_1
    iget-object v0, p3, LW/i;->a:LW/k;

    goto :goto_0
.end method
