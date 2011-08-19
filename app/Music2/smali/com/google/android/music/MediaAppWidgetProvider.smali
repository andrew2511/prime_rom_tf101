.class public abstract Lcom/google/android/music/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaAppWidgetProvider$UpdateService;
    }
.end annotation


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate"

.field static final TAG:Ljava/lang/String; = "MusicAppWidgetProvider"

.field private static sHasAlbumArt:Ljava/lang/Boolean;

.field private static sHasPrev:Ljava/lang/Boolean;

.field private static sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

.field private static sUseHolo:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    .line 38
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    .line 39
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->checkLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/widget/RemoteViews;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private checkLayout(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    sget-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 255
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 256
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 257
    .local v1, v:Landroid/view/View;
    const v3, 0x7f0f0008

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    .line 258
    const v3, 0x7f0f0009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    .line 259
    const v3, 0x7f0f0005

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, vv:Landroid/view/View;
    if-eqz v2, :cond_3

    const-string v3, "holo"

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    .line 262
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #vv:Landroid/view/View;
    :cond_0
    return-void

    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    move v3, v5

    .line 257
    goto :goto_0

    :cond_2
    move v3, v5

    .line 258
    goto :goto_1

    .restart local v2       #vv:Landroid/view/View;
    :cond_3
    move v3, v5

    .line 260
    goto :goto_2
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 13
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 91
    .local v10, res:Landroid/content/res/Resources;
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040002

    invoke-direct {v12, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v12, views:Landroid/widget/RemoteViews;
    const-string v0, "Music"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 94
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v0, "curalbumid"

    const-wide/16 v3, -0x1

    invoke-interface {v9, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 95
    .local v1, id:J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v12, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    .line 98
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const v0, 0x7f0f0008

    const v3, 0x7f0201fa

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 101
    :cond_0
    const v0, 0x7f0f0004

    const/16 v3, 0x8

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    const/high16 v0, 0x7f0f

    const v3, 0x7f0c0079

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .end local v1           #id:J
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, v12, v0, v1}, Lcom/google/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    .line 125
    invoke-direct {p0, p1, p2, v12}, Lcom/google/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 126
    return-void

    .line 105
    .restart local v1       #id:J
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v12, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    .line 106
    const v0, 0x7f0f0004

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    const-string v0, "curartist"

    const v3, 0x7f0c0068

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, artist:Ljava/lang/String;
    const-string v0, "curalbum"

    const v3, 0x7f0c0069

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, album:Ljava/lang/String;
    const-string v0, "curtitle"

    const-string v3, ""

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, title:Ljava/lang/String;
    const v0, 0x7f0f0004

    invoke-virtual {v12, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    const/high16 v0, 0x7f0f

    invoke-virtual {v12, v0, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 119
    .local v8, b:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const v0, 0x7f0f0008

    invoke-virtual {v12, v0, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 124
    .end local v1           #id:J
    .end local v6           #album:Ljava/lang/String;
    .end local v7           #artist:Ljava/lang/String;
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v11           #title:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static declared-synchronized getInstance()Lcom/google/android/music/MediaAppWidgetProvider;
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/google/android/music/MediaAppWidgetProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/music/MediaAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

    .line 45
    :cond_0
    sget-object v1, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 150
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 151
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 153
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .locals 7
    .parameter "context"
    .parameter "views"
    .parameter "playerActive"
    .parameter "shuffle"

    .prologue
    const/4 v6, 0x0

    .line 276
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v2, serviceName:Landroid/content/ComponentName;
    if-eqz p4, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 294
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    const v3, 0x7f0f0003

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 295
    const v3, 0x7f0f0007

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 297
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 299
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 301
    const v3, 0x7f0f0005

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 303
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    const v3, 0x7f0f0006

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 316
    const v3, 0x7f0f0009

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    return-void

    .line 284
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    if-eqz p3, :cond_1

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .restart local v1       #pendingIntent:Landroid/app/PendingIntent;
    goto :goto_0

    .line 287
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    const-class v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v3, v4, p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 138
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 139
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setButtonsVisible(Landroid/widget/RemoteViews;Z)V
    .locals 4
    .parameter "views"
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f0f0009

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    :cond_0
    const v0, 0x7f0f0005

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 133
    const v0, 0x7f0f0006

    if-eqz p2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    return-void

    :cond_1
    move v1, v3

    .line 130
    goto :goto_0

    :cond_2
    move v1, v3

    .line 132
    goto :goto_1

    :cond_3
    move v1, v3

    .line 133
    goto :goto_2
.end method


# virtual methods
.method notifyChange(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V

    .line 166
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->checkLayout(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MediaAppWidgetProvider$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    :goto_0
    return-void

    .line 63
    .end local v0           #updateIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0       #updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 67
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method declared-synchronized performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V
    .locals 1
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/music/MediaAppWidgetProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider$1;-><init>(Lcom/google/android/music/MediaAppWidgetProvider;Lcom/google/android/music/MusicPlaybackService;[I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
