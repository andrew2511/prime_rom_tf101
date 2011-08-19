.class public Lcom/google/android/youtube/app/honeycomb/PlatformImpl;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcom/google/android/youtube/app/Platform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 48
    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 50
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 51
    return-void
.end method

.method public getAnalyticsPropertyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "UA-20803990-1"

    return-object v0
.end method

.method public getDeveloperKey()[B
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/K;->DEVELOPER_KEY:[B

    return-object v0
.end method

.method public getDeveloperSecret()[B
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/K;->DEVELOPER_SECRET:[B

    return-object v0
.end method

.method public isLargeHeapAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFullscreenMode(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "fullscreen"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 37
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 38
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
