.class public Lcom/android/commands/monkey/MonkeyPowerEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPowerEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/autotester.log"

.field private static final TAG:Ljava/lang/String; = "PowerTester"

.field private static final TEST_DELAY_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN_DELAY"

.field private static final TEST_ENDED:Ljava/lang/String; = "AUTOTEST_TEST_SUCCESS"

.field private static final TEST_IDLE_ENDED:Ljava/lang/String; = "AUTOTEST_IDLE_SUCCESS"

.field private static final TEST_SEQ_BEGIN:Ljava/lang/String; = "AUTOTEST_SEQUENCE_BEGIN"

.field private static final TEST_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN"

.field private static final USB_DELAY_TIME:J = 0x2710L

.field private static mLogEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mTestStartTime:J


# instance fields
.field private mPowerLogTag:Ljava/lang/String;

.field private mTestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 65
    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "powerLogTag"

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 59
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "powerLogTag"
    .parameter "powerTestResult"

    .prologue
    .line 52
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 75
    .local v3, tagTime:J
    const-string v5, "AUTOTEST_TEST_BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2e

    .line 76
    sput-wide v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 87
    :cond_e
    :goto_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, event:Landroid/content/ContentValues;
    const-string v5, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v5, "tag"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_28

    .line 92
    const-string v5, "value"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_28
    sget-object v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void

    .line 77
    .end local v0           #event:Landroid/content/ContentValues;
    :cond_2e
    const-string v5, "AUTOTEST_IDLE_SUCCESS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_41

    .line 78
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 79
    .local v1, lagTime:J
    sget-wide v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    add-long v3, v5, v1

    .line 80
    const-string p1, "AUTOTEST_TEST_SUCCESS"

    .line 81
    goto :goto_e

    .end local v1           #lagTime:J
    :cond_41
    const-string v5, "AUTOTEST_TEST_BEGIN_DELAY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_e

    .line 82
    const-wide/16 v5, 0x2710

    add-long/2addr v5, v3

    sput-wide v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 83
    sget-wide v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 84
    const-string p1, "AUTOTEST_TEST_BEGIN"

    goto :goto_e
.end method

.method private writeLogEvents()V
    .registers 11

    .prologue
    .line 103
    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    .line 104
    .local v3, events:[Landroid/content/ContentValues;
    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v6, 0x0

    .line 107
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_17
    array-length v8, v3

    if-ge v4, v8, :cond_5c

    .line 109
    aget-object v2, v3, v4

    .line 110
    .local v2, event:Landroid/content/ContentValues;
    const-string v8, "date"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v8, "tag"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v8, "value"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 113
    const-string v8, "value"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, value:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const/16 v8, 0xa

    const/16 v9, 0x2f

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .end local v5           #value:Ljava/lang/String;
    :cond_54
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 119
    .end local v2           #event:Landroid/content/ContentValues;
    :cond_5c
    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/sdcard/autotester.log"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_64
    .catchall {:try_start_11 .. :try_end_64} :catchall_86
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_64} :catch_75

    .line 120
    .end local v6           #writer:Ljava/io/FileWriter;
    .local v7, writer:Ljava/io/FileWriter;
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_8f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6b} :catch_92

    .line 125
    if-eqz v7, :cond_70

    :try_start_6d
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_72

    :cond_70
    move-object v6, v7

    .line 129
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :cond_71
    :goto_71
    return-void

    .line 126
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    .restart local v7       #writer:Ljava/io/FileWriter;
    :catch_72
    move-exception v8

    move-object v6, v7

    .line 128
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto :goto_71

    .line 121
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    :catch_75
    move-exception v8

    move-object v1, v8

    .line 122
    .local v1, e:Ljava/io/IOException;
    :goto_77
    :try_start_77
    const-string v8, "PowerTester"

    const-string v9, "Can\'t write sdcard log file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_86

    .line 125
    if-eqz v6, :cond_71

    :try_start_80
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_71

    .line 126
    :catch_84
    move-exception v8

    goto :goto_71

    .line 124
    .end local v1           #e:Ljava/io/IOException;
    :catchall_86
    move-exception v8

    .line 125
    :goto_87
    if-eqz v6, :cond_8c

    :try_start_89
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 127
    :cond_8c
    :goto_8c
    throw v8

    .line 126
    :catch_8d
    move-exception v9

    goto :goto_8c

    .line 124
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    .restart local v7       #writer:Ljava/io/FileWriter;
    :catchall_8f
    move-exception v8

    move-object v6, v7

    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto :goto_87

    .line 121
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    :catch_92
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    goto :goto_77
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 6
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 134
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    const-string v1, "AUTOTEST_SEQUENCE_BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_17
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 137
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 140
    :cond_23
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->writeLogEvents()V

    goto :goto_15
.end method
