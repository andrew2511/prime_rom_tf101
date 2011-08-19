.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_OLD_NAME:Ljava/lang/String; = "android.appwidget.oldName"

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 197
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 232
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .registers 7
    .parameter "context"

    .prologue
    .line 210
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 211
    :try_start_3
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v4, :cond_13

    .line 212
    const-string v4, "appwidget"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 213
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v4

    sput-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 216
    .end local v0           #b:Landroid/os/IBinder;
    :cond_13
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 217
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, result:Landroid/appwidget/AppWidgetManager;
    if-eqz v1, :cond_24

    .line 219
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    check-cast v2, Landroid/appwidget/AppWidgetManager;

    .line 221
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    :cond_24
    if-nez v2, :cond_35

    .line 222
    new-instance v2, Landroid/appwidget/AppWidgetManager;

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_35
    monitor-exit v3

    return-object v2

    .line 226
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    :catchall_37
    move-exception v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v4
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 6
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 458
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 463
    return-void

    .line 460
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 461
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 7
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"

    .prologue
    .line 479
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 484
    return-void

    .line 481
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 5
    .parameter "provider"

    .prologue
    .line 515
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 517
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 8
    .parameter "appWidgetId"

    .prologue
    .line 419
    :try_start_0
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 420
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_7b

    .line 422
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 424
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 426
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    .line 428
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    .line 430
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    if-eqz v3, :cond_50

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v3, v3

    if-lez v3, :cond_50

    .line 431
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v3, v3

    if-ge v1, v3, :cond_50

    .line 432
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    aput v4, v3, v1

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 434
    .end local v1           #i:I
    :cond_50
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    if-eqz v3, :cond_7b

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v3, v3

    if-lez v3, :cond_7b

    .line 435
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5a
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7b

    .line 436
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    aput v4, v3, v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6d} :catch_70

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 441
    .end local v1           #i:I
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :catch_70
    move-exception v3

    move-object v0, v3

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 439
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7b
    return-object v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    sget-object v5, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 385
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 387
    .local v3, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 389
    iget v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 391
    iget v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    .line 393
    iget v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    .line 395
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    if-eqz v5, :cond_5e

    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v5, v5

    if-lez v5, :cond_5e

    .line 396
    const/4 v1, 0x0

    .local v1, i:I
    :goto_48
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v5, v5

    if-ge v1, v5, :cond_5e

    .line 397
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    aget v6, v6, v1

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    aput v6, v5, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 399
    .end local v1           #i:I
    :cond_5e
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    if-eqz v5, :cond_a

    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v5, v5

    if-lez v5, :cond_a

    .line 400
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_68
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v5, v5

    if-ge v1, v5, :cond_a

    .line 401
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    aget v6, v6, v1

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    aput v6, v5, v1
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7b} :catch_7e

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 406
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_7e
    move-exception v5

    move-object v0, v5

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "system server dead?"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 404
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_89
    return-object v4
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .registers 5
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 376
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 377
    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 6
    .parameter "appWidgetIds"
    .parameter "viewId"

    .prologue
    .line 361
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged([II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 366
    return-void

    .line 363
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 5
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 327
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 328
    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 6
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 300
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 304
    return-void

    .line 301
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 6
    .parameter "appWidgetId"
    .parameter "intent"

    .prologue
    .line 499
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 504
    return-void

    .line 501
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 5
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 275
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 6
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 345
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 350
    return-void

    .line 347
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 6
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 251
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 256
    return-void

    .line 253
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
