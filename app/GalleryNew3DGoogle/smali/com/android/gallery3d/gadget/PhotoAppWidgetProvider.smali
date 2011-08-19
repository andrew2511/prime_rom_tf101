.class public Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;ILcom/android/gallery3d/gadget/PhotoDatabaseHelper;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f070010

    .line 65
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    const-string v0, "PhotoAppWidgetProvider"

    const-string v1, "fail to load widget\'s image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040006

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    iget-object v2, v0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/gadget/PhotoAppWidgetClickHandler;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v0, v1

    .line 78
    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 54
    new-instance v2, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 55
    .local v2, helper:Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 56
    .local v0, appWidgetId:I
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->deleteEntry(I)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0           #appWidgetId:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->close()V

    .line 59
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 39
    new-instance v2, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, helper:Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
    move-object v1, p3

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 41
    .local v0, appWidgetId:I
    const/4 v7, 0x1

    new-array v5, v7, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    .line 42
    .local v5, specificAppWidget:[I
    invoke-static {p1, v0, v2}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/gallery3d/gadget/PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 44
    .local v6, views:Landroid/widget/RemoteViews;
    const-string v7, "PhotoAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending out views="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p2, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v0           #appWidgetId:I
    .end local v5           #specificAppWidget:[I
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v2}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->close()V

    .line 49
    return-void
.end method
