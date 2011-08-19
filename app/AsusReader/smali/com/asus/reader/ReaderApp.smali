.class public Lcom/asus/reader/ReaderApp;
.super Landroid/app/Application;
.source "ReaderApp.java"


# static fields
.field public static final DBG:Z


# instance fields
.field private defaultCepubStartPrefix:Ljava/lang/String;

.field private defaultTxtStartPrefix:Ljava/lang/String;

.field private originalBigCoverSize:J

.field private sharedIsChecked:Ljava/lang/String;

.field private sharedPref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/reader/ReaderApp;->DBG:Z

    .line 107
    const-string v0, "ereader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 43
    const-string v0, "/data/data/com.asus.reader/cover/cepub_cover"

    iput-object v0, p0, Lcom/asus/reader/ReaderApp;->defaultCepubStartPrefix:Ljava/lang/String;

    .line 44
    const-string v0, "/data/data/com.asus.reader/cover/txt_cover"

    iput-object v0, p0, Lcom/asus/reader/ReaderApp;->defaultTxtStartPrefix:Ljava/lang/String;

    .line 45
    const-wide/32 v0, 0x3d9f1

    iput-wide v0, p0, Lcom/asus/reader/ReaderApp;->originalBigCoverSize:J

    .line 46
    const-string v0, "TXT_CEPUB_COVER"

    iput-object v0, p0, Lcom/asus/reader/ReaderApp;->sharedPref:Ljava/lang/String;

    .line 47
    const-string v0, "IS_CHECKED_COVER"

    iput-object v0, p0, Lcom/asus/reader/ReaderApp;->sharedIsChecked:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ReaderApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/asus/reader/ReaderApp;->checkBigTxtCepubCover()V

    return-void
.end method

.method private checkBigTxtCepubCover()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 49
    iget-object v8, p0, Lcom/asus/reader/ReaderApp;->sharedPref:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/asus/reader/ReaderApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 50
    .local v7, settings:Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/asus/reader/ReaderApp;->sharedIsChecked:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 52
    .local v6, isChecked:Z
    if-ne v6, v12, :cond_0

    .line 76
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v8, "ReaderApp"

    const-string v9, "check txt and cepub covers"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "/data/data/com.asus.reader/cover/"

    .line 57
    .local v0, coverDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, fCoverDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 59
    .local v4, filelist:[Ljava/io/File;
    if-nez v4, :cond_1

    .line 60
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/reader/ReaderApp;->sharedIsChecked:Ljava/lang/String;

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 63
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_4

    .line 64
    aget-object v1, v4, v5

    .line 65
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/asus/reader/ReaderApp;->originalBigCoverSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Lcom/asus/reader/ReaderApp;->defaultCepubStartPrefix:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 68
    invoke-direct {p0, v1}, Lcom/asus/reader/ReaderApp;->replaceNewCover(Ljava/io/File;)V

    .line 63
    .end local v3           #filePath:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    .restart local v3       #filePath:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/asus/reader/ReaderApp;->defaultTxtStartPrefix:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    invoke-direct {p0, v1}, Lcom/asus/reader/ReaderApp;->replaceNewCover(Ljava/io/File;)V

    goto :goto_2

    .line 75
    .end local v1           #f:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/reader/ReaderApp;->sharedIsChecked:Ljava/lang/String;

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private replaceNewCover(Ljava/io/File;)V
    .locals 7
    .parameter "destFile"

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 82
    invoke-virtual {p0}, Lcom/asus/reader/ReaderApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "txt_cover.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 83
    .local v2, inStream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v4, outStream:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 86
    .local v0, buf_cover:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len_cover:I
    if-lez v3, :cond_0

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0           #buf_cover:[B
    .end local v2           #inStream:Ljava/io/InputStream;
    .end local v3           #len_cover:I
    .end local v4           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 91
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 88
    .restart local v0       #buf_cover:[B
    .restart local v2       #inStream:Ljava/io/InputStream;
    .restart local v3       #len_cover:I
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 89
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public native cleanupNativeDataNative()V
.end method

.method public native initializeNativeDataNative(Z)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 104
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    const-string v1, "ReaderApp"

    const-string v2, "==========================ReaderApp Start to initial============================"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/asus/reader/book/UserStyle;->init()V

    .line 29
    sget-boolean v1, Lcom/asus/reader/ReaderApp;->DBG:Z

    invoke-virtual {p0, v1}, Lcom/asus/reader/ReaderApp;->initializeNativeDataNative(Z)V

    .line 31
    invoke-static {p0}, Lcom/asus/reader/book/ReaderDatabase;->init(Landroid/content/Context;)V

    .line 32
    invoke-static {p0}, Lcom/asus/reader/Cache;->getInstance(Landroid/content/Context;)Lcom/asus/reader/Cache;

    move-result-object v0

    .line 33
    .local v0, cache:Lcom/asus/reader/Cache;
    invoke-virtual {v0}, Lcom/asus/reader/Cache;->init()V

    .line 34
    invoke-static {p0}, Lcom/asus/reader/vibe2/VibeAgent;->init(Landroid/content/Context;)V

    .line 36
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/ReaderApp$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/ReaderApp$1;-><init>(Lcom/asus/reader/ReaderApp;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 98
    invoke-virtual {p0}, Lcom/asus/reader/ReaderApp;->cleanupNativeDataNative()V

    .line 99
    return-void
.end method
