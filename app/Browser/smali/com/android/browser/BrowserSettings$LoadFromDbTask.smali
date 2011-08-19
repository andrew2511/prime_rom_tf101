.class Lcom/android/browser/BrowserSettings$LoadFromDbTask;
.super Landroid/os/AsyncTask;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFromDbTask"
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

.field final synthetic this$0:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    .line 416
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .parameter "unused"

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 422
    .local v18, p:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "appcache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/browser/BrowserSettings;->access$2702(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    new-instance v4, Lcom/android/browser/WebStorageSizeManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v5, v0

    new-instance v6, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    invoke-static {v3, v4}, Lcom/android/browser/BrowserSettings;->access$3202(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/browser/BrowserSettings;->access$3200(Lcom/android/browser/BrowserSettings;)Lcom/android/browser/WebStorageSizeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/browser/BrowserSettings;->access$2602(Lcom/android/browser/BrowserSettings;J)J

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "databases"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/browser/BrowserSettings;->access$2802(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "geolocation"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/browser/BrowserSettings;->access$2902(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    const-string v3, "homepage"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    .line 444
    .local v15, am:Landroid/app/ActivityManager;
    invoke-virtual {v15}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_2

    .line 445
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/browser/BrowserSettings;->access$2002(I)I

    .line 451
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    const-string v4, "autofill_active_profile_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserSettings;->access$3300(Lcom/android/browser/BrowserSettings;)I

    move-result v5

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/browser/BrowserSettings;->access$3302(Lcom/android/browser/BrowserSettings;I)I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v16

    .line 458
    .local v16, autoFillDb:Lcom/android/browser/AutoFillProfileDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/browser/BrowserSettings;->access$3300(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AutoFillProfileDatabase;->getProfile(I)Landroid/database/Cursor;

    move-result-object v17

    .line 460
    .local v17, c:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 461
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    const-string v3, "fullname"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, fullName:Ljava/lang/String;
    const-string v3, "email"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, email:Ljava/lang/String;
    const-string v3, "companyname"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, company:Ljava/lang/String;
    const-string v3, "addressline1"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, addressLine1:Ljava/lang/String;
    const-string v3, "addressline2"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, addressLine2:Ljava/lang/String;
    const-string v3, "city"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 475
    .local v10, city:Ljava/lang/String;
    const-string v3, "state"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 477
    .local v11, state:Ljava/lang/String;
    const-string v3, "zipcode"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, zip:Ljava/lang/String;
    const-string v3, "country"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, country:Ljava/lang/String;
    const-string v3, "phone"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, phone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v15, v0

    .end local v15           #am:Landroid/app/ActivityManager;
    new-instance v3, Landroid/webkit/WebSettings$AutoFillProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/browser/BrowserSettings;->access$3300(Lcom/android/browser/BrowserSettings;)I

    move-result v4

    invoke-direct/range {v3 .. v14}, Landroid/webkit/WebSettings$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v3}, Lcom/android/browser/BrowserSettings;->access$3002(Lcom/android/browser/BrowserSettings;Landroid/webkit/WebSettings$AutoFillProfile;)Landroid/webkit/WebSettings$AutoFillProfile;

    .line 487
    .end local v5           #fullName:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #company:Ljava/lang/String;
    .end local v8           #addressLine1:Ljava/lang/String;
    .end local v9           #addressLine2:Ljava/lang/String;
    .end local v10           #city:Ljava/lang/String;
    .end local v11           #state:Ljava/lang/String;
    .end local v12           #zip:Ljava/lang/String;
    .end local v13           #country:Ljava/lang/String;
    .end local v14           #phone:Ljava/lang/String;
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 488
    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/AutoFillProfileDatabase;->close()V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 495
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$3400()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    monitor-enter v3

    .line 496
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/browser/BrowserSettings;->access$3502(Lcom/android/browser/BrowserSettings;Z)Z

    .line 497
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$3400()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 498
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/4 v3, 0x0

    return-object v3

    .line 447
    .end local v16           #autoFillDb:Lcom/android/browser/AutoFillProfileDatabase;
    .end local v17           #c:Landroid/database/Cursor;
    .restart local v15       #am:Landroid/app/ActivityManager;
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/browser/BrowserSettings;->access$2002(I)I

    goto/16 :goto_0

    .line 498
    .end local v15           #am:Landroid/app/ActivityManager;
    .restart local v16       #autoFillDb:Lcom/android/browser/AutoFillProfileDatabase;
    .restart local v17       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
