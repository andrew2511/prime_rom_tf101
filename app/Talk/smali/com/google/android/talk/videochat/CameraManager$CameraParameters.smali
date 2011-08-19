.class public Lcom/google/android/talk/videochat/CameraManager$CameraParameters;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraParameters"
.end annotation


# instance fields
.field public frameRotationForDisplay:I

.field public height:I

.field public shouldFlip:Z

.field final synthetic this$0:Lcom/google/android/talk/videochat/CameraManager;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
