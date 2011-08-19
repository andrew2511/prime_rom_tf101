.class Lcom/google/android/maps/driveabout/app/cJ;
.super Lcom/google/android/maps/driveabout/app/cB;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/cJ;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b00b0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aQ;->a(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/maps/driveabout/app/aQ;->a()Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cJ;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/S;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/S;-><init>(Lcom/google/android/maps/driveabout/app/cJ;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/S;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cJ;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cJ;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cJ;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/maps/driveabout/app/cJ;->a:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.dir/postal-address_v2\' AND in_visible_group=1"

    const-string v5, "display_name, is_super_primary desc, is_primary desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0b00b0

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/aQ;->a(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    new-instance v6, LF/u;

    invoke-direct {v6, v5, v4, v3, v4}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6, v8}, Lcom/google/android/maps/driveabout/app/aQ;->a(LF/u;I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_3

    const v0, 0x7f0b00ba

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b(I)Lcom/google/android/maps/driveabout/app/aQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/cJ;->b(Ljava/util/ArrayList;)V

    return-void
.end method
