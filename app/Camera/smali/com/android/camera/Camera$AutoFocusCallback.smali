.class final Lcom/android/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 782
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$3702(Lcom/android/camera/Camera;J)J

    .line 783
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/Camera;->mAutoFocusTime:J

    .line 784
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v2, v2, Lcom/android/camera/Camera;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 789
    if-eqz p1, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v5}, Lcom/android/camera/Camera;->access$3902(Lcom/android/camera/Camera;I)I

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)V

    .line 810
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)V

    .line 811
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v6}, Lcom/android/camera/Camera;->access$3902(Lcom/android/camera/Camera;I)I

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 798
    if-eqz p1, :cond_3

    .line 799
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v5}, Lcom/android/camera/Camera;->access$3902(Lcom/android/camera/Camera;I)I

    .line 800
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_1

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v6}, Lcom/android/camera/Camera;->access$3902(Lcom/android/camera/Camera;I)I

    goto :goto_1

    .line 806
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method
