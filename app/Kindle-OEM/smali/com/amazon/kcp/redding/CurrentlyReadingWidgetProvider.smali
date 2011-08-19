.class public Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CurrentlyReadingWidgetProvider.java"


# static fields
.field private static final COVER_SIZE_DIPS:I = 0x55

.field private static final NUM_PROGRESS_DOTS:I = 0xf

.field private static final REDDING_ACTION_UPDATE_CR_WIDGET:Ljava/lang/String; = "updateCRWidget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static asyncUpdateAllWidgets(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "updateCRWidget"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method private getProgressDotsBitmap(Landroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;)Landroid/graphics/Bitmap;
    .locals 29
    .parameter "context"
    .parameter "localBook"

    .prologue
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0200b1

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 99
    .local v20, readingDotFilled:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0200b2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 101
    .local v19, readingDotEmpty:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 102
    .local v13, filledDotWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 103
    .local v11, emptyDotWidth:I
    if-le v13, v11, :cond_0

    move/from16 v23, v13

    .line 105
    .local v23, widerDotWidth:I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 106
    .local v12, filledDotHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 107
    .local v10, emptyDotHeight:I
    if-le v12, v10, :cond_1

    move/from16 v21, v12

    .line 109
    .local v21, tallerDotHeight:I
    :goto_1
    const/16 v16, 0xf

    .line 110
    .local v16, nDots:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a003d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 113
    .local v8, dotSpacingDips:I
    mul-int v24, v16, v23

    const/16 v25, 0x1

    sub-int v25, v16, v25

    mul-int/lit8 v25, v8, 0xe

    add-int v22, v24, v25

    .line 114
    .local v22, totalWidth:I
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 116
    .local v18, progressDotsBitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 117
    .local v9, drawOffset:I
    new-instance v5, Landroid/graphics/Canvas;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    .local v5, canvas:Landroid/graphics/Canvas;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v0, v5

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 121
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getUserCurrentLocation()I

    move-result v6

    .line 122
    .local v6, currentLocation:I
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v15

    .line 124
    .local v15, lastLocation:I
    const-wide/high16 v24, 0x3fe0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v27, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v17, v0

    .line 126
    .local v17, numOfFilledDots:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 128
    move v0, v14

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    move-object/from16 v7, v19

    .line 129
    .local v7, dot:Landroid/graphics/drawable/Drawable;
    :goto_3
    const/16 v24, 0x0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    add-int v25, v25, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    move-object v0, v7

    move v1, v9

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    add-int v9, v9, v23

    .line 126
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #currentLocation:I
    .end local v7           #dot:Landroid/graphics/drawable/Drawable;
    .end local v8           #dotSpacingDips:I
    .end local v9           #drawOffset:I
    .end local v10           #emptyDotHeight:I
    .end local v12           #filledDotHeight:I
    .end local v14           #i:I
    .end local v15           #lastLocation:I
    .end local v16           #nDots:I
    .end local v17           #numOfFilledDots:I
    .end local v18           #progressDotsBitmap:Landroid/graphics/Bitmap;
    .end local v21           #tallerDotHeight:I
    .end local v22           #totalWidth:I
    .end local v23           #widerDotWidth:I
    :cond_0
    move/from16 v23, v11

    .line 103
    goto/16 :goto_0

    .restart local v10       #emptyDotHeight:I
    .restart local v12       #filledDotHeight:I
    .restart local v23       #widerDotWidth:I
    :cond_1
    move/from16 v21, v10

    .line 107
    goto/16 :goto_1

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    .restart local v6       #currentLocation:I
    .restart local v8       #dotSpacingDips:I
    .restart local v9       #drawOffset:I
    .restart local v14       #i:I
    .restart local v15       #lastLocation:I
    .restart local v16       #nDots:I
    .restart local v17       #numOfFilledDots:I
    .restart local v18       #progressDotsBitmap:Landroid/graphics/Bitmap;
    .restart local v21       #tallerDotHeight:I
    .restart local v22       #totalWidth:I
    :cond_2
    move-object/from16 v7, v20

    .line 128
    goto :goto_3

    .line 133
    :cond_3
    return-object v18
.end method

.method private showCurrentlyNotReading(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenLibraryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 174
    const v2, 0x7f0c00d6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 176
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 179
    return-void
.end method

.method private showCurrentlyReading(Landroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 183
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->showCurrentlyNotReading(Landroid/content/Context;)V

    .line 257
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    move-object v5, v0

    .line 198
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidget: pdBmp exists = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    const/high16 v0, 0x42aa

    invoke-static {p1, v0}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    .line 206
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v0

    invoke-virtual {v0, p2, v2, v2, v3}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;IIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v6

    .line 207
    new-instance v0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;-><init>(Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;ILandroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->getProgressDotsBitmap(Landroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 198
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private updateWidget(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    .line 140
    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 142
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IAndroidReaderController;

    .line 146
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IAndroidReaderController;->getLastReadBook()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget: lastRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSample = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->isSample()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->showCurrentlyReading(Landroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 164
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWidget took: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millisec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->showCurrentlyNotReading(Landroid/content/Context;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->showCurrentlyNotReading(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateCRWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 80
    return-void
.end method
