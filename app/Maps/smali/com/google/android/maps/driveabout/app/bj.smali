.class public Lcom/google/android/maps/driveabout/app/bj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[LF/u;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[LF/K;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->g:I

    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 3

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

    const-string v1, "fd"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v1, "d"

    :goto_0
    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "w"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(LF/u;I[LF/K;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bb;->a(LF/u;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bb;->a(I)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bb;->a([LF/K;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bb;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([LF/u;I[LF/K;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bb;->a([LF/u;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bb;->a(I)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bb;->a([LF/K;)Lcom/google/android/maps/driveabout/app/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bb;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LG/y;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bj;->b(LG/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([LF/K;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bj;->b([LF/K;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "google.navigation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)LG/y;
    .locals 8

    const/4 v7, 0x0

    const-wide v5, 0x412e848000000000L

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    new-instance v0, LG/y;

    mul-double/2addr v1, v5

    double-to-int v1, v1

    mul-double v2, v3, v5

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, LG/y;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_0
    move-object v0, v7

    goto :goto_0
.end method

.method private static b(LG/y;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LG/y;->a()I

    move-result v1

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LG/y;->b()I

    move-result v1

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([LF/K;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v3}, LF/K;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, LF/K;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)[LF/K;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [LF/K;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [LF/K;

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    const-string v6, ":"

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-eq v6, v9, :cond_1

    move-object v0, v10

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v7, v4, 0x1

    new-instance v8, LF/K;

    invoke-direct {v8, v6, v5}, LF/K;-><init>(II)V

    aput-object v8, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static k()Landroid/net/Uri;
    .locals 3

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

    const-string v1, "resume"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private l()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "nav"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "daddr"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v2, "dirflg"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:I

    new-array v0, v5, [LF/u;

    new-instance v2, LF/u;

    invoke-direct {v2, v1, v4, v4, v4}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bj;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/app/bj;->h:Z

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const-string v0, "google.navigation:"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "sync_layers"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/app/bj;->i:Z

    :cond_2
    const-string v0, "resume"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v8, p0, Lcom/google/android/maps/driveabout/app/bj;->g:I

    move v0, v7

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "w"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    :goto_2
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:I

    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->d:Ljava/lang/String;

    const-string v0, "fd"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bj;->g:I

    move v0, v7

    goto/16 :goto_0

    :cond_5
    move v0, v6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    const-string v2, "ll"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bj;->b(Ljava/lang/String;)LG/y;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v6

    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    :goto_3
    const-string v0, "opt"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bj;->c(Ljava/lang/String;)[LF/K;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->e:[LF/K;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->e:[LF/K;

    if-nez v0, :cond_8

    move v0, v6

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "altvia"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bj;->b(Ljava/lang/String;)LG/y;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v6

    goto/16 :goto_0

    :cond_9
    new-instance v5, LF/u;

    invoke-direct {v5, v0}, LF/u;-><init>(LG/y;)V

    invoke-virtual {v5, v8}, LF/u;->a(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const-string v0, "r"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->f:Ljava/lang/String;

    const-string v0, "q"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "token"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    new-instance v5, LF/u;

    invoke-direct {v5, v0, v2, v4, v1}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [LF/u;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/u;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    move v0, v7

    goto/16 :goto_0

    :cond_c
    move v0, v6

    goto/16 :goto_0

    :cond_d
    move-object v2, v0

    goto :goto_3
.end method

.method public b()LF/u;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[LF/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->b:[LF/u;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bj;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()[LF/K;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->e:[LF/K;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bj;->g:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bj;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bj;->h:Z

    return v0
.end method
