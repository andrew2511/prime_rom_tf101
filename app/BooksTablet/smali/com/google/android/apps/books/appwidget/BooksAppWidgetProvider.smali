.class public Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BooksAppWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BooksAppWidget"

.field private static sWidgetState:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "appWidgetIds"
    .parameter "context"
    .parameter "widgetState"

    .prologue
    .line 29
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 36
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 37
    sput-object p2, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    .line 40
    :cond_0
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v2, p0

    .end local p0           #i$:I
    .end local p2
    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget p2, v1, v2

    .line 42
    .local p2, appWidgetId:I
    sget-object p0, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_2

    .line 43
    sget-object p0, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p0

    .local p0, rv:Landroid/widget/RemoteViews;
    move-object v4, p0

    .line 52
    .end local p0           #rv:Landroid/widget/RemoteViews;
    .local v4, rv:Landroid/widget/RemoteViews;
    :goto_1
    const-string p0, "BooksAppWidget"

    const/4 v5, 0x3

    invoke-static {p0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 53
    const-string p0, "BooksAppWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update widget with appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/books/appwidget/BooksAppWidgetService;

    invoke-direct {p0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local p0, serviceIntent:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    invoke-virtual {p0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const v5, 0x7f0e0012

    invoke-virtual {v4, p2, v5, p0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 62
    new-instance p0, Landroid/content/Intent;

    .end local p0           #serviceIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local p0, launchIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p1, v5, p0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 66
    .local p0, pendingLaunchIntent:Landroid/app/PendingIntent;
    const v5, 0x7f0e0010

    invoke-virtual {v4, v5, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    const v5, 0x7f0e0011

    invoke-virtual {v4, v5, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    new-instance p0, Landroid/content/Intent;

    .end local p0           #pendingLaunchIntent:Landroid/app/PendingIntent;
    const-string v5, "com.google.android.apps.books.intent.action.READ"

    invoke-direct {p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local p0, activityIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p1, v5, p0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 73
    .local p0, pendingIntent:Landroid/app/PendingIntent;
    const v5, 0x7f0e0012

    invoke-virtual {v4, v5, p0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 75
    invoke-virtual {v0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 40
    add-int/lit8 p0, v2, 0x1

    .end local v2           #i$:I
    .local p0, i$:I
    move v2, p0

    .end local p0           #i$:I
    .restart local v2       #i$:I
    goto :goto_0

    .line 45
    .end local v4           #rv:Landroid/widget/RemoteViews;
    :cond_2
    new-instance p0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040006

    invoke-direct {p0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 49
    .local p0, rv:Landroid/widget/RemoteViews;
    const v4, 0x7f0e0012

    const v5, 0x7f0e0010

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    move-object v4, p0

    .end local p0           #rv:Landroid/widget/RemoteViews;
    .restart local v4       #rv:Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 77
    .end local v4           #rv:Landroid/widget/RemoteViews;
    .end local p2           #appWidgetId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 25
    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 26
    return-void
.end method
