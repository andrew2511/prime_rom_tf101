.class Landroid/webkit/WebView$MouseMotionEventMonitor;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseMotionEventMonitor"
.end annotation


# static fields
.field private static final DISPATCH_MOUSE_HOVER_INTERVEL:I = 0x64


# instance fields
.field private mLastEventTime:J

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 4
    .parameter

    .prologue
    .line 6387
    iput-object p1, p0, Landroid/webkit/WebView$MouseMotionEventMonitor;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView$MouseMotionEventMonitor;->mLastEventTime:J

    .line 6387
    return-void
.end method

.method private allowTime(J)Z
    .registers 7
    .parameter "time"

    .prologue
    .line 6401
    iget-wide v0, p0, Landroid/webkit/WebView$MouseMotionEventMonitor;->mLastEventTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 6402
    iput-wide p1, p0, Landroid/webkit/WebView$MouseMotionEventMonitor;->mLastEventTime:J

    .line 6403
    const/4 v0, 0x1

    .line 6405
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public allowEvent(IJ)Z
    .registers 5
    .parameter "action"
    .parameter "time"

    .prologue
    .line 6390
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView$MouseMotionEventMonitor;->allowTime(J)Z

    move-result v0

    return v0
.end method
