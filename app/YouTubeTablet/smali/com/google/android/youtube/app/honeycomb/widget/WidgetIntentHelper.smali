.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;
.super Ljava/lang/Object;
.source "WidgetIntentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getCameraPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "com.google.android.youtube.action.widget_camera"

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getLaunchFillInIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.youtube.action.widget_home"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "com.google.android.youtube.action.widget_home"

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getPlayFillInIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "videoId"

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.youtube.action.widget_play"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getSearchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "com.google.android.youtube.action.widget_search"

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.action.widget_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
