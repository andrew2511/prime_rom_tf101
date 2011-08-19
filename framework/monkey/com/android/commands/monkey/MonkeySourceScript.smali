.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mScriptFileName:Ljava/lang/String;

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .registers 12
    .parameter "random"
    .parameter "filename"
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .parameter "profileWaitTime"
    .parameter "deviceSleepTime"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 127
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 129
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 145
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 147
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 148
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 149
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .registers 12
    .parameter "e"

    .prologue
    const-wide/16 v8, 0x0

    .line 641
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    .line 669
    :goto_a
    return-void

    .line 644
    :cond_b
    const-wide/16 v2, 0x0

    .line 645
    .local v2, thisDownTime:J
    const-wide/16 v4, 0x0

    .line 646
    .local v4, thisEventTime:J
    const-wide/16 v0, 0x0

    .line 648
    .local v0, expectedDelay:J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_33

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 651
    move-wide v4, v2

    .line 663
    :goto_1c
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 664
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 665
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 666
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 667
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 668
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_a

    .line 653
    :cond_33
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_59

    .line 654
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    .line 658
    :goto_41
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 659
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 661
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1c

    .line 656
    :cond_59
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_41
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    .line 677
    const-wide/16 v0, 0x0

    .line 679
    .local v0, updatedDownTime:J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 685
    :goto_c
    return-void

    .line 682
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 683
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 684
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_c
.end method

