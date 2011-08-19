.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;
.super Landroid/os/AsyncTask;
.source "WebsiteSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFromBookmarksDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetChanged:Z

.field private mSites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p3, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mContext:Landroid/content/Context;

    .line 272
    iput-object p3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mSites:Ljava/util/Map;

    .line 273
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 264
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 26
    .parameter "unused"

    .prologue
    .line 276
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v17, hosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mSites:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 278
    .local v12, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 279
    .end local p1
    .local v19, originIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 281
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 282
    .local v20, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, host:Ljava/lang/String;
    const/16 v16, 0x0

    .line 284
    .local v16, hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    check-cast v16, Ljava/util/Set;

    .line 290
    .restart local v16       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    new-instance v16, Ljava/util/HashSet;

    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 288
    .restart local v16       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 295
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v15           #host:Ljava/lang/String;
    .end local v16           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v20           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "favicon"

    aput-object v7, v5, v6

    const-string v6, "folder == 0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 299
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_9

    .line 300
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 301
    const-string v3, "url"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 302
    .local v25, urlIndex:I
    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 303
    .local v23, titleIndex:I
    const-string v3, "favicon"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 305
    .local v14, faviconIndex:I
    :cond_2
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 306
    .local v24, url:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 307
    .restart local v15       #host:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 308
    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 309
    .local v22, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 310
    .local v9, bmp:Landroid/graphics/Bitmap;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 311
    .local v11, data:[B
    if-eqz v11, :cond_3

    .line 312
    const/4 v3, 0x0

    array-length v4, v11

    invoke-static {v11, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 314
    :cond_3
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 315
    .local v18, matchingSites:Ljava/util/Set;
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 316
    .local v21, sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 317
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 324
    .restart local v20       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 326
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    .line 327
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->setTitle(Ljava/lang/String;)V

    .line 330
    :cond_6
    if-eqz v9, :cond_4

    .line 331
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    .line 332
    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 336
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #data:[B
    .end local v18           #matchingSites:Ljava/util/Set;
    .end local v20           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v21           #sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v22           #title:Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    .end local v14           #faviconIndex:I
    .end local v15           #host:Ljava/lang/String;
    .end local v23           #titleIndex:I
    .end local v24           #url:Ljava/lang/String;
    .end local v25           #urlIndex:I
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_9
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_0
    return-void
.end method
