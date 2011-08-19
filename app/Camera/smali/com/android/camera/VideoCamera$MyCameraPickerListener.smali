.class Lcom/android/camera/VideoCamera$MyCameraPickerListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/CameraPicker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraPickerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyCameraPickerListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1928
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyCameraPickerListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyCameraPickerListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3100(Lcom/android/camera/VideoCamera;)V

    .line 1931
    return-void
.end method
