.class Lcom/asus/keyboard/KeyboardService$MuteFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MuteFKeyController"
.end annotation


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 444
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->mContext:Landroid/content/Context;

    .line 445
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/asus/keyboard/KeyboardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->mAudioManager:Landroid/media/AudioManager;

    .line 446
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 450
    .local v0, ringerMode:I
    if-ne v0, v3, :cond_2

    .line 451
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-virtual {v2}, Lcom/asus/keyboard/KeyboardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_0

    move v1, v4

    .line 455
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 459
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v3, 0x7f020006

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 466
    .end local v1           #vibeInSilent:Z
    :goto_2
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2}, Lcom/asus/keyboard/KeyboardService;->access$1200(Lcom/asus/keyboard/KeyboardService;)V

    .line 467
    return-void

    :cond_0
    move v1, v5

    .line 451
    goto :goto_0

    .restart local v1       #vibeInSilent:Z
    :cond_1
    move v3, v5

    .line 455
    goto :goto_1

    .line 461
    .end local v1           #vibeInSilent:Z
    :cond_2
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 463
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v3, 0x7f020009

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    goto :goto_2
.end method
