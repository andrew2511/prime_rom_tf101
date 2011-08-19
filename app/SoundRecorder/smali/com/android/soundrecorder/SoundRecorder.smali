.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field isBinded:Z

.field isStorageFullFlag:Z

.field mAcceptButton:Landroid/widget/Button;

.field mDiscardButton:Landroid/widget/Button;

.field mErrorUiMessage:Ljava/lang/String;

.field mExitButtons:Landroid/widget/LinearLayout;

.field final mHandler:Landroid/os/Handler;

.field mMaxFileSize:J

.field mPlayButton:Landroid/widget/ImageButton;

.field mRecordButton:Landroid/widget/ImageButton;

.field mRecordService:Lcom/android/soundrecorder/IRecorderService;

.field mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field mRequestedType:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field mSampleInterrupted:Z

.field mStateLED:Landroid/widget/ImageView;

.field mStateMessage1:Landroid/widget/TextView;

.field mStateMessage2:Landroid/widget/TextView;

.field mStateProgressBar:Landroid/widget/ProgressBar;

.field mStopButton:Landroid/widget/ImageButton;

.field mTimerFormat:Ljava/lang/String;

.field mTimerView:Landroid/widget/TextView;

.field mUpdateTimer:Ljava/lang/Runnable;

.field mVUMeter:Lcom/android/soundrecorder/VUMeter;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field serviceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 223
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 225
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 229
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    .line 252
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    .line 254
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->serviceState:Landroid/os/Bundle;

    .line 951
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static Bytes2String(JI)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4480

    .line 897
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 898
    const-string v1, "%%.%df"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 899
    div-float v2, v0, v4

    cmpg-float v2, v2, v7

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    :goto_0
    return-object v0

    .line 900
    :cond_0
    div-float v2, v0, v4

    div-float/2addr v2, v4

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_1
    div-float v2, v0, v4

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 902
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 21
    .parameter "file"

    .prologue
    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 637
    .local v14, res:Landroid/content/res/Resources;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v9, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 639
    .local v7, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 640
    .local v12, modDate:J
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 641
    .local v10, date:Ljava/util/Date;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const v18, 0x7f040010

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    .local v11, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 647
    .local v17, title:Ljava/lang/String;
    const-string v18, "is_music"

    const-string v19, "1"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v18, "title"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v18, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v18, "date_added"

    const-wide/16 v19, 0x3e8

    div-long v19, v7, v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string v18, "date_modified"

    const-wide/16 v19, 0x3e8

    div-long v19, v12, v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v18, "mime_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v18, "artist"

    const v19, 0x7f040011

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v18, "album"

    const v19, 0x7f040012

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v18, "SoundRecorder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inserting audio record: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 660
    .local v15, resolver:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 661
    .local v6, base:Landroid/net/Uri;
    const-string v18, "SoundRecorder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ContentURI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v15, v6, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 663
    .local v16, result:Landroid/net/Uri;
    if-nez v16, :cond_0

    .line 664
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v19, 0x7f04

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f040016

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f04000d

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 670
    const/16 v18, 0x0

    .line 681
    :goto_0
    return-object v18

    .line 672
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 673
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/soundrecorder/SoundRecorder;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 675
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 676
    .local v5, audioId:I
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/soundrecorder/SoundRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 680
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v18, v16

    .line 681
    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 577
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 580
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 581
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 582
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 583
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 584
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 585
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 586
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 589
    return-void
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5
    .parameter "res"
    .parameter "resolver"

    .prologue
    .line 618
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    const v3, 0x7f040013

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 621
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 622
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040016

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 629
    :cond_0
    return-object v1
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 10
    .parameter "res"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 595
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 596
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 597
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 598
    .local v8, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f040013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 599
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 601
    const-string v0, "SoundRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    const/4 v7, -0x1

    .line 604
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 605
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 610
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    return v7
.end method

