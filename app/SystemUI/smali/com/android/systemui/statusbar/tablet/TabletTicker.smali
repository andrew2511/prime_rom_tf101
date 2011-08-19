.class public Lcom/android/systemui/statusbar/tablet/TabletTicker;
.super Landroid/os/Handler;
.source "TabletTicker.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mContext:Landroid/content/Context;

.field private mCurrentKey:Landroid/os/IBinder;

.field private mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

.field private mCurrentView:Landroid/view/View;

.field private mKeys:[Landroid/os/IBinder;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

.field private mQueuePos:I

.field private mWindow:Landroid/view/ViewGroup;

.field private mWindowShouldClose:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    const/4 v1, 0x3

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-array v0, v1, [Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    .line 73
    new-array v0, v1, [Lcom/android/internal/statusbar/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private advance()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    .line 165
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    .line 166
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->dequeue()V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->makeTickerView(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->makeWindow()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    .line 176
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->doneTicking()V

    .line 198
    :cond_4
    return-void

    .line 183
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->dequeue()V

    goto :goto_0

    .line 187
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dequeue()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    .line 202
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 206
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    .line 207
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v5, v2, v0

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v5, v2, v0

    .line 213
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-lez v2, :cond_1

    .line 214
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    .line 216
    :cond_1
    return-void
.end method

.method private makeTickerView(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 27
    .parameter "notification"

    .prologue
    .line 260
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v19, v0

    .line 262
    .local v19, n:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 268
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 269
    const v13, 0x7f0b0080

    .line 273
    .local v13, iconId:I
    :goto_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 274
    const v21, 0x7f030017

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 275
    .local v11, group:Landroid/view/ViewGroup;
    const v21, 0x7f0b0081

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 276
    .local v6, content:Landroid/view/ViewGroup;
    const/4 v10, 0x0

    .line 277
    .local v10, expanded:Landroid/view/View;
    const/4 v9, 0x0

    .line 279
    .local v9, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 284
    :goto_1
    if-nez v10, :cond_1

    .line 285
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 287
    .local v14, ident:Ljava/lang/String;
    const-string v21, "StatusBar.TabletTicker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "couldn\'t inflate view for notification "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/16 v21, 0x0

    .line 330
    .end local v6           #content:Landroid/view/ViewGroup;
    .end local v9           #exception:Ljava/lang/Exception;
    .end local v10           #expanded:Landroid/view/View;
    .end local v14           #ident:Ljava/lang/String;
    :goto_2
    return-object v21

    .line 271
    .end local v11           #group:Landroid/view/ViewGroup;
    .end local v13           #iconId:I
    :cond_0
    const v13, 0x7f0b007f

    .restart local v13       #iconId:I
    goto/16 :goto_0

    .line 281
    .restart local v6       #content:Landroid/view/ViewGroup;
    .restart local v9       #exception:Ljava/lang/Exception;
    .restart local v10       #expanded:Landroid/view/View;
    .restart local v11       #group:Landroid/view/ViewGroup;
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 282
    .local v8, e:Ljava/lang/RuntimeException;
    move-object v9, v8

    goto :goto_1

    .line 290
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_1
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v18, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .end local v6           #content:Landroid/view/ViewGroup;
    .end local v9           #exception:Ljava/lang/Exception;
    .end local v10           #expanded:Landroid/view/View;
    .end local v18           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    const v21, 0x7f0b0060

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 307
    .local v17, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 308
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v7, v0

    .line 314
    .local v7, contentIntent:Landroid/app/PendingIntent;
    if-eqz v7, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-result-object v5

    .line 319
    .local v5, clicker:Landroid/view/View$OnClickListener;
    new-instance v21, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletTicker;Landroid/view/View$OnClickListener;)V

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v5           #clicker:Landroid/view/View$OnClickListener;
    :goto_4
    move-object/from16 v21, v11

    .line 330
    goto/16 :goto_2

    .line 294
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v11           #group:Landroid/view/ViewGroup;
    .end local v17           #largeIcon:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 295
    const v21, 0x7f030016

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 296
    .restart local v11       #group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v26}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 298
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 299
    .local v16, iv:Landroid/widget/ImageView;
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    const v21, 0x7f0b002a

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 302
    .local v20, tv:Landroid/widget/TextView;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 304
    .end local v11           #group:Landroid/view/ViewGroup;
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v16           #iv:Landroid/widget/ImageView;
    .end local v20           #tv:Landroid/widget/TextView;
    :cond_4
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "tickerView==null && tickerText==null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 326
    .restart local v7       #contentIntent:Landroid/app/PendingIntent;
    .restart local v11       #group:Landroid/view/ViewGroup;
    .restart local v17       #largeIcon:Landroid/widget/ImageView;
    :cond_5
    const/16 v21, 0x0

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method private makeWindow()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 220
    .local v6, res:Landroid/content/res/Resources;
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mContext:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v7, view:Landroid/widget/FrameLayout;
    const v3, 0x7f090007

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 222
    .local v1, width:I
    const v3, 0x1050006

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 224
    .local v2, height:I
    const/16 v4, 0x308

    .line 228
    .local v4, windowFlags:I
    or-int/lit8 v4, v4, 0x20

    .line 232
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 235
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x55

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 238
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 239
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 241
    const-string v3, "NotificationTicker"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-object v7
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 2
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    aput-object p1, v0, v1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    aput-object p2, v0, v1

    .line 99
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentNotification:Lcom/android/internal/statusbar/StatusBarNotification;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    .line 103
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    .line 106
    :cond_1
    return-void
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .parameter "transition"
    .parameter "container"
    .parameter "view"
    .parameter "transitionType"

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindow:Landroid/view/ViewGroup;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mWindowShouldClose:Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->doneTicking()V

    .line 257
    :cond_0
    return-void
.end method

.method public halt()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->removeMessages(I)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-eqz v1, :cond_2

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v3, v1, v0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v3, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    .line 148
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->advance()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;Z)V

    .line 110
    return-void
.end method

.method public remove(Landroid/os/IBinder;Z)V
    .locals 7
    .parameter "key"
    .parameter "advance"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mCurrentKey:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->removeMessages(I)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->sendEmptyMessage(I)Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_3

    .line 123
    :goto_2
    if-ge v0, v5, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mKeys:[Landroid/os/IBinder;

    aput-object v6, v1, v5

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueue:[Lcom/android/internal/statusbar/StatusBarNotification;

    aput-object v6, v1, v5

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    if-lez v1, :cond_0

    .line 130
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletTicker;->mQueuePos:I

    goto :goto_0

    .line 121
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .parameter "transition"
    .parameter "container"
    .parameter "view"
    .parameter "transitionType"

    .prologue
    .line 247
    return-void
.end method
