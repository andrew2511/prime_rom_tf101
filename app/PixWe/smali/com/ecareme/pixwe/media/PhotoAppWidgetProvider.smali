.class public Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;ILcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "helper"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getPhoto(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030009

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 77
    .restart local v1       #views:Landroid/widget/RemoteViews;
    const v2, 0x7f090033

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 79
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 62
    new-instance v1, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, helper:Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 67
    return-void

    .line 63
    :cond_0
    aget v0, p2, v3

    .line 64
    .local v0, appWidgetId:I
    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->deletePhoto(I)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v9, 0x0

    .line 47
    new-instance v1, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, helper:Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    array-length v4, p3

    move v5, v9

    :goto_0
    if-lt v5, v4, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 57
    return-void

    .line 48
    :cond_0
    aget v0, p3, v5

    .line 49
    .local v0, appWidgetId:I
    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v0, v2, v9

    .line 50
    .local v2, specificAppWidget:[I
    invoke-static {p1, v0, v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 52
    .local v3, views:Landroid/widget/RemoteViews;
    const-string v6, "PhotoAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sending out views="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
