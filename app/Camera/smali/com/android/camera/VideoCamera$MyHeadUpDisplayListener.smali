.class Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/HeadUpDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHeadUpDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1818
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onPopupWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 1836
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;-><init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1833
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$1;-><init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1825
    return-void
.end method
