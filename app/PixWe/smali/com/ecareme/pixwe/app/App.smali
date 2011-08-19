.class public Lcom/ecareme/pixwe/app/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field public static final CURRENT_TIME_ZONE:Ljava/util/TimeZone;

.field public static PIXEL_DENSITY:F

.field private static final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/ecareme/pixwe/app/App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/app/App;->mMap:Ljava/util/HashMap;

    .line 42
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AppHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/app/App;->mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ecareme/pixwe/app/App;->mPaused:Z

    .line 54
    sget-object v1, Lcom/ecareme/pixwe/app/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    .line 58
    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    .line 64
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ecareme/pixwe/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/app/App;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Lcom/ecareme/pixwe/media/ReverseGeocoder;

    iget-object v2, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/app/App;->mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/app/App;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/ecareme/pixwe/app/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/app/App;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getReverseGeocoder()Lcom/ecareme/pixwe/media/ReverseGeocoder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ecareme/pixwe/app/App;->mPaused:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->flushCache()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/app/App;->mPaused:Z

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/app/App;->mPaused:Z

    .line 108
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 2
    .parameter "string"
    .parameter "duration"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ecareme/pixwe/app/App$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ecareme/pixwe/app/App$1;-><init>(Lcom/ecareme/pixwe/app/App;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App;->mReverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->shutdown()V

    .line 74
    sget-object v0, Lcom/ecareme/pixwe/app/App;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ecareme/pixwe/app/App;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
