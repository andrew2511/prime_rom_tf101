.class public Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field private final DEBUG_CONFIGURATION:Z

.field private final TAG:Ljava/lang/String;

.field private final mFile:Lcom/android/internal/os/AtomicFile;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 15
    .parameter "service"
    .parameter "systemDir"

    .prologue
    const/4 v11, 0x2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v8, "ActivityManager"

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    .line 32
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/CompatModePackages;->DEBUG_CONFIGURATION:Z

    .line 42
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 46
    new-instance v8, Lcom/android/server/am/CompatModePackages$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/CompatModePackages$1;-><init>(Lcom/android/server/am/CompatModePackages;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 61
    new-instance v8, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_2a
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 66
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 67
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 69
    .local v1, eventType:I
    :goto_3c
    if-eq v1, v11, :cond_43

    .line 70
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_3c

    .line 72
    :cond_43
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, tagName:Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 74
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 76
    :cond_53
    if-ne v1, v11, :cond_87

    .line 77
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v11, :cond_87

    .line 79
    const-string v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 80
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, pkg:Ljava/lang/String;
    if-eqz v6, :cond_87

    .line 82
    const/4 v8, 0x0

    const-string v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_2a .. :try_end_76} :catchall_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_76} :catch_94
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_76} :catch_a5

    move-result-object v3

    .line 83
    .local v3, mode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 84
    .local v4, modeInt:I
    if-eqz v3, :cond_7e

    .line 86
    :try_start_7a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_7d} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7d} :catch_94
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_a5

    move-result v4

    .line 90
    :cond_7e
    :goto_7e
    :try_start_7e
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v6           #pkg:Ljava/lang/String;
    :cond_87
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_8a} :catch_94
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8a} :catch_a5

    move-result v1

    .line 96
    const/4 v8, 0x1

    if-ne v1, v8, :cond_53

    .line 103
    :cond_8e
    if-eqz v2, :cond_93

    .line 105
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a3

    .line 110
    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #tagName:Ljava/lang/String;
    :cond_93
    :goto_93
    return-void

    .line 98
    :catch_94
    move-exception v8

    move-object v0, v8

    .line 99
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_96
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_b6

    .line 103
    if-eqz v2, :cond_93

    .line 105
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_93

    .line 106
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_a3
    move-exception v8

    goto :goto_93

    .line 100
    :catch_a5
    move-exception v8

    move-object v0, v8

    .line 101
    .local v0, e:Ljava/io/IOException;
    if-eqz v2, :cond_b0

    :try_start_a9
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b6

    .line 103
    :cond_b0
    if-eqz v2, :cond_93

    .line 105
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_a3

    goto :goto_93

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :catchall_b6
    move-exception v8

    if-eqz v2, :cond_bc

    .line 105
    :try_start_b9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bf

    .line 103
    :cond_bc
    :goto_bc
    throw v8

    .line 87
    .restart local v1       #eventType:I
    .restart local v3       #mode:Ljava/lang/String;
    .restart local v4       #modeInt:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #tagName:Ljava/lang/String;
    :catch_bd
    move-exception v8

    goto :goto_7e

    .line 106
    .end local v1           #eventType:I
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #tagName:Ljava/lang/String;
    :catch_bf
    move-exception v9

    goto :goto_bc
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .parameter "packageName"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    .local v0, flags:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 16
    .parameter "ai"
    .parameter "mode"

    .prologue
    .line 246
    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 248
    .local v8, packageName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    .line 251
    .local v3, curFlags:I
    packed-switch p2, :pswitch_data_13e

    .line 262
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown screen compat mode req #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_27
    :goto_27
    return-void

    .line 253
    :pswitch_28
    const/4 v4, 0x0

    .line 266
    .local v4, enable:Z
    :goto_29
    move v7, v3

    .line 267
    .local v7, newFlags:I
    if-eqz v4, :cond_f2

    .line 268
    or-int/lit8 v7, v7, 0x2

    .line 273
    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 274
    .local v2, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_57

    .line 275
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; compatibility never needed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v7, 0x0

    .line 279
    :cond_57
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 280
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; compatibility always needed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v7, 0x0

    .line 285
    :cond_7c
    if-eq v7, v3, :cond_27

    .line 286
    if-eqz v7, :cond_f6

    .line 287
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_89
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 295
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 297
    .local v6, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2710

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 303
    .local v9, starting:Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int v5, v10, v11

    .local v5, i:I
    :goto_b7
    if-ltz v5, :cond_fc

    .line 304
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 305
    .local v0, a:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 306
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 307
    if-eqz v9, :cond_e1

    if-ne v0, v9, :cond_e1

    iget-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v10, :cond_e1

    .line 308
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v11, 0x100

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 303
    :cond_e1
    add-int/lit8 v5, v5, -0x1

    goto :goto_b7

    .line 256
    .end local v0           #a:Lcom/android/server/am/ActivityRecord;
    .end local v2           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v4           #enable:Z
    .end local v5           #i:I
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newFlags:I
    .end local v9           #starting:Lcom/android/server/am/ActivityRecord;
    :pswitch_e4
    const/4 v4, 0x1

    .line 257
    .restart local v4       #enable:Z
    goto/16 :goto_29

    .line 259
    .end local v4           #enable:Z
    :pswitch_e7
    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_ef

    const/4 v10, 0x1

    move v4, v10

    .line 260
    .restart local v4       #enable:Z
    :goto_ed
    goto/16 :goto_29

    .line 259
    .end local v4           #enable:Z
    :cond_ef
    const/4 v10, 0x0

    move v4, v10

    goto :goto_ed

    .line 270
    .restart local v4       #enable:Z
    .restart local v7       #newFlags:I
    :cond_f2
    and-int/lit8 v7, v7, -0x3

    goto/16 :goto_2e

    .line 289
    .restart local v2       #ci:Landroid/content/res/CompatibilityInfo;
    :cond_f6
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 315
    .restart local v5       #i:I
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v9       #starting:Lcom/android/server/am/ActivityRecord;
    :cond_fc
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int v5, v10, v11

    :goto_107
    if-ltz v5, :cond_12a

    .line 316
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 317
    .local v1, app:Lcom/android/server/am/ProcessRecord;
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11e

    .line 315
    :cond_11b
    :goto_11b
    add-int/lit8 v5, v5, -0x1

    goto :goto_107

    .line 321
    :cond_11e
    :try_start_11e
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_11b

    .line 324
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v8, v2}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_127} :catch_128

    goto :goto_11b

    .line 326
    :catch_128
    move-exception v10

    goto :goto_11b

    .line 330
    .end local v1           #app:Lcom/android/server/am/ProcessRecord;
    :cond_12a
    if-eqz v9, :cond_27

    .line 331
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 334
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_27

    .line 251
    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_e4
        :pswitch_e7
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 6
    .parameter "ai"

    .prologue
    .line 147
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    :goto_19
    invoke-direct {v0, p1, v1, v2, v3}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 151
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    return-object v0

    .line 147
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .parameter "ai"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_26

    move v0, v5

    .line 156
    .local v0, enabled:Z
    :goto_d
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 159
    .local v1, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 160
    const/4 v2, -0x2

    .line 165
    :goto_25
    return v2

    .end local v0           #enabled:Z
    .end local v1           #info:Landroid/content/res/CompatibilityInfo;
    :cond_26
    move v0, v4

    .line 155
    goto :goto_d

    .line 162
    .restart local v0       #enabled:Z
    .restart local v1       #info:Landroid/content/res/CompatibilityInfo;
    :cond_28
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 163
    const/4 v2, -0x1

    goto :goto_25

    .line 165
    :cond_30
    if-eqz v0, :cond_34

    move v2, v5

    goto :goto_25

    :cond_34
    move v2, v4

    goto :goto_25
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 171
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_c
    return v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .registers 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 205
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 206
    const/4 v1, -0x3

    .line 208
    :goto_c
    return v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_c
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_13

    move-result-object v0

    .line 226
    :goto_a
    if-nez v0, :cond_e

    .line 227
    const/4 v1, -0x3

    .line 229
    :goto_d
    return v1

    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_d

    .line 224
    :catch_13
    move-exception v1

    goto :goto_a
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 11
    .parameter "packageName"
    .parameter "updated"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_46

    move-result-object v0

    .line 127
    :goto_c
    if-nez v0, :cond_f

    .line 144
    :cond_e
    :goto_e
    return-void

    .line 130
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 131
    .local v1, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_44

    move v2, v6

    .line 134
    .local v2, mayCompat:Z
    :goto_20
    if-eqz p2, :cond_e

    .line 137
    if-nez v2, :cond_e

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 138
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 141
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e

    .end local v2           #mayCompat:Z
    .end local v3           #msg:Landroid/os/Message;
    :cond_44
    move v2, v7

    .line 131
    goto :goto_20

    .line 125
    .end local v1           #ci:Landroid/content/res/CompatibilityInfo;
    :catch_46
    move-exception v4

    goto :goto_c
