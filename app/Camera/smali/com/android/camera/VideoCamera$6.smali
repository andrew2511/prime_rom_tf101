.class Lcom/android/camera/VideoCamera$6;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3300(Lcom/android/camera/VideoCamera;)V

    .line 1843
    return-void
.end method
