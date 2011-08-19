.class public Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;
.super Ljava/lang/Object;
.source "GlVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererRenderFrameInputData"
.end annotation


# instance fields
.field public backgroundColor:I

.field public backgroundImageAlpha:F

.field public backgroundImageRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field public localFrameIsReady:Z

.field public localVideoAlpha:F

.field public localVideoIsReady:Z

.field public localVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field public localVideoTransform:[F

.field public remoteVideoAlpha:F

.field public remoteVideoDestinationRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field public remoteVideoSourceRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
