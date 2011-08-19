.class public Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;
.super Landroid/app/Activity;
.source "PhotoAppWidgetConfigure.java"


# static fields
.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->WIDGET_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    .line 86
    const/4 v8, -0x1

    if-eq p2, v8, :cond_0

    .line 87
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "appWidgetId"

    iget v10, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, p2, v8}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->finish()V

    .line 136
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 94
    .local v3, res:Landroid/content/res/Resources;
    sget v8, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->WIDGET_SCALE_FACTOR:F

    const/high16 v9, 0x7f06

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 96
    .local v7, widgetWidth:I
    sget v8, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->WIDGET_SCALE_FACTOR:F

    const v9, 0x7f060001

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 98
    .local v6, widgetHeight:I
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 99
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.CROP"

    iget-object v10, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "outputX"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "outputY"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "aspectX"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "aspectY"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scaleUpIfNeeded"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scale"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "return-data"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 107
    .local v2, request:Landroid/content/Intent;
    invoke-virtual {p0, v2, v11}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 108
    .end local v2           #request:Landroid/content/Intent;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v6           #widgetHeight:I
    .end local v7           #widgetWidth:I
    :cond_1
    if-ne p1, v11, :cond_3

    .line 111
    const-string v8, "data"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 113
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, helper:Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
    iget v8, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    iget-object v9, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    const/4 p2, -0x1

    .line 118
    iget v8, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v8, v1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/gallery3d/gadget/PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 120
    .local v5, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v8, v9, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 125
    .end local v5           #views:Landroid/widget/RemoteViews;
    :goto_1
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->close()V

    .line 128
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v4, resultValue:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    iget v9, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "appWidgetId"

    iget v10, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, p2, v8}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->finish()V

    goto/16 :goto_0

    .line 123
    .end local v4           #resultValue:Landroid/content/Intent;
    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    .line 134
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #helper:Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
    :cond_3
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 59
    iget v0, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->finish()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "picked-item"

    iget-object v1, p0, Lcom/android/gallery3d/gadget/PhotoAppWidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    return-void
.end method