.method private closeFile()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 560
    :try_start_3
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 561
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_d} :catch_e

    .line 565
    :goto_d
    return-void

    .line 562
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 65
    .parameter "s"
    .parameter "args"

    .prologue
    .line 236
    const-string v15, "DispatchKey"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_8b

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8b

    .line 238
    :try_start_16
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, " old key\n"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    const/4 v15, 0x0

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 240
    .local v5, downTime:J
    const/4 v15, 0x1

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 241
    .local v7, eventTime:J
    const/4 v15, 0x2

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 242
    .local v9, action:I
    const/4 v15, 0x3

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 243
    .local v10, code:I
    const/4 v15, 0x4

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 244
    .local v11, repeat:I
    const/4 v15, 0x5

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 245
    .local v12, metaState:I
    const/4 v15, 0x6

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 246
    .local v13, device:I
    const/4 v15, 0x7

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 248
    .local v14, scancode:I
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v4 .. v14}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 250
    .local v4, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Key code "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 253
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Added key up \n"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_8a} :catch_672

    .line 526
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v5           #downTime:J
    .end local v7           #eventTime:J
    .end local v9           #action:I
    .end local v10           #code:I
    .end local v11           #repeat:I
    .end local v12           #metaState:I
    .end local v13           #device:I
    .end local v14           #scancode:I
    :cond_8a
    :goto_8a
    return-void

    .line 260
    :cond_8b
    const-string v15, "DispatchPointer"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_a1

    const-string v15, "DispatchTrackball"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_14c

    :cond_a1
    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0xc

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_14c

    .line 263
    const/4 v15, 0x0

    :try_start_ad
    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 264
    .restart local v5       #downTime:J
    const/4 v15, 0x1

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 265
    .restart local v7       #eventTime:J
    const/4 v15, 0x2

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 266
    .restart local v9       #action:I
    const/4 v15, 0x3

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 267
    .local v17, x:F
    const/4 v15, 0x4

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 268
    .local v18, y:F
    const/4 v15, 0x5

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 269
    .local v19, pressure:F
    const/4 v15, 0x6

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 270
    .local v20, size:F
    const/4 v15, 0x7

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 271
    .restart local v12       #metaState:I
    const/16 v15, 0x8

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v55

    .line 272
    .local v55, xPrecision:F
    const/16 v15, 0x9

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v59

    .line 273
    .local v59, yPrecision:F
    const/16 v15, 0xa

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 274
    .restart local v13       #device:I
    const/16 v15, 0xb

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 277
    .local v36, edgeFlags:I
    const-string v15, "Pointer"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_146

    .line 278
    new-instance v4, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v4, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 283
    .local v4, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_114
    invoke-virtual {v4, v5, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, v55

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 291
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5           #downTime:J
    .end local v7           #eventTime:J
    .end local v9           #action:I
    .end local v12           #metaState:I
    .end local v13           #device:I
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v19           #pressure:F
    .end local v20           #size:F
    .end local v36           #edgeFlags:I
    .end local v55           #xPrecision:F
    .end local v59           #yPrecision:F
    :catch_143
    move-exception v15

    goto/16 :goto_8a

    .line 280
    .restart local v5       #downTime:J
    .restart local v7       #eventTime:J
    .restart local v9       #action:I
    .restart local v12       #metaState:I
    .restart local v13       #device:I
    .restart local v17       #x:F
    .restart local v18       #y:F
    .restart local v19       #pressure:F
    .restart local v20       #size:F
    .restart local v36       #edgeFlags:I
    .restart local v55       #xPrecision:F
    .restart local v59       #yPrecision:F
    :cond_146
    new-instance v4, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v4, v9}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_14b} :catch_143

    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_114

    .line 297
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5           #downTime:J
    .end local v7           #eventTime:J
    .end local v9           #action:I
    .end local v12           #metaState:I
    .end local v13           #device:I
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v19           #pressure:F
    .end local v20           #size:F
    .end local v36           #edgeFlags:I
    .end local v55           #xPrecision:F
    .end local v59           #yPrecision:F
    :cond_14c
    const-string v15, "Tap"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_1e6

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1e6

    .line 299
    const/4 v15, 0x0

    :try_start_163
    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 300
    .restart local v17       #x:F
    const/4 v15, 0x1

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 303
    .restart local v18       #y:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 305
    .restart local v5       #downTime:J
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v33

    .line 309
    .local v33, e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v34

    .line 313
    .local v34, e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_1c4
    .catch Ljava/lang/NumberFormatException; {:try_start_163 .. :try_end_1c4} :catch_1c6

    goto/16 :goto_8a

    .line 315
    .end local v5           #downTime:J
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v33           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v34           #e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    :catch_1c6
    move-exception v15

    move-object v4, v15

    .line 316
    .local v4, e:Ljava/lang/NumberFormatException;
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "// "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 322
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_1e6
    const-string v15, "PressAndHold"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_2a5

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2a5

    .line 324
    const/4 v15, 0x0

    :try_start_1fd
    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 325
    .restart local v17       #x:F
    const/4 v15, 0x1

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 326
    .restart local v18       #y:F
    const/4 v15, 0x2

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v45

    .line 329
    .local v45, pressDuration:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 331
    .restart local v5       #downTime:J
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v33

    .line 335
    .restart local v33       #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v34, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v34

    move-wide/from16 v1, v45

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 336
    .local v34, e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v19, v5, v45

    move-object v0, v15

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    add-long v19, v5, v45

    move-object v0, v15

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v35

    .line 340
    .local v35, e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_283
    .catch Ljava/lang/NumberFormatException; {:try_start_1fd .. :try_end_283} :catch_285

    goto/16 :goto_8a

    .line 344
    .end local v5           #downTime:J
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v33           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v34           #e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v35           #e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v45           #pressDuration:J
    :catch_285
    move-exception v15

    move-object v4, v15

    .line 345
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "// "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 351
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_2a5
    const-string v15, "Drag"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_384

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x5

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_384

    .line 352
    const/4 v15, 0x0

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v56

    .line 353
    .local v56, xStart:F
    const/4 v15, 0x1

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v60

    .line 354
    .local v60, yStart:F
    const/4 v15, 0x2

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v54

    .line 355
    .local v54, xEnd:F
    const/4 v15, 0x3

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v58

    .line 356
    .local v58, yEnd:F
    const/4 v15, 0x4

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .line 358
    .local v50, stepCount:I
    move/from16 v17, v56

    .line 359
    .restart local v17       #x:F
    move/from16 v18, v60

    .line 360
    .restart local v18       #y:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 361
    .restart local v5       #downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 363
    .restart local v7       #eventTime:J
    if-lez v50, :cond_384

    .line 364
    sub-float v15, v54, v56

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v57, v15, v16

    .line 365
    .local v57, xStep:F
    sub-float v15, v58, v60

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v61, v15, v16

    .line 367
    .local v61, yStep:F
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 370
    .local v4, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 372
    const/16 v37, 0x0

    .local v37, i:I
    :goto_325
    move/from16 v0, v37

    move/from16 v1, v50

    if-ge v0, v1, :cond_35b

    .line 373
    add-float v17, v17, v57

    .line 374
    add-float v18, v18, v61

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 376
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 372
    add-int/lit8 v37, v37, 0x1

    goto :goto_325

    .line 381
    :cond_35b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 382
    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v25, 0x3f80

    const/high16 v26, 0x40a0

    move/from16 v23, v17

    move/from16 v24, v18

    invoke-virtual/range {v21 .. v26}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 389
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5           #downTime:J
    .end local v7           #eventTime:J
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v37           #i:I
    .end local v50           #stepCount:I
    .end local v54           #xEnd:F
    .end local v56           #xStart:F
    .end local v57           #xStep:F
    .end local v58           #yEnd:F
    .end local v60           #yStart:F
    .end local v61           #yStep:F
    :cond_384
    const-string v15, "DispatchFlip"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_3b1

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3b1

    .line 390
    const/4 v15, 0x0

    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v41

    .line 391
    .local v41, keyboardOpen:Z
    new-instance v4, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move-object v0, v4

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 392
    .local v4, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 396
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v41           #keyboardOpen:Z
    :cond_3b1
    const-string v15, "LaunchActivity"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_43d

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_43d

    .line 397
    const/4 v15, 0x0

    aget-object v43, p2, v15

    .line 398
    .local v43, pkg_name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v29, p2, v15

    .line 399
    .local v29, cl_name:Ljava/lang/String;
    const-wide/16 v27, 0x0

    .line 401
    .local v27, alarmTime:J
    new-instance v42, Landroid/content/ComponentName;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .local v42, mApp:Landroid/content/ComponentName;
    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_3ec

    .line 405
    const/4 v15, 0x2

    :try_start_3e6
    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3eb
    .catch Ljava/lang/NumberFormatException; {:try_start_3e6 .. :try_end_3eb} :catch_409

    move-result-wide v27

    .line 412
    :cond_3ec
    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_429

    .line 413
    new-instance v4, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object v0, v4

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 414
    .local v4, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 406
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_409
    move-exception v15

    move-object v4, v15

    .line 407
    .local v4, e:Ljava/lang/NumberFormatException;
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "// "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 416
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_429
    new-instance v4, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object v0, v4

    move-object/from16 v1, v42

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 417
    .local v4, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 423
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v27           #alarmTime:J
    .end local v29           #cl_name:Ljava/lang/String;
    .end local v42           #mApp:Landroid/content/ComponentName;
    .end local v43           #pkg_name:Ljava/lang/String;
    :cond_43d
    const-string v15, "DeviceWakeUp"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_48c

    .line 424
    const-string v43, "com.google.android.powerutil"

    .line 425
    .restart local v43       #pkg_name:Ljava/lang/String;
    const-string v29, "com.google.android.powerutil.WakeUpScreen"

    .line 426
    .restart local v29       #cl_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    move-wide/from16 v31, v0

    .line 428
    .local v31, deviceSleepTime:J
    new-instance v42, Landroid/content/ComponentName;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .restart local v42       #mApp:Landroid/content/ComponentName;
    new-instance v33, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move-wide/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 430
    .local v33, e1:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 434
    new-instance v34, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v15, 0xbb8

    add-long v15, v15, v31

    move-object/from16 v0, v34

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 435
    .restart local v34       #e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 440
    .end local v29           #cl_name:Ljava/lang/String;
    .end local v31           #deviceSleepTime:J
    .end local v33           #e1:Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v34           #e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v42           #mApp:Landroid/content/ComponentName;
    .end local v43           #pkg_name:Ljava/lang/String;
    :cond_48c
    const-string v15, "LaunchInstrumentation"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_4bc

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4bc

    .line 441
    const/4 v15, 0x0

    aget-object v52, p2, v15

    .line 442
    .local v52, test_name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v47, p2, v15

    .line 443
    .local v47, runner_name:Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    move-object v0, v4

    move-object/from16 v1, v52

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v4, e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 449
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v47           #runner_name:Ljava/lang/String;
    .end local v52           #test_name:Ljava/lang/String;
    :cond_4bc
    const-string v15, "UserWait"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_4f2

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4f2

    .line 451
    const/4 v15, 0x0

    :try_start_4d3
    aget-object v15, p2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v48, v0

    .line 452
    .local v48, sleeptime:J
    new-instance v4, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object v0, v4

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 453
    .local v4, e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4ed
    .catch Ljava/lang/NumberFormatException; {:try_start_4d3 .. :try_end_4ed} :catch_4ef

    goto/16 :goto_8a

    .line 454
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v48           #sleeptime:J
    :catch_4ef
    move-exception v15

    goto/16 :goto_8a

    .line 461
    :cond_4f2
    const-string v15, "ProfileWait"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_513

    .line 462
    new-instance v4, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    move-wide v15, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 463
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 468
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_513
    const-string v15, "DispatchPress"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_556

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_556

    .line 469
    const/4 v15, 0x0

    aget-object v40, p2, v15

    .line 470
    .local v40, key_name:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v39

    .line 471
    .local v39, keyCode:I
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v15, 0x0

    move-object v0, v4

    move v1, v15

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 472
    .local v4, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 473
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v4           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v15, 0x1

    move-object v0, v4

    move v1, v15

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 474
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 479
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v39           #keyCode:I
    .end local v40           #key_name:Ljava/lang/String;
    :cond_556
    const-string v15, "LongPress"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_59f

    .line 481
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v15, 0x0

    const/16 v16, 0x17

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 482
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 483
    new-instance v53, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v15, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v15, v15

    move-object/from16 v0, v53

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 484
    .local v53, we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 485
    new-instance v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v4           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v15, 0x1

    const/16 v16, 0x17

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 486
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 490
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v53           #we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_59f
    const-string v15, "PowerLog"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_5ce

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    if-lez v15, :cond_5ce

    .line 491
    const/4 v15, 0x0

    aget-object v44, p2, v15

    .line 494
    .local v44, power_log_type:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_650

    .line 495
    new-instance v4, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 505
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v44           #power_log_type:Ljava/lang/String;
    :cond_5ce
    :goto_5ce
    const-string v15, "WriteLog"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_5e6

    .line 506
    new-instance v4, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 507
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 511
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_5e6
    const-string v15, "RunCmd"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_60f

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_60f

    .line 512
    const/4 v15, 0x0

    aget-object v30, p2, v15

    .line 513
    .local v30, cmd:Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v4, e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v30           #cmd:Ljava/lang/String;
    :cond_60f
    const-string v15, "DispatchString"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_8a

    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8a

    .line 519
    const/4 v15, 0x0

    aget-object v38, p2, v15

    .line 520
    .local v38, input:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "input text "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 521
    .restart local v30       #cmd:Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v4       #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_8a

    .line 497
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v30           #cmd:Ljava/lang/String;
    .end local v38           #input:Ljava/lang/String;
    .restart local v44       #power_log_type:Ljava/lang/String;
    :cond_650
    move-object/from16 v0, p2

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5ce

    .line 498
    const/4 v15, 0x1

    aget-object v51, p2, v15

    .line 499
    .local v51, test_case_status:Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object v0, v4

    move-object/from16 v1, v44

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v4, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_5ce

    .line 254
    .end local v4           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v44           #power_log_type:Ljava/lang/String;
    .end local v51           #test_case_status:Ljava/lang/String;
    :catch_672
    move-exception v15

    goto/16 :goto_8a
