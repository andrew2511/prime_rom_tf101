.class public Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;
.super Ljava/lang/Object;
.source "AppInitHelper.java"


# static fields
.field private static mInstance:Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 15
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->mInstance:Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->init()V

    .line 17
    const-string v0, "PRAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 19
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 20
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 22
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->mInstance:Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;

    goto :goto_0
.end method
