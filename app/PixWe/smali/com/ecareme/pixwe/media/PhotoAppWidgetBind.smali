.class public Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;
.super Landroid/app/Activity;
.source "PhotoAppWidgetBind.java"


# static fields
.field private static final EXTRA_APPWIDGET_BITMAPS:Ljava/lang/String; = "com.android.camera.appwidgetbitmaps"

.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetBind"


# instance fields
.field private mApp:Lcom/ecareme/pixwe/app/App;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v9, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v9, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 42
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->finish()V

    .line 50
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 51
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 53
    .local v4, extras:Landroid/os/Bundle;
    const-string v9, "appWidgetIds"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 54
    .local v1, appWidgetIds:[I
    const-string v9, "com.android.camera.appwidgetbitmaps"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 56
    .local v3, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    array-length v9, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 57
    :cond_0
    const-string v9, "PhotoAppWidgetBind"

    const-string v10, "Problem parsing photo widget bind request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 62
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v5, helper:Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v1

    if-lt v6, v9, :cond_2

    .line 72
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    goto :goto_0

    .line 65
    :cond_2
    aget v0, v1, v6

    .line 66
    .local v0, appWidgetId:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v9}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    .line 69
    invoke-static {p0, v0, v5}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 70
    .local v8, views:Landroid/widget/RemoteViews;
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v0, v9, v10

    invoke-virtual {v2, v9, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 63
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetBind;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onResume()V

    .line 85
    return-void
.end method