.method private initResourceRefs()V
    .locals 3

    .prologue
    .line 352
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 353
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 354
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 356
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    .line 357
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    .line 358
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    .line 359
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    .line 360
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    .line 362
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    .line 363
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    .line 364
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    .line 365
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/soundrecorder/VUMeter;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    .line 367
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 377
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 378
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    const/high16 v2, 0x42a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 381
    :cond_0
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 562
    :try_start_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 568
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 566
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 567
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 568
    goto :goto_0
.end method

.method private registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private saveSample()V
    .locals 5

    .prologue
    .line 495
    const/4 v2, 0x0

    .line 497
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v3}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I

    move-result v3

    if-nez v3, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v4}, Lcom/android/soundrecorder/IRecorderService;->sampleFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 507
    :goto_1
    if-eqz v2, :cond_0

    .line 510
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/soundrecorder/SoundRecorder;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 501
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 502
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 503
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopAudioPlayback()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method private updateTimeRemaining()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 720
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v0

    .line 722
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 723
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 725
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v0

    .line 726
    packed-switch v0, :pswitch_data_0

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 740
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v0}, Lcom/android/soundrecorder/IRecorderService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_1
    return-void

    .line 728
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 732
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 748
    const-string v3, ""

    .line 750
    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    .line 751
    const v3, 0x7f04000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 752
    :cond_1
    const-wide/16 v4, 0x21c

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 753
    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    div-long/2addr v0, v8

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    goto :goto_2

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimerView()V
    .locals 14

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 691
    .local v2, res:Landroid/content/res/Resources;
    :try_start_0
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    if-nez v7, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v7}, Lcom/android/soundrecorder/IRecorderService;->state()I

    move-result v3

    .line 693
    .local v3, state:I
    const/4 v7, 0x1

    if-eq v3, v7, :cond_2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    :cond_2
    const/4 v7, 0x1

    move v1, v7

    .line 694
    .local v1, ongoing:Z
    :goto_1
    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v7}, Lcom/android/soundrecorder/IRecorderService;->progress()I

    move-result v7

    int-to-long v7, v7

    move-wide v4, v7

    .line 697
    .local v4, time:J
    :goto_2
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, timeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const/4 v7, 0x2

    if-ne v3, v7, :cond_6

    .line 701
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v4

    iget-object v10, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v10}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I

    move-result v10

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 706
    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    .line 707
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    .end local v1           #ongoing:Z
    .end local v3           #state:I
    .end local v4           #time:J
    .end local v6           #timeStr:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 693
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #state:I
    :cond_4
    const/4 v7, 0x0

    move v1, v7

    goto :goto_1

    .line 694
    .restart local v1       #ongoing:Z
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v7}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I

    move-result v7

    int-to-long v7, v7

    move-wide v4, v7

    goto :goto_2

    .line 702
    .restart local v4       #time:J
    .restart local v6       #timeStr:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 703
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimeRemaining()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private updateUi()V
    .locals 7

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 765
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v2}, Lcom/android/soundrecorder/IRecorderService;->state()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 891
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    .line 892
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v0}, Lcom/android/soundrecorder/VUMeter;->invalidate()V

    .line 893
    return-void

    .line 767
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v2}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I

    move-result v2

    if-nez v2, :cond_5

    .line 768
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 769
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 770
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 771
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 772
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 773
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 774
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 776
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 783
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 785
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 786
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 813
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    if-eqz v2, :cond_2

    .line 814
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v3, 0x7f040005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    :cond_2
    const-string v0, "isStorageFullFlag"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->isStorageFullFlag:Z

    .line 821
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->isStorageFullFlag:Z

    if-eqz v0, :cond_3

    .line 822
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 830
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 787
    :cond_4
    const v2, 0x7f040001

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 791
    :cond_5
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 792
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 793
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 794
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 795
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 796
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 798
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 805
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 806
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v5}, Lcom/android/soundrecorder/IRecorderService;->sampleFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/soundrecorder/SoundRecorder;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 809
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    :cond_6
    const v2, 0x7f040002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 837
    :pswitch_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 838
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 839
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 840
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 841
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 842
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 844
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 847
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v3, 0x7f040004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 853
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 856
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    :cond_7
    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 863
    :pswitch_2
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 864
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 865
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 866
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 867
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 868
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 870
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 875
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 877
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 880
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 881
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    :cond_8
    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 461
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->stop()V

    .line 462
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 463
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->stopRecorderService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 467
    :goto_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 406
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 408
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->diskSpaceAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_0

    .line 415
    :cond_3
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAudioPlayback()V

    .line 417
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v2, 0x170c

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 420
    :try_start_1
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    const/4 v2, 0x3

    const-string v3, ".amr"

    invoke-interface {v1, v2, v3}, Lcom/android/soundrecorder/IRecorderService;->startRecording(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :goto_2
    iget-wide v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 437
    :try_start_2
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v3}, Lcom/android/soundrecorder/IRecorderService;->sampleFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 421
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 422
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 424
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v2, 0x17700

    invoke-virtual {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    const/4 v2, 0x1

    const-string v3, ".3gpp"

    invoke-interface {v1, v2, v3}, Lcom/android/soundrecorder/IRecorderService;->startRecording(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 428
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 429
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 432
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :pswitch_3
    :try_start_4
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->startPlayback()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 448
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 449
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 454
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_4
    :try_start_5
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->stop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 455
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 456
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 464
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 465
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 471
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_5
    :try_start_6
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->delete()V

    .line 472
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v1}, Lcom/android/soundrecorder/IRecorderService;->stopRecorderService()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 476
    :goto_3
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_0

    .line 473
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 474
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 403
    :pswitch_data_0
    .packed-switch 0x7f060008
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 318
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 319
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v2, "audio/amr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/3gpp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    :cond_0
    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 275
    :cond_1
    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    .line 277
    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 280
    :cond_2
    const-string v0, "audio/*"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*/*"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    :cond_3
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 284
    :cond_4
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->isBinded:Z

    .line 287
    const-string v0, "SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->isBinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    new-instance v0, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-direct {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 291
    invoke-static {p0}, Lcom/android/soundrecorder/RecorderService;->setOnStateChangedListener(Lcom/android/soundrecorder/RecorderService$OnStateChangedListener;)V

    .line 292
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 294
    const/4 v1, 0x6

    const-string v2, "SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 297
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 299
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 300
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V

    .line 302
    if-eqz p1, :cond_5

    .line 303
    const-string v0, "recorder_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_5

    .line 305
    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->serviceState:Landroid/os/Bundle;

    .line 306
    const-string v1, "sample_ed"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 307
    const-string v1, "max_file_size"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 311
    :cond_5
    :goto_0
    return-void

    .line 268
    :cond_6
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 519
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 525
    :cond_1
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 924
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 927
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 941
    :goto_0
    if-eqz v0, :cond_0

    .line 942
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 949
    :cond_0
    return-void

    .line 929
    :pswitch_0
    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :pswitch_1
    const v1, 0x7f040015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :pswitch_2
    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v2}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 333
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v1, recorderState:Landroid/os/Bundle;
    :try_start_1
    const-string v2, "sample_path"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v3}, Lcom/android/soundrecorder/IRecorderService;->sampleFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "sample_length"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordService:Lcom/android/soundrecorder/IRecorderService;

    invoke-interface {v3}, Lcom/android/soundrecorder/IRecorderService;->sampleLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v2, "sample_ed"

    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v2, "max_file_size"

    iget-wide v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    :goto_1
    const-string v2, "recorder_state"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 340
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 341
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 909
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 910
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 917
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 918
    return-void

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 484
    const-string v2, "BYRATE_PER_SECOND"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, byterate_settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 486
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bytes_per_second"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget v3, v3, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method