.end method

.method private needSleep(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 601
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 608
    :goto_6
    return-void

    .line 605
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 606
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method private processLine(Ljava/lang/String;)V
    .registers 8
    .parameter "line"

    .prologue
    .line 535
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 536
    .local v2, index1:I
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 538
    .local v3, index2:I
    if-ltz v2, :cond_10

    if-gez v3, :cond_11

    .line 549
    :cond_10
    :goto_10
    return-void

    .line 542
    :cond_11
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, args:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v4, v0

    if-ge v1, v4, :cond_2c

    .line 545
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 548
    :cond_2c
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_10
.end method

.method private readHeader()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    iput-boolean v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 172
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 173
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 174
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 178
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_8a

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v3, "count="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_58

    .line 183
    :try_start_38
    const-string v3, "count="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_4e} :catch_4f

    goto :goto_24

    .line 185
    .end local v2           #value:Ljava/lang/String;
    :catch_4f
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v3, v6

    .line 202
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :goto_57
    return v3

    .line 189
    :cond_58
    const-string v3, "speed="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_80

    .line 191
    :try_start_60
    const-string v3, "count="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2       #value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_76} :catch_77

    goto :goto_24

    .line 193
    .end local v2           #value:Ljava/lang/String;
    :catch_77
    move-exception v3

    move-object v0, v3

    .line 194
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v3, v6

    .line 195
    goto :goto_57

    .line 197
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_80
    const-string v3, "start data >>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_24

    move v3, v7

    .line 198
    goto :goto_57

    :cond_8a
    move v3, v6

    .line 202
    goto :goto_57
