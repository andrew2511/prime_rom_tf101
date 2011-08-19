.class public Lcom/google/android/maps/driveabout/app/aI;
.super Ljava/lang/Object;


# static fields
.field private static final l:Landroid/net/Uri;


# instance fields
.field final a:[Landroid/graphics/Bitmap;

.field private final b:Landroid/content/Context;

.field private final c:Lak/h;

.field private d:Lcom/google/android/maps/driveabout/app/y;

.field private final e:Lcom/google/android/maps/driveabout/app/ay;

.field private final f:Lcom/google/android/maps/driveabout/app/ay;

.field private final g:Lcom/google/android/maps/driveabout/app/ay;

.field private final h:Lcom/google/android/maps/driveabout/app/ay;

.field private final i:Ljava/util/LinkedList;

.field private j:I

.field private k:LG/R;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.maps.LayerInfoProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/aI;->l:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lak/h;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aI;->j:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aI;->c:Lak/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aI;->h()Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->e:Lcom/google/android/maps/driveabout/app/ay;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->o()Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ay;

    const-string v1, "__RECENTS"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/R;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ay;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/R;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->e:Lcom/google/android/maps/driveabout/app/ay;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const v3, 0x7f0200e9

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0200e4

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0200ec

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->a:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->n()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->p()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aI;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/aI;)LG/R;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->k:LG/R;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "layerDisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isActive"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isSearch"

    aput-object v2, v0, v1

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "DATA_PROTO_SAVED_LAYER_STATE"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aI;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    const-string v0, "DATA_PROTO_SAVED_RECENT_LAYERS"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/aI;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;Law/e;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Law/e;->d(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    move-object v0, v4

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {p1, v1}, Law/e;->c(I)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_4
    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :try_start_4
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA_LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    sget-object v0, Ls/T;->a:Law/f;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_3
    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_8

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_8
    :goto_5
    move-object v0, v4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Law/e;

    sget-object v2, Ls/T;->o:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v2

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/maps/driveabout/app/aI;->a(Landroid/content/Context;Law/e;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x5

    invoke-static {v4, v6}, Law/b;->h(Law/e;I)Z

    move-result v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-int v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    move v4, v9

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v4, v10

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    throw v0

    :catch_0
    move-exception v1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_5
    return-void

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/aI;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aI;->b(Law/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/ay;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/bi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->c(Lcom/google/android/maps/driveabout/app/bi;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 13

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/ay;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aI;->j()Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    if-nez v9, :cond_3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v9, :cond_1

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    :try_start_7
    const-string v0, "layerDisplayName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "isActive"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-ltz v10, :cond_4

    if-gez v11, :cond_5

    :cond_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v9, :cond_1

    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :cond_5
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/ay;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f0200e1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    invoke-static {v12, v0}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/aI;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ay;->a()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v9, :cond_1

    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_9

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2

    :cond_9
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto/16 :goto_1
.end method

.method private b(Law/e;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/aI;->a(Law/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/aI;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/aI;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized c(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aI;->d(Lcom/google/android/maps/driveabout/app/bi;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aI;->j:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/ay;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->d(Lcom/google/android/maps/driveabout/app/bi;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->c:Lak/h;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/dE;-><init>(Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/app/bi;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    move v1, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->a:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/bi;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aI;->a:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method private declared-synchronized l()Z
    .locals 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/ay;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Z)Z

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v0, v2

    :goto_2
    monitor-exit p0

    return v0

    :cond_2
    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const-string v2, "ActiveDefaultLayers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ay;->a()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->a(I)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->c(Lcom/google/android/maps/driveabout/app/bi;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private o()Lcom/google/android/maps/driveabout/app/ay;
    .locals 10

    const/4 v4, 0x0

    new-instance v9, Lcom/google/android/maps/driveabout/app/ay;

    const-string v0, "__SYSTEM_LAYERS"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/R;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const-string v2, "TrafficIncident"

    const v6, 0x7f0200e0

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    invoke-static {v9, v0}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    return-object v9
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const-string v1, "ActiveDefaultLayers"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/app/aI;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Lcom/google/android/maps/driveabout/app/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Lcom/google/android/maps/driveabout/app/y;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/y;->a(Lcom/google/android/maps/driveabout/app/aI;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/R;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/R;-><init>(Lcom/google/android/maps/driveabout/app/aI;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/R;->start()V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/high16 v2, 0x4100

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->g:Lcom/google/android/maps/driveabout/app/ay;

    const-string v1, "TrafficIncident"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->b(Lcom/google/android/maps/driveabout/app/bi;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/bi;->a(FF)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/bi;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4170

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/bi;->a(FF)V

    goto :goto_1
.end method

.method public a(LG/R;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aI;->k:LG/R;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aI;->c(Lcom/google/android/maps/driveabout/app/bi;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Lcom/google/android/maps/driveabout/app/y;

    return-void
.end method

.method declared-synchronized a(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->h:Lcom/google/android/maps/driveabout/app/ay;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ay;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/maps/driveabout/app/bi;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Law/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Law/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/google/android/maps/driveabout/app/ay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->e:Lcom/google/android/maps/driveabout/app/ay;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aI;->d(Lcom/google/android/maps/driveabout/app/bi;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/app/ay;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->f:Lcom/google/android/maps/driveabout/app/ay;

    return-object v0
.end method

.method public declared-synchronized d()[Lcom/google/android/maps/driveabout/app/bi;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->m()V

    :cond_0
    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->l()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aI;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method h()Lcom/google/android/maps/driveabout/app/ay;
    .locals 13

    new-instance v9, Lcom/google/android/maps/driveabout/app/ay;

    const-string v0, "__DEFAULT"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/R;)V

    const/4 v0, 0x4

    new-array v10, v0, [Lcom/google/android/maps/driveabout/app/aJ;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b006d

    const v3, 0x7f0b006d

    const v4, 0x7f0200dc

    const v5, 0x7f0200e8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b006f

    const v3, 0x7f0b006f

    const v4, 0x7f0200db

    const v5, 0x7f0200e7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b0072

    const v3, 0x7f0b0074

    const v4, 0x7f0200d8

    const v5, 0x7f0200e2

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b0070

    const v3, 0x7f0b0070

    const v4, 0x7f0200de

    const v5, 0x7f0200ea

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    invoke-static {}, Las/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b0073

    const v3, 0x7f0b0073

    const v4, 0x7f0200da

    const v5, 0x7f0200e5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    :cond_0
    invoke-static {}, Las/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    const v2, 0x7f0b006e

    const v3, 0x7f0b006e

    const v4, 0x7f0200d9

    const v5, 0x7f0200e3

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Lcom/google/android/maps/driveabout/app/aI;IIIIZ)V

    aput-object v0, v10, v7

    :cond_1
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    array-length v0, v10

    if-ge v11, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    aget-object v1, v10, v11

    iget v1, v1, Lcom/google/android/maps/driveabout/app/aJ;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    aget-object v1, v10, v11

    iget v1, v1, Lcom/google/android/maps/driveabout/app/aJ;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    aget-object v3, v10, v11

    iget v6, v3, Lcom/google/android/maps/driveabout/app/aJ;->c:I

    aget-object v3, v10, v11

    iget v8, v3, Lcom/google/android/maps/driveabout/app/aJ;->d:I

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    if-eq v2, v12, :cond_2

    invoke-virtual {v0, v12}, Lcom/google/android/maps/driveabout/app/bi;->d(Ljava/lang/String;)V

    :cond_2
    aget-object v1, v10, v11

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/app/aJ;->e:Z

    if-nez v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bi;->c(I)Lcom/google/android/maps/driveabout/app/bi;

    :cond_3
    invoke-static {v9, v0}, Lcom/google/android/maps/driveabout/app/ay;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method protected i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    const-string v1, "DA_LayerInfo"

    sget-object v2, Ls/t;->o:Law/f;

    invoke-static {v0, v1, v2}, Las/a;->a(Landroid/content/Context;Ljava/lang/String;Law/f;)Law/e;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aI;->b(Law/e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aI;->c:Lak/h;

    new-instance v2, Lcom/google/android/maps/driveabout/app/ah;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/driveabout/app/ah;-><init>(Lcom/google/android/maps/driveabout/app/aI;Law/e;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    invoke-static {v0}, Las/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/aI;->l:Landroid/net/Uri;

    const-string v3, "isSearch=1"

    const-string v5, "_id desc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
