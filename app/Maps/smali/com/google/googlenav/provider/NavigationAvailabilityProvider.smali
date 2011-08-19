.class public Lcom/google/googlenav/provider/NavigationAvailabilityProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/google/googlenav/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "navigation_available"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b:[Ljava/lang/String;

    const-string v0, "content://com.google.android.maps.NavigationAvailabilityProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x53

    const-string v2, "r"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lf/h;
    .locals 10

    const-wide v8, 0x412e848000000000L

    const/4 v7, 0x0

    if-nez p0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4056800000000000L

    cmpl-double v0, v1, v5

    if-gtz v0, :cond_2

    const-wide v5, -0x3fa9800000000000L

    cmpg-double v0, v1, v5

    if-ltz v0, :cond_2

    const-wide v5, 0x4066800000000000L

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_2

    const-wide v5, -0x3f99800000000000L

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    move-object v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Lf/h;

    mul-double/2addr v1, v8

    double-to-int v1, v1

    mul-double v2, v3, v8

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0
.end method

.method private a(Lf/h;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/ac;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/net/Uri;)I
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Ljava/lang/String;)Lf/h;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Lf/h;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Lf/h;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deletion not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.dir/vnd.gmm.navigation_availability"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insertion not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    new-instance v0, Lcom/google/googlenav/ac;

    invoke-direct {v0}, Lcom/google/googlenav/ac;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/ac;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/ac;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->c:Lcom/google/googlenav/ac;

    invoke-virtual {v0}, Lcom/google/googlenav/ac;->c()Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/NavigationAvailabilityProvider;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
