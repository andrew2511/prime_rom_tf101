.class Lcom/google/android/apps/books/appwidget/BooksRVFactory;
.super Ljava/lang/Object;
.source "BooksAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;
    }
.end annotation


# static fields
.field private static final MAX_BOOKS_TO_DISPLAY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BooksAppWidget"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mAppContext:Landroid/content/Context;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCollectionObserver:Landroid/database/ContentObserver;

.field private mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResolver:Landroid/content/ContentResolver;

.field private mVolumeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;-><init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;-><init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadAccountFromPreferences()V

    return-void
.end method

.method private forceEmptyToLoading()V
    .locals 4

    .prologue
    const v3, 0x7f0e0010

    .line 165
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 167
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 168
    const v1, 0x7f0e0011

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 171
    return-void
.end method

.method private forceEmptyToStatic(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "message"

    .prologue
    const v3, 0x7f0e0011

    .line 174
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 177
    const v1, 0x1020014

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0e0010

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 181
    return-void
.end method

.method private getAppWidgetIds()[I
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method private getViewAtInternal(I)Landroid/widget/RemoteViews;
    .locals 25
    .parameter "position"

    .prologue
    .line 292
    const-string v5, "BooksAppWidget"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const-string v5, "BooksAppWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getViewAtInternal() at position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_2

    .line 299
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 372
    :goto_0
    return-object v5

    .line 302
    :cond_2
    const/16 v18, 0x0

    .line 303
    .local v18, inStream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 304
    .local v24, volumeId:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 305
    .local v6, volumeUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v7, Lcom/google/android/apps/books/appwidget/BooksRVFactory$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 307
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    .line 308
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    goto :goto_0

    .line 314
    :cond_3
    :try_start_0
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 315
    .local v23, volumeCoverUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    move-object v7, v0

    const/16 v8, 0x96

    const/4 v9, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 321
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 323
    .local v14, coverState:I
    const/4 v5, 0x3

    if-eq v14, v5, :cond_6

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 361
    if-eqz v18, :cond_5

    .line 362
    :try_start_1
    throw v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 367
    .end local v6           #volumeUri:Landroid/net/Uri;
    :cond_5
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 328
    .restart local v6       #volumeUri:Landroid/net/Uri;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 329
    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 332
    .local v13, coverBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 333
    .local v22, viewability:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 334
    .local v20, openAccess:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, buyUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v11

    .line 336
    .local v11, access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v5, v11}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 339
    .local v19, isSample:Z
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f040004

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 341
    .local v21, rv:Landroid/widget/RemoteViews;
    const v5, 0x7f0e000e

    if-eqz v19, :cond_8

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v21

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 343
    const v5, 0x7f0e000d

    move-object/from16 v0, v21

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 345
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v17, fillInIntent:Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 347
    const-string v5, "books:internalIntent"

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    .end local v6           #volumeUri:Landroid/net/Uri;
    const v5, 0x4004000

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const v5, 0x7f0e000c

    move-object/from16 v0, v21

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    if-eqz v18, :cond_7

    .line 362
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 367
    :cond_7
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object/from16 v5, v21

    goto/16 :goto_0

    .line 341
    .end local v17           #fillInIntent:Landroid/content/Intent;
    .restart local v6       #volumeUri:Landroid/net/Uri;
    :cond_8
    const/16 v7, 0x8

    goto :goto_2

    .line 355
    .end local v6           #volumeUri:Landroid/net/Uri;
    .end local v11           #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v12           #buyUrl:Ljava/lang/String;
    .end local v13           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v14           #coverState:I
    .end local v19           #isSample:Z
    .end local v20           #openAccess:Ljava/lang/String;
    .end local v21           #rv:Landroid/widget/RemoteViews;
    .end local v22           #viewability:Ljava/lang/String;
    .end local v23           #volumeCoverUri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 356
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v5, "BooksAppWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem finding cover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 361
    if-eqz v18, :cond_9

    .line 362
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 367
    :cond_9
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 372
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    goto/16 :goto_0

    .line 357
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .line 358
    .local v16, e:Ljava/io/IOException;
    :try_start_6
    const-string v5, "BooksAppWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem reading cover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 361
    if-eqz v18, :cond_a

    .line 362
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 367
    :cond_a
    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 360
    .end local v16           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 361
    if-eqz v18, :cond_b

    .line 362
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 367
    :cond_b
    :goto_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 364
    .restart local v6       #volumeUri:Landroid/net/Uri;
    .restart local v14       #coverState:I
    .restart local v23       #volumeCoverUri:Landroid/net/Uri;
    :catch_2
    move-exception v6

    goto/16 :goto_1

    .end local v6           #volumeUri:Landroid/net/Uri;
    .restart local v11       #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v12       #buyUrl:Ljava/lang/String;
    .restart local v13       #coverBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #fillInIntent:Landroid/content/Intent;
    .restart local v19       #isSample:Z
    .restart local v20       #openAccess:Ljava/lang/String;
    .restart local v21       #rv:Landroid/widget/RemoteViews;
    .restart local v22       #viewability:Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_3

    .end local v11           #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v12           #buyUrl:Ljava/lang/String;
    .end local v13           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v14           #coverState:I
    .end local v17           #fillInIntent:Landroid/content/Intent;
    .end local v19           #isSample:Z
    .end local v20           #openAccess:Ljava/lang/String;
    .end local v21           #rv:Landroid/widget/RemoteViews;
    .end local v22           #viewability:Ljava/lang/String;
    .end local v23           #volumeCoverUri:Landroid/net/Uri;
    .local v16, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    goto :goto_4

    .local v16, e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_6

    .end local v16           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    goto :goto_7
.end method

.method private loadAccountFromPreferences()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "BooksAppWidget"

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    .line 189
    .local v2, originalAccount:Landroid/accounts/Account;
    new-instance v4, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    .line 192
    iget-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    iget-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v7

    .line 195
    .local v0, accountChanged:Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_3

    move v3, v7

    .line 196
    .local v3, validAccount:Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 197
    const-string v4, "BooksAppWidget"

    const/4 v4, 0x3

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const-string v4, "BooksAppWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAccountFromPreferences() found new account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v5, 0x7

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, bookCollectionUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    .end local v1           #bookCollectionUri:Landroid/net/Uri;
    :cond_1
    return-void

    .end local v0           #accountChanged:Z
    .end local v3           #validAccount:Z
    :cond_2
    move v0, v6

    .line 194
    goto :goto_0

    .restart local v0       #accountChanged:Z
    :cond_3
    move v3, v6

    .line 195
    goto :goto_1
.end method

.method private loadVolumeList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, token:J
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeListInternal()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private loadVolumeListInternal()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "BooksAppWidget"

    .line 220
    const-string v0, "BooksAppWidget"

    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "BooksAppWidget"

    const-string v0, "loadVolumeListInternal()"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v9, 0x7

    invoke-static {v0, v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 225
    .local v1, volumesUri:Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v11

    .line 229
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "CASE WHEN %s IS NULL THEN %d ELSE %s END DESC"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v9, "last_access"

    aput-object v9, v4, v11

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v12

    const/4 v9, 0x2

    const-string v10, "last_access"

    aput-object v10, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, sortingOrder:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 235
    .local v8, volumeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    .line 238
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, volumeId:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 242
    .end local v7           #volumeId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    return-object v8
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const-string v2, "BooksAppWidget"

    .line 250
    const-string v0, "BooksAppWidget"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "BooksAppWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCount() found size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040004

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0e000d

    const v2, 0x7f02004b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 276
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "position"

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    .local v0, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getViewAtInternal(I)Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadAccountFromPreferences()V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualSync(Landroid/accounts/Account;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    const-string v1, "BooksAppWidget"

    .line 138
    const-string v0, "BooksAppWidget"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "BooksAppWidget"

    const-string v0, "onDataSetChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToLoading()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToStatic(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->forceEmptyToStatic(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAccountListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mCollectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    return-void
.end method