.end method

.method saveCompatModes()V
    .registers 22

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 342
    :try_start_7
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 343
    .local v14, pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_123

    .line 345
    const/4 v8, 0x0

    .line 348
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 349
    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 350
    .local v12, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v18, "utf-8"

    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 351
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    const-string v18, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v19, 0x1

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 353
    const/16 v18, 0x0

    const-string v19, "compat-packages"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 356
    .local v15, pm:Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v16, v0

    .line 357
    .local v16, screenLayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v17, v0

    .line 358
    .local v17, smallestScreenWidthDp:I
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 359
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_87
    :goto_87
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_126

    .line 360
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 361
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 362
    .local v13, pkg:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_a2} :catch_105

    move-result v11

    .line 363
    .local v11, mode:I
    if-eqz v11, :cond_87

    .line 366
    const/4 v5, 0x0

    .line 368
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x0

    :try_start_a8
    move-object v0, v15

    move-object v1, v13

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_af} :catch_142
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_105

    move-result-object v5

    .line 371
    :goto_b0
    if-eqz v5, :cond_87

    .line 374
    :try_start_b2
    new-instance v9, Landroid/content/res/CompatibilityInfo;

    const/16 v18, 0x0

    move-object v0, v9

    move-object v1, v5

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 376
    .local v9, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v9}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v18

    if-nez v18, :cond_87

    .line 379
    invoke-virtual {v9}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v18

    if-nez v18, :cond_87

    .line 382
    const/16 v18, 0x0

    const-string v19, "pkg"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v13

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    const/16 v18, 0x0

    const-string v19, "mode"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    const/16 v18, 0x0

    const-string v19, "pkg"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_104} :catch_105

    goto :goto_87

    .line 392
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9           #info:Landroid/content/res/CompatibilityInfo;
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v11           #mode:I
    .end local v12           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v13           #pkg:Ljava/lang/String;
    .end local v15           #pm:Landroid/content/pm/IPackageManager;
    .end local v16           #screenLayout:I
    .end local v17           #smallestScreenWidthDp:I
    :catch_105
    move-exception v18

    move-object/from16 v6, v18

    .line 393
    .local v6, e1:Ljava/io/IOException;
    const-string v18, "ActivityManager"

    const-string v19, "Error writing compat packages"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    if-eqz v8, :cond_122

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 398
    .end local v6           #e1:Ljava/io/IOException;
    :cond_122
    :goto_122
    return-void

    .line 343
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v14           #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_123
    move-exception v19

    :try_start_124
    monitor-exit v18
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v19

    .line 388
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v12       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14       #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15       #pm:Landroid/content/pm/IPackageManager;
    .restart local v16       #screenLayout:I
    .restart local v17       #smallestScreenWidthDp:I
    :cond_126
    const/16 v18, 0x0

    :try_start_128
    const-string v19, "compat-packages"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_141} :catch_105

    goto :goto_122

    .line 369
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #mode:I
    .restart local v13       #pkg:Ljava/lang/String;
    :catch_142
    move-exception v18

    goto/16 :goto_b0
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .registers 5
    .parameter "ask"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 183
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_10

    .line 184
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 186
    :cond_10
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 213
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_13

    .line 214
    const-string v1, "ActivityManager"

    const-string v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_12
    return-void

    .line 217
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_12
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 9
    .parameter "packageName"
    .parameter "ask"

    .prologue
    const/4 v5, 0x1

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, curFlags:I
    if-eqz p2, :cond_2a

    and-int/lit8 v3, v0, -0x2

    move v2, v3

    .line 191
    .local v2, newFlags:I
    :goto_a
    if-eq v0, v2, :cond_29

    .line 192
    if-eqz v2, :cond_2e

    .line 193
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 199
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    .end local v1           #msg:Landroid/os/Message;
    :cond_29
    return-void

    .line 190
    .end local v2           #newFlags:I
    :cond_2a
    or-int/lit8 v3, v0, 0x1

    move v2, v3

    goto :goto_a

    .line 195
    .restart local v2       #newFlags:I
    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_29

    move-result-object v0

    .line 238
    :goto_a
    if-nez v0, :cond_25

    .line 239
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_24
    return-void

    .line 242
    :cond_25
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_24

    .line 236
    :catch_29
    move-exception v1

    goto :goto_a
.end method
