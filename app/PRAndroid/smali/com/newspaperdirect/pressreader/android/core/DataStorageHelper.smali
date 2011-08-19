.class public Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;
.super Ljava/lang/Object;
.source "DataStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;,
        Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;
    }
.end annotation


# static fields
.field private static final DATA_DIR_NAME:Ljava/lang/String; = "PressReader"

.field private static final DB_NAME:Ljava/lang/String; = "PressReader"

.field private static final DB_VERSION:I = 0x1d

.field private static mContext:Landroid/content/Context;

.field private static mExternalStorageAvailable:Z

.field private static mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field private static mExternalStorageWriteable:Z

.field private static mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

.field private static mOnExternalStorageStateChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    .line 170
    sput-boolean v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mOnExternalStorageStateChangedListeners:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 211
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->updateExternalStorageState()V

    return-void
.end method

.method public static addOnExternalStorageStateChangedListener(Ljava/lang/Object;Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;)V
    .locals 1
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 177
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mOnExternalStorageStateChangedListeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public static closeDatabase()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->closeDatabase()V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    .line 186
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    .line 187
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    const-string v1, "PressReader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mPreferences:Landroid/content/SharedPreferences;

    .line 188
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->startWatchingExternalStorage()V

    .line 190
    :cond_2
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 264
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 257
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDataDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "PressReader"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .local v0, result:Ljava/io/File;
    sget-boolean v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_0
    return-object v0
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mHelper:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "name"

    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 3
    .parameter "name"

    .prologue
    .line 249
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 251
    :goto_0
    return-wide v1

    .line 250
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 251
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    return v0
.end method

.method public static isExternalStorageWriteable()Z
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    return v0
.end method

.method public static openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4
    .parameter "name"

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 243
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 4
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 233
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const v3, 0x8000

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    return-object v1

    .line 233
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 235
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static removeOnExternalStorageStateChangedListener(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 180
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mOnExternalStorageStateChangedListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private static startWatchingExternalStorage()V
    .locals 3

    .prologue
    .line 193
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$1;

    invoke-direct {v1}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$1;-><init>()V

    sput-object v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->updateExternalStorageState()V

    .line 205
    return-void
.end method

.method public static stopWatchingExternalStorage()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method private static updateExternalStorageState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    sput-boolean v4, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    sput-boolean v4, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    .line 223
    :cond_0
    :goto_0
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mOnExternalStorageStateChangedListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 225
    return-void

    .line 216
    :cond_2
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    sput-boolean v4, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    .line 218
    sput-boolean v3, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    goto :goto_0

    .line 220
    :cond_3
    const-string v2, "checking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    sput-boolean v3, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    sput-boolean v3, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    goto :goto_0

    .line 223
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;

    .line 224
    .local v0, listener:Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;
    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageAvailable:Z

    sget-boolean v4, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->mExternalStorageWriteable:Z

    invoke-interface {v0, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;->onExternalStorageStateChanged(ZZ)V

    goto :goto_1
.end method
