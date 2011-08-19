.class public Lcom/google/android/feedback/FeedbackSession;
.super Ljava/lang/Object;
.source "FeedbackSession.java"


# static fields
.field private static final EMPTY_STRING_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private mAnrStackTraces:Ljava/lang/String;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppLabel:Ljava/lang/String;

.field private mContext:Lcom/google/android/feedback/FeedbackActivity;

.field private mEventLog:Ljava/lang/String;

.field private mGotSystemLogs:Z

.field private mInstalledPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReport:Lcom/google/android/feedback/ExtendedErrorReport;

.field private mRunningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPrivateData:Z

.field private mSystemLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackSession;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;)V
    .locals 1
    .parameter "context"
    .parameter "report"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 114
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 115
    new-instance v0, Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-direct {v0, p2}, Lcom/google/android/feedback/ExtendedErrorReport;-><init>(Landroid/app/ApplicationErrorReport;)V

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 117
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getSystemInfo()V

    .line 118
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAppInfo()V

    .line 119
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-direct {p0, v0}, Lcom/google/android/feedback/FeedbackSession;->getBuildInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 126
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 127
    invoke-virtual {p0, p2}, Lcom/google/android/feedback/FeedbackSession;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAppInfo()V

    .line 129
    return-void
.end method

.method private getAnrStackTraces()Ljava/lang/String;
    .locals 7

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v5, "/data/anr/traces.txt"

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    .end local v0           #file:Ljava/io/FileReader;
    .local v1, file:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 244
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v4, result:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 260
    if-eqz v1, :cond_0

    .line 262
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v0, v1

    .line 268
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .restart local v0       #file:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 250
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 255
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 260
    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    :goto_3
    if-eqz v0, :cond_2

    .line 262
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 268
    :cond_2
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 257
    :catch_1
    move-exception v5

    .line 260
    :goto_5
    if-eqz v0, :cond_2

    .line 262
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 263
    :catch_2
    move-exception v5

    goto :goto_4

    .line 260
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v0, :cond_3

    .line 262
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 265
    :cond_3
    :goto_7
    throw v5

    .line 263
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .restart local v0       #file:Ljava/io/FileReader;
    :catch_4
    move-exception v5

    goto :goto_4

    :catch_5
    move-exception v6

    goto :goto_7

    .line 260
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    goto :goto_6

    .line 257
    .end local v0           #file:Ljava/io/FileReader;
    .restart local v1       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1           #file:Ljava/io/FileReader;
    .restart local v0       #file:Ljava/io/FileReader;
    goto :goto_5

    .line 255
    :catch_7
    move-exception v5

    goto :goto_3
.end method

.method private getAppInfo()V
    .locals 5

    .prologue
    .line 165
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 167
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v3, v3, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 168
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 170
    .local v2, s:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #s:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_2
    return-void

    .line 173
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getBuildInfo(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 4
    .parameter "report"

    .prologue
    .line 189
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->device:Ljava/lang/String;

    .line 190
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->buildId:Ljava/lang/String;

    .line 191
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->buildType:Ljava/lang/String;

    .line 192
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->model:Ljava/lang/String;

    .line 193
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->product:Ljava/lang/String;

    .line 194
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->sdk_int:I

    .line 195
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->release:Ljava/lang/String;

    .line 196
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->incremental:Ljava/lang/String;

    .line 197
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->codename:Ljava/lang/String;

    .line 198
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->board:Ljava/lang/String;

    .line 199
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->brand:Ljava/lang/String;

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 203
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 204
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersion:I

    .line 205
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getSystemInfo()V
    .locals 6

    .prologue
    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    .line 227
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Lcom/google/android/feedback/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 228
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 230
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget v4, v4, Lcom/google/android/feedback/ExtendedErrorReport;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->getAnrStackTraces()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    .line 237
    :cond_1
    return-void
.end method

.method private send()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 314
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    .line 315
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {v0, v1}, Lcom/google/android/feedback/FeedbackActivity;->sendErrorReport(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 316
    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 154
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/feedback/FeedbackActivity;->setProgressBarVisible(Z)V

    goto :goto_0
.end method

.method private showPreview()V
    .locals 3

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const-class v2, Lcom/google/android/feedback/PreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private updateReport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 297
    .local v1, feedback:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 300
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 302
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    :goto_1
    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    :goto_2
    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    :goto_3
    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    .line 305
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    :goto_4
    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    .line 306
    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    :goto_5
    iput-object v3, v2, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 302
    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 303
    goto :goto_2

    .line 304
    :cond_3
    sget-object v3, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    goto :goto_3

    .line 305
    :cond_4
    sget-object v3, Lcom/google/android/feedback/FeedbackSession;->EMPTY_STRING_LIST:Ljava/util/List;

    goto :goto_4

    :cond_5
    move-object v3, v4

    .line 306
    goto :goto_5
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-static {p0}, Lcom/google/android/feedback/FeedbackActivity;->isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v1}, Lcom/google/android/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    iget-object v2, v2, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v2, 0x7f050003

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/feedback/FeedbackSession;->mAppLabel:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/feedback/FeedbackSession;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/feedback/FeedbackActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 147
    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v1, :cond_1

    move v1, v6

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/feedback/FeedbackSession;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method


# virtual methods
.method public getReport()Lcom/google/android/feedback/ExtendedErrorReport;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    return-void

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->showPreview()V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->send()V

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7f070000
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "systemLog"
    .parameter "eventLog"

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    .line 384
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    .line 385
    iput-object p2, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/feedback/FeedbackSession;->setProgressBarVisible(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 346
    const-string v0, "feedback.REPORT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/ExtendedErrorReport;

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 347
    const-string v0, "feedback.SYSTEM_LOG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    .line 348
    const-string v0, "feedback.EVENT_LOG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    .line 349
    const-string v0, "feedback.INSTALLED_PACKAGES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    .line 350
    const-string v0, "feedback.RUNNING_APPS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    .line 351
    const-string v0, "feedback.GET_SYSTEM_LOG_THREAD_DONE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    .line 352
    const-string v0, "feedback.SEND_PRIVATE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    .line 353
    const-string v0, "feedback.ANR_STACK_TRACES_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    .line 354
    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 332
    const-string v0, "feedback.REPORT"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 333
    const-string v0, "feedback.SYSTEM_LOG"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mSystemLog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "feedback.EVENT_LOG"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mEventLog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "feedback.INSTALLED_PACKAGES"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mInstalledPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    const-string v0, "feedback.RUNNING_APPS"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mRunningApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    const-string v0, "feedback.GET_SYSTEM_LOG_THREAD_DONE"

    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    const-string v0, "feedback.SEND_PRIVATE_DATA"

    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackSession;->mSendPrivateData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "feedback.ANR_STACK_TRACES_KEY"

    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession;->mAnrStackTraces:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateUi()V

    .line 362
    iget-boolean v0, p0, Lcom/google/android/feedback/FeedbackSession;->mGotSystemLogs:Z

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->fetch()V

    .line 365
    sget-object v0, Lcom/google/android/feedback/FeedbackSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackSession$1;

    invoke-direct {v1, p0}, Lcom/google/android/feedback/FeedbackSession$1;-><init>(Lcom/google/android/feedback/FeedbackSession;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackSession;->updateReport()V

    .line 375
    return-void
.end method
