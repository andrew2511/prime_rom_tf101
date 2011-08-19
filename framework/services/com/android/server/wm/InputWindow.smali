.class public final Lcom/android/server/wm/InputWindow;
.super Ljava/lang/Object;
.source "InputWindow.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public inputChannel:Landroid/view/InputChannel;

.field public inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputWindow;->touchableRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/wm/InputWindow;->inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 80
    iput-object v0, p0, Lcom/android/server/wm/InputWindow;->inputChannel:Landroid/view/InputChannel;

    .line 81
    return-void
.end method
