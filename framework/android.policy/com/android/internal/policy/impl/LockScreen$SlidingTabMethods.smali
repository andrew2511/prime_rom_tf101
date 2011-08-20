.class Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->updateRightTabResources()V

    return-void
.end method

.method private updateRightTabResources()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_4e

    move v0, v2

    .line 152
    .local v0, vibe:Z
    :goto_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/SlidingTab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v2

    if-eqz v2, :cond_55

    if-eqz v0, :cond_51

    const v2, 0x10802c9

    :goto_29
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v3

    if-eqz v3, :cond_59

    const v3, 0x1080360

    :goto_34
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const v4, 0x1080349

    :goto_3f
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-eqz v5, :cond_61

    const v5, 0x108035c

    :goto_4a
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 162
    return-void

    .line 149
    .end local v0           #vibe:Z
    :cond_4e
    const/4 v1, 0x0

    move v0, v1

    goto :goto_16

    .line 152
    .restart local v0       #vibe:Z
    :cond_51
    const v2, 0x10802c6

    goto :goto_29

    :cond_55
    const v2, 0x10802c7

    goto :goto_29

    :cond_59
    const v3, 0x108035d

    goto :goto_34

    :cond_5d
    const v4, 0x1080348

    goto :goto_3f

    :cond_61
    const v5, 0x108035b

    goto :goto_4a
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 203
    const/4 v0, 0x2

    if-ne p2, v0, :cond_22

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/SlidingTab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const v1, 0x10402cb

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 211
    :cond_22
    if-eqz p2, :cond_2d

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 214
    :cond_2d
    return-void

    .line 205
    :cond_2e
    const v1, 0x10402cc

    goto :goto_1f
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 12
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 166
    if-ne p2, v6, :cond_f

    .line 167
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 199
    :cond_e
    :goto_e
    return-void

    .line 168
    :cond_f
    if-ne p2, v8, :cond_e

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-nez v5, :cond_9b

    move v5, v6

    :goto_1c
    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreen;->access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 171
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 172
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_9d

    move v3, v6

    .line 176
    .local v3, vibe:Z
    :goto_3a
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v3, :cond_9f

    move v5, v6

    :goto_43
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 183
    .end local v3           #vibe:Z
    :goto_46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->updateRightTabResources()V

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040121

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 189
    .local v0, message:Ljava/lang/String;
    :goto_5f
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_ba

    const v4, 0x10802cd

    move v2, v4

    .line 193
    .local v2, toastIcon:I
    :goto_6b
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .line 196
    .local v1, toastColor:I
    :goto_85
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/TextView;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_e

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_9b
    move v5, v7

    .line 170
    goto :goto_1c

    :cond_9d
    move v3, v7

    .line 172
    goto :goto_3a

    .restart local v3       #vibe:Z
    :cond_9f
    move v5, v7

    .line 176
    goto :goto_43

    .line 180
    .end local v3           #vibe:Z
    :cond_a1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_46

    .line 185
    :cond_ab
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_5f

    .line 189
    .restart local v0       #message:Ljava/lang/String;
    :cond_ba
    const v4, 0x10802ce

    move v2, v4

    goto :goto_6b

    .line 193
    .restart local v2       #toastIcon:I
    :cond_bf
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_85
.end method
