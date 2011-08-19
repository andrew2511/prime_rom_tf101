.class public Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;
.super Ljava/lang/Object;
.source "KeyboardStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;
    }
.end annotation


# static fields
.field private static final SOFT_KEYBOARD_HIDDEN:I = 0x2

.field private static final SOFT_KEYBOARD_VISIBLE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardVisible:Z

.field private mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

.field private mSoftKeyboardTransition:Z

.field private mSoftKeyboardVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 63
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 65
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 87
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 88
    iget-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-nez v1, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 90
    return-void

    :cond_0
    move v1, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1
.end method

.method private notifyTypeChange()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;->onKeyboardTypeChange(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;)V

    .line 116
    :cond_0
    return-void
.end method

.method private notifyVisibilityChange()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;->onKeyboardVisibilityChange(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->notifyVisibilityChange()V

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->notifyVisibilityChange()V

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isHardKeyboardVisible()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    return v0
.end method

.method public isInKeyboardMode()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isSoftKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isHardKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoftKeyboardVisible()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    return v0
.end method

.method public setHardKeyboardVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 135
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    iget-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-eq v0, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->notifyTypeChange()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->notifyVisibilityChange()V

    goto :goto_0
.end method

.method public setKeyboardModeListener(Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mListener:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker$KeyboardModeListener;

    .line 120
    return-void
.end method

.method public setSoftKeyboardVisible(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-eq v0, p1, :cond_0

    .line 125
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 126
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
