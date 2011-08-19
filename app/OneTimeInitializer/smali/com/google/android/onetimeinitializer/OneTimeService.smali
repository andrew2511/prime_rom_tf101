.class public Lcom/google/android/onetimeinitializer/OneTimeService;
.super Landroid/app/IntentService;
.source "OneTimeService.java"


# static fields
.field private static final LAUNCHER_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mMappingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://com.android.launcher2.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "OneTimeInitializer Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private prepareTable(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 91
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    .line 94
    const-string v14, "com.android.calendar"

    .line 95
    .local v14, oldPkg:Ljava/lang/String;
    const-string v8, "com.google.android.calendar"

    .line 96
    .local v8, newPkg:Ljava/lang/String;
    const-string v4, ".LaunchActivity"

    .line 97
    .local v4, componentNameShort:Ljava/lang/String;
    const-string v3, "com.android.calendar.LaunchActivity"

    .line 99
    .local v3, componentName:Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v5, newCalendar:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object v1, v14

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object v1, v14

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v14, "com.android.camera"

    .line 105
    const-string v8, "com.google.android.camera"

    .line 106
    new-instance v10, Landroid/content/ComponentName;

    const-string v17, "com.android.camera.Camera"

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v10, oldCamera:Landroid/content/ComponentName;
    new-instance v11, Landroid/content/ComponentName;

    const-string v17, ".Camera"

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v11, oldCameraShort:Landroid/content/ComponentName;
    new-instance v15, Landroid/content/ComponentName;

    const-string v17, "com.android.camera.VideoCamera"

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v15, oldVideoCamera:Landroid/content/ComponentName;
    new-instance v16, Landroid/content/ComponentName;

    const-string v17, ".VideoCamera"

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v16, oldVideoCameraShort:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/ComponentName;

    const-string v17, "com.android.camera.Camera"

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v6, newCamera:Landroid/content/ComponentName;
    new-instance v9, Landroid/content/ComponentName;

    const-string v17, "com.android.camera.VideoCamera"

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v9, newVideoCamera:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v14, "com.android.camera"

    .line 121
    const-string v8, "com.google.android.gallery3d"

    .line 123
    new-instance v12, Landroid/content/ComponentName;

    const-string v17, "com.android.camera.GalleryPicker"

    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v12, oldGallery:Landroid/content/ComponentName;
    new-instance v13, Landroid/content/ComponentName;

    const-string v17, ".GalleryPicker"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v13, oldGalleryShort:Landroid/content/ComponentName;
    new-instance v7, Landroid/content/ComponentName;

    const-string v17, "com.cooliris.media.Gallery"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v7, newGallery:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v14, "com.htc.android.mail"

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, ".AccountListScreen"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.htc.android.mail.AccountListScreen"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v14, "com.motorola.calendar"

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, ".LaunchActivity"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.motorola.calendar.LaunchActivity"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v14, "com.android.providers.im"

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, ".LandingPage"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.android.providers.im.LandingPage"

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method private setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 88
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private updateShortcut(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/google/android/onetimeinitializer/OneTimeService;->prepareTable(Landroid/content/Context;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 152
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 154
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 211
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v21, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 157
    .local v21, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 160
    .local v18, selectionArg:[Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v17, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 165
    .local v15, intentUri:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 168
    const/4 v4, 0x0

    invoke-static {v15, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    .line 169
    .local v19, shortcut:Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 170
    .local v11, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ComponentName;

    .line 175
    .local v16, newComp:Landroid/content/ComponentName;
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 176
    .local v13, id:J
    const/4 v4, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v18, v4

    .line 179
    if-nez v16, :cond_2

    .line 180
    const-string v4, "OneTimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removing shortcut id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v4, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id = ?"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 183
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 195
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #comp:Landroid/content/ComponentName;
    .end local v13           #id:J
    .end local v15           #intentUri:Ljava/lang/String;
    .end local v16           #newComp:Landroid/content/ComponentName;
    .end local v19           #shortcut:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object/from16 v20, v4

    .line 197
    .local v20, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "OneTimeService"

    const-string v5, "can\'t parse a shortcut entry"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 204
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 205
    .local v12, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "OneTimeService"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 188
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v11       #comp:Landroid/content/ComponentName;
    .restart local v13       #id:J
    .restart local v15       #intentUri:Ljava/lang/String;
    .restart local v16       #newComp:Landroid/content/ComponentName;
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19       #shortcut:Landroid/content/Intent;
    :cond_2
    :try_start_4
    const-string v4, "OneTimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fix shortcut id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    sget-object v4, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "intent"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id = ?"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 194
    .restart local v9       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 206
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #comp:Landroid/content/ComponentName;
    .end local v13           #id:J
    .end local v15           #intentUri:Ljava/lang/String;
    .end local v16           #newComp:Landroid/content/ComponentName;
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v19           #shortcut:Landroid/content/Intent;
    :catch_2
    move-exception v4

    move-object v12, v4

    .line 207
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_5
    const-string v4, "OneTimeService"

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 201
    .end local v12           #e:Landroid/content/OperationApplicationException;
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 202
    sget-object v4, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 209
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const-string v0, "OneTimeService"

    const-string v1, "OneTimeService.onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->updateShortcut(Landroid/content/Context;)V

    .line 79
    const-class v0, Lcom/google/android/onetimeinitializer/OneTimeInitializer;

    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/onetimeinitializer/OneTimeService;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 80
    return-void
.end method
