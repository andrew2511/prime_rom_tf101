.class Lcom/google/android/maps/driveabout/app/q;
.super Lcom/google/android/maps/driveabout/app/cB;


# static fields
.field static final a:[Ljava/lang/String;

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.google.android.maps.StarredItemProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->d:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b00b1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aQ;->a(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/maps/driveabout/app/aQ;->a()Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/q;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dy;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dy;-><init>(Lcom/google/android/maps/driveabout/app/q;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dy;->start()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/q;->d:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/q;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/q;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/app/q;->d:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/q;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0b00b1

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v2, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    new-instance v5, LG/y;

    invoke-direct {v5, v2, v4}, LG/y;-><init>(II)V

    move-object v2, v5

    :goto_1
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_2

    if-eqz v5, :cond_0

    :cond_2
    if-nez v5, :cond_3

    move-object v5, v4

    :cond_3
    new-instance v6, LF/u;

    invoke-direct {v6, v5, v2, v4, v3}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v6, v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(LF/u;I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    const v0, 0x7f0b00b9

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/q;->b(Ljava/util/ArrayList;)V

    return-void
.end method
