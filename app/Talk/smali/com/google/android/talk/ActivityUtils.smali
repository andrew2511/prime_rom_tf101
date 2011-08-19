.class public Lcom/google/android/talk/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field static sScreenSize:I

.field static sTabletMode:Z

.field static sTabletModeDetermined:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAudioChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 57
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "jid1"
    .parameter "jid2"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 74
    sget-boolean v0, Lcom/google/android/talk/ActivityUtils;->sTabletModeDetermined:Z

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    sput v0, Lcom/google/android/talk/ActivityUtils;->sScreenSize:I

    .line 77
    sget v0, Lcom/google/android/talk/ActivityUtils;->sScreenSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 78
    sput-boolean v2, Lcom/google/android/talk/ActivityUtils;->sTabletMode:Z

    .line 82
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/google/android/talk/ActivityUtils;->sTabletModeDetermined:Z

    .line 84
    :cond_1
    sget-boolean v0, Lcom/google/android/talk/ActivityUtils;->sTabletMode:Z

    return v0

    .line 79
    :cond_2
    sget v0, Lcom/google/android/talk/ActivityUtils;->sScreenSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 80
    sput-boolean v2, Lcom/google/android/talk/ActivityUtils;->sTabletMode:Z

    goto :goto_0
.end method

.method public static isVideoChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 52
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXLargeTablet(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget v0, Lcom/google/android/talk/ActivityUtils;->sScreenSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public static showLandingPage(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    return-void
.end method
