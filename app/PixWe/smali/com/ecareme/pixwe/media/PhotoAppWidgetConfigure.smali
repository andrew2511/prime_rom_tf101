.class public Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;
.super Landroid/app/Activity;
.source "PhotoAppWidgetConfigure.java"


# static fields
.field static final REQUEST_GET_PHOTO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetConfigure"


# instance fields
.field private mApp:Lcom/ecareme/pixwe/app/App;

.field mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 87
    if-ne p2, v6, :cond_1

    iget v5, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-eq v5, v6, :cond_1

    .line 89
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 91
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, helper:Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    iget v5, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v5, v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const/4 p2, -0x1

    .line 96
    iget v5, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v5, v2}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 97
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 98
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    aput v7, v5, v6

    invoke-virtual {v0, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 100
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 106
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #helper:Lcom/ecareme/pixwe/media/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v3, resultValue:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, p2, v3}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->finish()V

    .line 110
    return-void

    .line 102
    .end local v3           #resultValue:Landroid/content/Intent;
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0xc0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v1, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 46
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 47
    iget v1, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-ne v1, v4, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->finish()V

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PhotoAppWidgetConfigure;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onResume()V

    .line 77
    return-void
.end method
