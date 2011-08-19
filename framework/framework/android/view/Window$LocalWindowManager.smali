.class Landroid/view/Window$LocalWindowManager;
.super Landroid/view/WindowManagerImpl$CompatModeWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalWindowManager"
.end annotation


# instance fields
.field private final mHardwareAccelerated:Z

.field final synthetic this$0:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/WindowManager;Z)V
    .registers 5
    .parameter
    .parameter "wm"
    .parameter "hardwareAccelerated"

    .prologue
    .line 476
    iput-object p1, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    .line 477
    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/Window;->getCompatInfo(Landroid/content/Context;)Landroid/view/CompatibilityInfoHolder;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 478
    iput-boolean p3, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    .line 479
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 11
    .parameter "view"
    .parameter "params"

    .prologue
    const/16 v7, 0x3e8

    .line 487
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    .line 488
    .local v4, wp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 489
    .local v1, curTitle:Ljava/lang/CharSequence;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v7, :cond_a6

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_a6

    .line 491
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_26

    .line 492
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 493
    .local v2, decor:Landroid/view/View;
    if-eqz v2, :cond_26

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 497
    .end local v2           #decor:Landroid/view/View;
    :cond_26
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5e

    .line 499
    :cond_2e
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_7d

    .line 500
    const-string v3, "Media"

    .line 512
    .local v3, title:Ljava/lang/String;
    :goto_36
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v6}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    :cond_5b
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    .end local v3           #title:Ljava/lang/String;
    :cond_5e
    :goto_5e
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v5, :cond_6e

    .line 527
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 529
    :cond_6e
    iget-boolean v5, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    if-eqz v5, :cond_79

    .line 530
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 532
    :cond_79
    invoke-super {p0, p1, p2}, Landroid/view/WindowManagerImpl$CompatModeWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    return-void

    .line 501
    :cond_7d
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ec

    if-ne v5, v6, :cond_86

    .line 502
    const-string v3, "MediaOvr"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_36

    .line 503
    .end local v3           #title:Ljava/lang/String;
    :cond_86
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_8d

    .line 504
    const-string v3, "Panel"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_36

    .line 505
    .end local v3           #title:Ljava/lang/String;
    :cond_8d
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_96

    .line 506
    const-string v3, "SubPanel"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_36

    .line 507
    .end local v3           #title:Ljava/lang/String;
    :cond_96
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-ne v5, v6, :cond_9f

    .line 508
    const-string v3, "AtchDlg"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_36

    .line 510
    .end local v3           #title:Ljava/lang/String;
    :cond_9f
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_36

    .line 518
    .end local v3           #title:Ljava/lang/String;
    :cond_a6
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_ba

    .line 519
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v5}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_d4

    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v5

    :goto_b8
    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 521
    :cond_ba
    if-eqz v1, :cond_c2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5e

    :cond_c2
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 523
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 519
    :cond_d4
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v5}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v5

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_b8
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/view/Window$LocalWindowManager;->mHardwareAccelerated:Z

    return v0
.end method
