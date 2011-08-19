.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;
.super Ljava/lang/Object;
.source "WidgetViewsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newEmptyRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x7f080074

    const/16 v5, 0x8

    const v4, 0x7f080075

    const/4 v3, 0x0

    .line 62
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040037

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, widgetViews:Landroid/widget/RemoteViews;
    const v1, 0x7f08006d

    const v2, 0x7f08006e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 65
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const v1, 0x7f080073

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 67
    const v1, 0x7f080077

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    const v1, 0x7f080076

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getSearchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->isUploadAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 74
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getCameraPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v1, "Uploader not found: Turning off widget camera button."

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 80
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public static newRetryRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f080070

    .line 44
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newEmptyRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 45
    .local v1, widgetViews:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 48
    const v2, 0x7f08006f

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 50
    const v2, 0x7f080071

    const v3, 0x7f0d0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    const v2, 0x7f080072

    const v3, 0x7f0d003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 55
    return-object v1
.end method

.method public static newTeaserLoadingRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040039

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v0, view:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public static newTeaserRemoteView(Landroid/content/Context;Lcom/google/android/youtube/app/widget/Teaser;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "context"
    .parameter "teaser"

    .prologue
    .line 101
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040038

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v0, videoView:Landroid/widget/RemoteViews;
    const v1, 0x7f080015

    iget-object v2, p1, Lcom/google/android/youtube/app/widget/Teaser;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    const v1, 0x7f08003d

    iget-object v2, p1, Lcom/google/android/youtube/app/widget/Teaser;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 104
    const v1, 0x7f08007a

    iget v2, p1, Lcom/google/android/youtube/app/widget/Teaser;->sourceId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const v1, 0x7f08007e

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getLaunchFillInIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 109
    const v1, 0x7f08007c

    iget-object v2, p1, Lcom/google/android/youtube/app/widget/Teaser;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getPlayFillInIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const v1, 0x7f080078

    iget-object v2, p1, Lcom/google/android/youtube/app/widget/Teaser;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getPlayFillInIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 114
    const v1, 0x7f080079

    const v2, 0x7f0d00a2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/youtube/app/widget/Teaser;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static newTeaserRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newEmptyRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 31
    .local v0, widgetViews:Landroid/widget/RemoteViews;
    const v1, 0x7f080070

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    const v1, 0x7f08006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 34
    const v1, 0x7f08006d

    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 36
    return-object v0
.end method
