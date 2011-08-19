.class public Lcom/android/camera/ui/CameraPicker;
.super Landroid/widget/ImageView;
.source "CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraPicker$Listener;
    }
.end annotation


# instance fields
.field private mCameraIndex:I

.field private mCameras:[Ljava/lang/CharSequence;

.field private mListener:Lcom/android/camera/ui/CameraPicker$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    .line 53
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, cameraId:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CameraPicker;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iput v3, p0, Lcom/android/camera/ui/CameraPicker;->mCameraIndex:I

    goto :goto_0

    .line 62
    :cond_1
    iput v2, p0, Lcom/android/camera/ui/CameraPicker;->mCameraIndex:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameraIndex:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 71
    .local v0, newCameraIndex:I
    :goto_1
    iput v0, p0, Lcom/android/camera/ui/CameraPicker;->mCameraIndex:I

    .line 72
    iget-object v2, p0, Lcom/android/camera/ui/CameraPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mCameras:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/camera/ui/CameraPicker;->mCameraIndex:I

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/ui/CameraPicker$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraPicker$Listener;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 68
    .end local v0           #newCameraIndex:I
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPicker;->setPressed(Z)V

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setListener(Lcom/android/camera/ui/CameraPicker$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/CameraPicker;->mListener:Lcom/android/camera/ui/CameraPicker$Listener;

    .line 49
    return-void
.end method
