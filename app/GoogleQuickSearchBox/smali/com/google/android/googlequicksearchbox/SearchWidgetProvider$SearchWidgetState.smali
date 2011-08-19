.class Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
.super Ljava/lang/Object;
.source "SearchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchWidgetState"
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private mQueryTextViewIntent:Landroid/content/Intent;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "appWidgetId"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mAppWidgetId:I

    .line 132
    return-void
.end method

.method private setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "views"
    .parameter "viewId"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {p1, v1, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 164
    return-void
.end method


# virtual methods
.method public setQueryTextViewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "queryTextViewIntent"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mQueryTextViewIntent:Landroid/content/Intent;

    .line 136
    return-void
.end method

.method public setVoiceSearchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "voiceSearchIntent"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetMgr"

    .prologue
    const v3, 0x7f0f002a

    .line 144
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0f0029

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mQueryTextViewIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 157
    :goto_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->mAppWidgetId:I

    invoke-virtual {p2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 158
    return-void

    .line 154
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method