.end method

.method private readLines()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v3, :cond_18

    .line 214
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_f

    move v2, v0

    .line 221
    .end local v1           #line:Ljava/lang/String;
    :goto_e
    return v2

    .line 218
    .restart local v1       #line:Ljava/lang/String;
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 219
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #line:Ljava/lang/String;
    :cond_18
    move v2, v3

    .line 221
    goto :goto_e
.end method

.method private readNextBatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 582
    .local v0, linesRead:I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_b

    .line 583
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 584
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 587
    :cond_b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    .line 589
    if-nez v0, :cond_14

    .line 590
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 592
    :cond_14
    return-void
.end method

.method private resetValue()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 155
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 156
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 157
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 158
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 159
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 160
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 161
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 698
    const-wide/16 v3, -0x1

    .line 701
    .local v3, recordedEventTime:J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 703
    :try_start_b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_2a

    .line 710
    :cond_e
    :try_start_e
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeyEvent;

    .line 711
    .local v2, ev:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_1b} :catch_2d

    .line 716
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v5

    if-nez v5, :cond_31

    .line 717
    move-object v0, v2

    check-cast v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    :cond_28
    :goto_28
    move-object v5, v2

    .line 722
    .end local v2           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :goto_29
    return-object v5

    .line 704
    :catch_2a
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v5, v6

    .line 705
    goto :goto_29

    .line 712
    .end local v1           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/util/NoSuchElementException;
    move-object v5, v6

    .line 713
    goto :goto_29

    .line 718
    .end local v1           #e:Ljava/util/NoSuchElementException;
    .restart local v2       #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_31
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3f

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_28

    .line 720
    :cond_3f
    move-object v0, v2

    check-cast v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_28
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 631
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 632
    return-void
.end method

.method public validate()Z
    .registers 7

    .prologue
    .line 618
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v1

    .line 619
    .local v1, validHeader:Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_33

    .line 624
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v2, :cond_31

    .line 625
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events with speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    move v2, v1

    .line 627
    .end local v1           #validHeader:Z
    :goto_32
    return v2

    .line 620
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 621
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_32
.end method
