.class public final Lcom/google/android/apps/uploader/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private final b:I

.field private c:Landroid/content/ContentResolver;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/B;->f:Lcom/google/android/apps/uploader/B;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/B;->g:Lcom/google/android/apps/uploader/B;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/J;->d:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/J;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/J;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    .line 62
    iput p2, p0, Lcom/google/android/apps/uploader/J;->b:I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/uploader/J;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes_total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/J;->f:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/google/android/apps/uploader/J;->e()V

    .line 66
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/google/android/apps/uploader/y;
    .locals 22
    .parameter

    .prologue
    .line 308
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 310
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    const/16 v3, 0xc

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 312
    const/16 v3, 0xd

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 314
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 315
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 317
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 318
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 319
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 320
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 321
    const/16 v3, 0x8

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 323
    const/16 v3, 0x9

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 324
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 326
    const/16 v3, 0xb

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 327
    const/16 v3, 0xe

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 328
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    move-object/from16 v11, p0

    .line 330
    :goto_0
    new-instance v3, Lcom/google/android/apps/uploader/y;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/apps/uploader/y;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    .line 333
    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/y;->a(J)V

    .line 334
    invoke-static {}, Lcom/google/android/apps/uploader/B;->values()[Lcom/google/android/apps/uploader/B;

    move-result-object p0

    aget-object p0, p0, v20

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;Ljava/lang/String;)V

    .line 336
    return-object v3

    .line 328
    :cond_0
    const/16 p0, 0x0

    move-object/from16 v11, p0

    goto :goto_0
.end method

.method private static e(Lcom/google/android/apps/uploader/y;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 340
    sget-object v0, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/y;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 6

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/apps/uploader/J;->a(Landroid/database/Cursor;)Lcom/google/android/apps/uploader/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-void
.end method

.method private f()V
    .locals 11

    .prologue
    const-wide/16 v7, -0x1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/uploader/J;->g()I

    move-result v0

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    .line 126
    if-gtz v0, :cond_1

    .line 128
    monitor-exit p0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v1, "MediaUploader"

    const-string v2, "Auto cleaning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 134
    const/4 v2, 0x0

    move v3, v0

    move-wide v4, v7

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->r()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->j()J

    move-result-wide v4

    .line 139
    add-int/lit8 v0, v3, -0x1

    if-eqz v0, :cond_2

    move-wide v3, v4

    .line 141
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-wide v9, v3

    move-wide v4, v9

    move v3, v0

    goto :goto_1

    :cond_2
    move-wide v2, v4

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    cmp-long v0, v2, v7

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/uploader/J;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v3

    move-wide v9, v4

    move-wide v3, v9

    goto :goto_2
.end method

.method private declared-synchronized g()I
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
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


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/apps/uploader/y;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 222
    if-nez v2, :cond_0

    move-object v2, v0

    .line 223
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_1
    move-object v2, v0

    .line 226
    goto :goto_0

    .line 230
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/y;->s()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    move-object v0, v5

    goto :goto_2

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/google/android/apps/uploader/y;)V
    .locals 4
    .parameter

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v1, "file_uri"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "mime_type"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "auth_token_type"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "request_template"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "destination"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "bytes_total"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "bytes_uploaded"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "state_detail"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "thumbnail"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->l()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 112
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->q()Landroid/net/Uri;

    move-result-object v1

    .line 113
    const-string v2, "upload_uri"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/uploader/J;->f()V

    .line 119
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 284
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/apps/uploader/B;->d:Lcom/google/android/apps/uploader/B;

    move-object v1, v0

    .line 286
    :goto_0
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 288
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->s()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v3

    iget v5, p0, Lcom/google/android/apps/uploader/J;->b:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_1
    sget-object v0, Lcom/google/android/apps/uploader/B;->e:Lcom/google/android/apps/uploader/B;

    move-object v1, v0

    goto :goto_0

    .line 292
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 295
    const-string v2, "state"

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v1, "state_detail"

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/uploader/J;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public final declared-synchronized b()I
    .locals 3

    .prologue
    .line 234
    monitor-enter p0

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->s()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit p0

    return v2

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final b(Lcom/google/android/apps/uploader/y;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/y;->a(Lcom/google/android/apps/uploader/B;Ljava/lang/String;)V

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->a()Lcom/google/android/apps/uploader/B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/B;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "state_detail"

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/uploader/J;->e(Lcom/google/android/apps/uploader/y;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 3

    .prologue
    .line 244
    monitor-enter p0

    const/4 v0, 0x0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 246
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    .line 250
    :cond_0
    monitor-exit p0

    return v2

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final c(Lcom/google/android/apps/uploader/y;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 181
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->q()Landroid/net/Uri;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->n()J

    move-result-wide v2

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 185
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/uploader/y;->a(J)V

    .line 186
    cmp-long v4, v2, v7

    if-nez v4, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/y;->a(Landroid/net/Uri;)V

    .line 189
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    const-string v4, "bytes_uploaded"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 194
    const-string v2, "upload_uri"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/uploader/J;->e(Lcom/google/android/apps/uploader/y;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v6

    .line 194
    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-gtz v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/y;

    .line 265
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/uploader/UploadsContentProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/uploader/J;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lcom/google/android/apps/uploader/y;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/uploader/J;->c:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/uploader/J;->e(Lcom/google/android/apps/uploader/y;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
