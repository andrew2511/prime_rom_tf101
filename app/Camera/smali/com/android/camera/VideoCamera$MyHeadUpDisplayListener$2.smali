.class Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;->this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;->this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)V

    .line 1831
    return-void
.end method
