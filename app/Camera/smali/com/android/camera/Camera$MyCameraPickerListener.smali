.class Lcom/android/camera/Camera$MyCameraPickerListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/CameraPicker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraPickerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/camera/Camera$MyCameraPickerListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2358
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MyCameraPickerListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged()V
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/camera/Camera$MyCameraPickerListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)V

    .line 2361
    return-void
.end method
