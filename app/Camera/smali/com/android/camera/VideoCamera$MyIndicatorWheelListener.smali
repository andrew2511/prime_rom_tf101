.class Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/IndicatorWheel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIndicatorWheelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1915
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 1925
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)V

    .line 1922
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3100(Lcom/android/camera/VideoCamera;)V

    .line 1918
    return-void
.end method
