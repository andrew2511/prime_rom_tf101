.class Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/widget/BookmarkThumbnailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookmarkFactory"
.end annotation


# instance fields
.field private mBookmarks:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootFolder:J

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const-wide/16 v0, -0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 166
    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 170
    iput-object p1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    .line 171
    iput p2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    .line 172
    return-void
.end method

.method private resetBookmarks()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method getRootFolder()J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 331
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    const-string v3, "id"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 333
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/browser/BookmarkUtils;->addAccountInfo(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 334
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 338
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 22
    .parameter "position"

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 217
    const/4 v5, 0x0

    .line 283
    :goto_0
    return-object v5

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 221
    .local v15, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 222
    .local v20, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 223
    .local v21, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 225
    .local v17, isFolder:Z
    :goto_1
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04000c

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v4, views:Landroid/widget/RemoteViews;
    move-object/from16 v12, v20

    .line 229
    .local v12, displayTitle:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    move-object/from16 v12, v21

    .line 233
    :cond_1
    const v5, 0x7f100012

    invoke-virtual {v4, v5, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    if-eqz v17, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    move-wide v5, v0

    cmp-long v5, v15, v5

    if-nez v5, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 237
    const v5, 0x7f100018

    const v6, 0x7f020075

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    :goto_2
    const v5, 0x7f100001

    const v6, 0x7f020028

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 242
    const v5, 0x7f100018

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 269
    :goto_3
    if-eqz v17, :cond_7

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.browser.widget.CHANGE_FOLDER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "appWidgetId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "_id"

    move-object v0, v5

    move-object v1, v6

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v14

    .line 282
    .local v14, fillin:Landroid/content/Intent;
    :goto_4
    const v5, 0x7f100011

    invoke-virtual {v4, v5, v14}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    move-object v5, v4

    .line 283
    goto/16 :goto_0

    .line 223
    .end local v4           #views:Landroid/widget/RemoteViews;
    .end local v12           #displayTitle:Ljava/lang/String;
    .end local v14           #fillin:Landroid/content/Intent;
    .end local v17           #isFolder:Z
    :cond_2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_1

    .line 239
    .restart local v4       #views:Landroid/widget/RemoteViews;
    .restart local v12       #displayTitle:Ljava/lang/String;
    .restart local v17       #isFolder:Z
    :cond_3
    const v5, 0x7f100018

    const v6, 0x7f020076

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 245
    :cond_4
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v18, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v5

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 247
    const/16 v19, 0x0

    .local v19, thumbnail:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 248
    .local v13, favicon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 249
    .local v11, blob:[B
    const v5, 0x7f100018

    const/4 v6, 0x1

    const/16 v7, 0xff

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 250
    if-eqz v11, :cond_5

    array-length v5, v11

    if-lez v5, :cond_5

    .line 251
    const/4 v5, 0x0

    array-length v6, v11

    move-object v0, v11

    move v1, v5

    move v2, v6

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 253
    const v5, 0x7f100018

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 258
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 259
    if-eqz v11, :cond_6

    array-length v5, v11

    if-lez v5, :cond_6

    .line 260
    const/4 v5, 0x0

    array-length v6, v11

    move-object v0, v11

    move v1, v5

    move v2, v6

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 262
    const v5, 0x7f100001

    invoke-virtual {v4, v5, v13}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 255
    :cond_5
    const v5, 0x7f100018

    const v6, 0x7f020011

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    .line 264
    :cond_6
    const v5, 0x7f100001

    const v6, 0x7f020001

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 274
    .end local v11           #blob:[B
    .end local v13           #favicon:Landroid/graphics/Bitmap;
    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #thumbnail:Landroid/graphics/Bitmap;
    :cond_7
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 275
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v14

    .restart local v14       #fillin:Landroid/content/Intent;
    goto/16 :goto_4

    .line 279
    .end local v14           #fillin:Landroid/content/Intent;
    :cond_8
    new-instance v14, Landroid/content/Intent;

    const-string v5, "show_browser"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14       #fillin:Landroid/content/Intent;
    goto/16 :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method loadBookmarks()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->resetBookmarks()V

    .line 347
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/browser/BookmarkUtils;->addAccountInfo(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 351
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 353
    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    iget-wide v7, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 357
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 361
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onDataSetChanged()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 312
    .local v0, token:J
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->syncState()V

    .line 313
    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getRootFolder()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 316
    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    iput-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 317
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->saveState()V

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->loadBookmarks()V

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mBookmarks:Landroid/database/Cursor;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 307
    return-void
.end method

.method saveState()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_folder"

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "root_folder"

    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    return-void
.end method

.method syncState()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 175
    iget-object v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v2, v3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "current_folder"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 179
    .local v0, currentFolder:J
    iget-object v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "root_folder"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    .line 180
    iget-wide v2, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->resetBookmarks()V

    .line 182
    iput-wide v0, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    .line 184
    :cond_1
    return-void
.end method
