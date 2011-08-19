.class public Lcom/google/android/gm/provider/AttachmentManager;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;,
        Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;
    }
.end annotation


# static fields
.field public static ATTACHMENT_FROM:Ljava/lang/String;

.field private static final sAccountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDownloadManager:Landroid/app/DownloadManager;

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

.field private final mUrls:Lcom/google/android/gm/provider/Urls;

.field private mUsedSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "attachment_from_sender"

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sRandom:Ljava/util/Random;

    .line 139
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Urls;Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter "urls"
    .parameter "restrictedMailEngine"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    iput-object p4, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 157
    iput-object p5, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 159
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 161
    invoke-static {}, Lcom/google/android/gm/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mObservers:Ljava/util/List;

    .line 162
    invoke-direct {p0, p2}, Lcom/google/android/gm/provider/AttachmentManager;->getUsedSpacePerAccount(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    new-instance v1, Lcom/google/android/gm/provider/AttachmentManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/AttachmentManager$1;-><init>(Lcom/google/android/gm/provider/AttachmentManager;)V

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    new-instance v1, Lcom/google/android/gm/provider/AttachmentManager$2;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/AttachmentManager$2;-><init>(Lcom/google/android/gm/provider/AttachmentManager;)V

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/AttachmentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gm/provider/AttachmentManager;->maybeStartNextAttachmentDownload()V

    return-void
.end method

.method public static canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1179
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1182
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1183
    if-nez v0, :cond_0

    move v0, v5

    .line 1191
    :goto_0
    return v0

    .line 1185
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 1186
    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1188
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v1, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_3

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v5

    .line 1191
    goto :goto_0
.end method

.method private copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    if-eqz p9, :cond_5

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1056
    :goto_0
    move-object v0, v4

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->getUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1061
    :try_start_0
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1063
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v18, v5

    .line 1067
    :goto_1
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1081
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1082
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 1083
    const/4 v7, 0x0

    move/from16 v20, v7

    .line 1085
    :goto_2
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 1086
    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 1087
    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object v1, v6

    move v2, v8

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1089
    add-int v8, v20, v7

    .line 1091
    if-nez p9, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    move-wide v9, v0

    int-to-long v11, v7

    add-long/2addr v9, v11

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 1097
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/32 v11, 0x36ee80

    cmp-long v7, v9, v11

    if-lez v7, :cond_7

    .line 1098
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Timed out reading attachment data."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1127
    :catch_0
    move-exception v4

    .line 1129
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot write to file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1132
    const/16 v14, 0x3e8

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v16, p14

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    .line 1137
    :cond_1
    :goto_3
    if-eqz p14, :cond_2

    :try_start_2
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p11, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1146
    :cond_2
    :goto_4
    if-eqz v18, :cond_3

    .line 1147
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 1149
    :cond_3
    if-eqz v19, :cond_4

    .line 1150
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1154
    :cond_4
    :goto_5
    return-void

    .line 1053
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->getCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1065
    :cond_6
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static/range {p13 .. p13}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v18, v4

    goto/16 :goto_1

    .line 1068
    :catch_1
    move-exception v4

    .line 1069
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v14, 0x3e8

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v16, p14

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    goto :goto_5

    .line 1073
    :catch_2
    move-exception v4

    .line 1074
    const-string v4, "Gmail"

    const-string v5, "This maybe called from tests where we don\'t have Download Manager."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/16 v14, 0xc8

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v16, p14

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V

    goto :goto_5

    :cond_7
    move/from16 v20, v8

    .line 1100
    goto/16 :goto_2

    .line 1102
    :cond_8
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1103
    const/16 v14, 0xc8

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v16, p14

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1107
    if-eqz p9, :cond_1

    .line 1108
    if-nez p16, :cond_9

    move-object/from16 v4, p17

    .line 1110
    :goto_6
    if-nez v4, :cond_a

    move-object/from16 v6, p10

    .line 1114
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v4, v0

    const/4 v7, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v10, v0

    const/4 v12, 0x0

    move-object/from16 v5, p10

    move-object/from16 v8, p15

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v12}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1123
    :goto_8
    :try_start_7
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1108
    :cond_9
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p16, v4, v5

    move-object/from16 v0, p18

    move-object v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 1118
    :catch_3
    move-exception v4

    .line 1121
    const-string v5, "Gmail"

    const-string v6, "Failed to save download to Downloads app."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    .line 1141
    :catch_4
    move-exception v4

    .line 1142
    const-string v4, "Gmail"

    const-string v5, "This maybe called from tests where we don\'t have Download Manager."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1152
    :catch_5
    move-exception v4

    goto/16 :goto_5

    :cond_a
    move-object v6, v4

    goto :goto_7
.end method

.method private deleteAttachment(JLjava/lang/String;)V
    .locals 6
    .parameter "attachmentId"
    .parameter "fileUri"

    .prologue
    .line 623
    if-eqz p3, :cond_0

    .line 624
    new-instance v0, Ljava/io/File;

    invoke-static {p3}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method private deleteAttachments(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, attachmentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, fileUris:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 638
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    .local v1, fileUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 640
    new-instance v6, Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 645
    .end local v1           #fileUri:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 646
    .local v4, numDownloads:I
    if-lez v4, :cond_4

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v5, whereSb:Ljava/lang/StringBuilder;
    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 651
    if-lez v2, :cond_2

    .line 652
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 658
    .local v0, attachmentId:Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    .end local v0           #attachmentId:Ljava/lang/Long;
    :cond_3
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    iget-object v6, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "attachments"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    .end local v2           #i:I
    .end local v5           #whereSb:Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method public static getAccountFromDownloadId(J)Ljava/lang/String;
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 148
    sget-object v0, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPathFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileUri"

    .prologue
    .line 301
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 304
    :cond_0
    return-object p0
.end method

.method private static getUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"
    .parameter "fileName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 988
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 989
    .local v1, dotPosition:I
    const-string v2, ""

    .line 990
    .local v2, extension:Ljava/lang/String;
    if-eq v1, v8, :cond_0

    .line 991
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 992
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 997
    :cond_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_1

    .line 998
    sget-char v7, Ljava/io/File;->separatorChar:C

    const/16 v8, 0x5f

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1002
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1004
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1010
    :cond_2
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1011
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1014
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, fullFileName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v3

    .line 1041
    .end local v3           #fullFileName:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1005
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v9

    .line 1006
    goto :goto_0

    .line 1018
    .restart local v3       #fullFileName:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1031
    const/4 v6, 0x1

    .line 1032
    .local v6, sequence:I
    const/4 v5, 0x1

    .local v5, magnitude:I
    :goto_1
    const v7, 0x3b9aca00

    if-ge v5, v7, :cond_8

    .line 1033
    const/4 v4, 0x0

    .local v4, iteration:I
    :goto_2
    const/16 v7, 0x9

    if-ge v4, v7, :cond_7

    .line 1034
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v3

    .line 1036
    goto :goto_0

    .line 1038
    :cond_6
    sget-object v7, Lcom/google/android/gm/provider/AttachmentManager;->sRandom:Ljava/util/Random;

    invoke-virtual {v7, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    .line 1033
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1032
    :cond_7
    mul-int/lit8 v5, v5, 0xa

    goto :goto_1

    .end local v4           #iteration:I
    :cond_8
    move-object v7, v9

    .line 1041
    goto :goto_0
.end method

.method private getUsedSpacePerAccount(Ljava/lang/String;)J
    .locals 9
    .parameter "account"

    .prologue
    .line 284
    const-wide/16 v5, 0x0

    .line 285
    .local v5, usedSpace:J
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/AttachmentManager;->getCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, accountDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 288
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-wide v5
.end method

.method private static isDownloadIdValid(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 264
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloadStillPresent(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileUri"

    .prologue
    .line 613
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isLowSpace()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3e80

    .line 313
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    .line 315
    .local v5, totalSpace:J
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 316
    .local v7, usableSpace:J
    const/4 v2, 0x1

    .line 319
    .local v2, numberOfAccounts:I
    :try_start_0
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    array-length v2, v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    long-to-float v9, v5

    mul-float/2addr v9, v11

    int-to-float v10, v2

    div-float/2addr v9, v10

    float-to-long v3, v9

    .line 330
    .local v3, perAccountSpace:J
    iget-wide v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    cmp-long v9, v9, v3

    if-ltz v9, :cond_0

    .line 331
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 332
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/google/android/gm/provider/AttachmentManager;->getUsedSpacePerAccount(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    .line 335
    :cond_0
    long-to-float v9, v7

    long-to-float v10, v5

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    iget-wide v9, p0, Lcom/google/android/gm/provider/AttachmentManager;->mUsedSpace:J

    cmp-long v9, v9, v3

    if-ltz v9, :cond_1

    const/4 v9, 0x1

    .end local v3           #perAccountSpace:J
    :goto_0
    return v9

    .line 320
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 321
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "Gmail"

    const-string v10, "This maybe called from tests where we don\'t have Account Manager."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v12

    .line 322
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #perAccountSpace:J
    :cond_1
    move v9, v12

    .line 335
    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 253
    const/16 v0, 0xc8

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusRunning(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 232
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 246
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusValid(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 218
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartNextAttachmentDownload()V
    .locals 11

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM attachments WHERE status == ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "192"

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    .line 830
    .local v9, numDownloading:J
    const-wide/16 v3, 0x0

    cmp-long v0, v9, v3

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/provider/AttachmentManager;->isLowSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 850
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 852
    :goto_0
    return-void

    .line 837
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "downloadId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "priority DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 840
    .local v8, downloadablesCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 842
    .local v1, attachmentId:J
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 845
    .end local v1           #attachmentId:J
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 848
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 850
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 850
    .end local v8           #downloadablesCursor:Landroid/database/Cursor;
    .end local v9           #numDownloading:J
    :catchall_1
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 719
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? AND saveToSd = ?"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x1

    aput-object p3, v4, v2

    const/4 v2, 0x2

    invoke-virtual {p4}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x3

    if-eqz p5, :cond_0

    const-wide/16 v6, 0x1

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v2, p6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 724
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8

    .line 719
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private notifyDownloadFinished(JJLjava/lang/String;ZZLjava/lang/String;)V
    .locals 10
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "saveToSd"
    .parameter "success"
    .parameter "fileUri"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mObservers:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;

    .local v0, observer:Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 209
    invoke-interface/range {v0 .. v8}, Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;->onDownloadFinished(JJLjava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0           #observer:Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;
    :cond_0
    return-void
.end method

.method private onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    .locals 13
    .parameter "attachmentId"
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "status"
    .parameter "fileUri"
    .parameter "shouldNotifyObserver"

    .prologue
    .line 912
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 913
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "downloadId"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    if-eqz p11, :cond_0

    .line 915
    const-string v3, "filename"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    const-string v3, "status"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    iget-object v3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attachments"

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v12, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    sget-object v3, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p12, :cond_1

    .line 922
    invoke-static/range {p10 .. p10}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v10

    move-object v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v11, p11

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/provider/AttachmentManager;->notifyDownloadFinished(JJLjava/lang/String;ZZLjava/lang/String;)V

    .line 927
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v10

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v3 .. v10}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->onDownloadFinished(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)V

    .line 931
    iget-object v3, p0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    new-instance v4, Lcom/google/android/gm/provider/AttachmentManager$4;

    invoke-direct {v4, p0}, Lcom/google/android/gm/provider/AttachmentManager$4;-><init>(Lcom/google/android/gm/provider/AttachmentManager;)V

    invoke-interface {v3, v4}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 936
    return-void
.end method

.method private static requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;
    .locals 3
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"

    .prologue
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conversationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", partId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", saveToSd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, requestDescription:Ljava/lang/String;
    return-object v0
.end method

.method private startAttachmentDownloadInDownloadManager(JJZ)V
    .locals 32
    .parameter "attachmentId"
    .parameter "copyAttachmentId"
    .parameter "wifiOnly"

    .prologue
    .line 384
    const/16 v5, 0x8

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "messages_conversation"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "messages_messageId"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "messages_partId"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "originExtras"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string v6, "downloadedRendition"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "saveToSd"

    aput-object v6, v7, v5

    const/4 v5, 0x6

    const-string v6, "filename"

    aput-object v6, v7, v5

    const/4 v5, 0x7

    const-string v6, "automatic"

    aput-object v6, v7, v5

    .line 387
    .local v7, attachmentProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "attachments"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 390
    .local v15, attachmentCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find attachment "

    .end local v7           #attachmentProjection:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 478
    :goto_0
    return-void

    .line 395
    .restart local v7       #attachmentProjection:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 396
    .local v8, conversationId:J
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 397
    .local v10, messageId:J
    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 398
    .local v12, partId:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 399
    .local v23, originExtras:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v13

    .line 401
    .local v13, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    const/4 v5, 0x5

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move v14, v5

    .line 402
    .local v14, saveToSd:Z
    :goto_1
    const/4 v5, 0x6

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 403
    .local v21, fileName:Ljava/lang/String;
    const/4 v5, 0x7

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 405
    .local v17, automatic:Z
    :goto_2
    invoke-static/range {v8 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v26

    .line 407
    .local v26, requestDescription:Ljava/lang/String;
    const-string v5, "Gmail"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start downloading attachment "

    .end local v7           #attachmentProjection:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    sget-object v5, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    if-eq v13, v5, :cond_4

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 414
    .local v22, fullVersion:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->getRequestVersion()I

    move-result v6

    const/16 v7, 0x60

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    move v3, v7

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/Urls;->getFetchAttachmentUri(ILjava/lang/String;IZ)Ljava/net/URI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v30

    .line 417
    .local v30, uri:Ljava/net/URI;
    const/16 v16, 0x0

    .line 419
    .local v16, authToken:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->getAuthToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 424
    :goto_4
    if-nez v16, :cond_5

    .line 428
    :try_start_3
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication failed for attachment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 401
    .end local v14           #saveToSd:Z
    .end local v16           #authToken:Ljava/lang/String;
    .end local v17           #automatic:Z
    .end local v21           #fileName:Ljava/lang/String;
    .end local v22           #fullVersion:Z
    .end local v26           #requestDescription:Ljava/lang/String;
    .end local v30           #uri:Ljava/net/URI;
    .restart local v7       #attachmentProjection:[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_1

    .line 403
    .restart local v14       #saveToSd:Z
    .restart local v21       #fileName:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_2

    .line 413
    .end local v7           #attachmentProjection:[Ljava/lang/String;
    .restart local v17       #automatic:Z
    .restart local v26       #requestDescription:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    move/from16 v22, v5

    goto :goto_3

    .line 433
    .restart local v16       #authToken:Ljava/lang/String;
    .restart local v22       #fullVersion:Z
    .restart local v30       #uri:Ljava/net/URI;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Urls;->getCookieString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 435
    .local v18, cookieHeader:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v24

    .line 436
    .local v24, originalUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v29

    .line 437
    .local v29, rules:Lcom/google/android/common/http/UrlRules;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v28

    .line 438
    .local v28, rule:Lcom/google/android/common/http/UrlRules$Rule;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 440
    .local v27, rewrittenUrl:Ljava/lang/String;
    if-nez v27, :cond_6

    .line 441
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Abandon download of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it is blocked by rules."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v31, values:Landroid/content/ContentValues;
    const-string v5, "status"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "attachments"

    const-string v7, "_id = ? OR _id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    .end local v8           #conversationId:J
    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .end local v10           #messageId:J
    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v31

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 476
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 454
    .end local v31           #values:Landroid/content/ContentValues;
    .restart local v8       #conversationId:J
    .restart local v10       #messageId:J
    :cond_6
    :try_start_5
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v6, "Cookie"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v25

    .line 456
    .local v25, request:Landroid/app/DownloadManager$Request;
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_7

    .line 457
    const/4 v5, 0x2

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 462
    :cond_7
    if-nez p5, :cond_8

    if-eqz v17, :cond_9

    if-eqz v22, :cond_9

    .line 463
    :cond_8
    const/4 v5, 0x2

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 466
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v19

    .line 467
    .local v19, downloadId:J
    sget-object v5, Lcom/google/android/gm/provider/AttachmentManager;->sAccountsMap:Ljava/util/Map;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mAccount:Ljava/lang/String;

    move-object v7, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .restart local v31       #values:Landroid/content/ContentValues;
    const-string v5, "downloadId"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    const-string v5, "status"

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "attachments"

    const-string v7, "_id = ? OR _id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    .end local v8           #conversationId:J
    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .end local v10           #messageId:J
    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v31

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 476
    .end local v12           #partId:Ljava/lang/String;
    .end local v13           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v14           #saveToSd:Z
    .end local v16           #authToken:Ljava/lang/String;
    .end local v17           #automatic:Z
    .end local v18           #cookieHeader:Ljava/lang/String;
    .end local v19           #downloadId:J
    .end local v21           #fileName:Ljava/lang/String;
    .end local v22           #fullVersion:Z
    .end local v23           #originExtras:Ljava/lang/String;
    .end local v24           #originalUrl:Ljava/lang/String;
    .end local v25           #request:Landroid/app/DownloadManager$Request;
    .end local v26           #requestDescription:Ljava/lang/String;
    .end local v27           #rewrittenUrl:Ljava/lang/String;
    .end local v28           #rule:Lcom/google/android/common/http/UrlRules$Rule;
    .end local v29           #rules:Lcom/google/android/common/http/UrlRules;
    .end local v30           #uri:Ljava/net/URI;
    .end local v31           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 420
    .restart local v8       #conversationId:J
    .restart local v10       #messageId:J
    .restart local v12       #partId:Ljava/lang/String;
    .restart local v13       #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .restart local v14       #saveToSd:Z
    .restart local v16       #authToken:Ljava/lang/String;
    .restart local v17       #automatic:Z
    .restart local v21       #fileName:Ljava/lang/String;
    .restart local v22       #fullVersion:Z
    .restart local v23       #originExtras:Ljava/lang/String;
    .restart local v26       #requestDescription:Ljava/lang/String;
    .restart local v30       #uri:Ljava/net/URI;
    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method


# virtual methods
.method public cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I
    .locals 20
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "rendition"
    .parameter "saveToSd"

    .prologue
    .line 790
    const-string v4, "Gmail"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    invoke-static/range {p1 .. p7}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v18

    .line 793
    .local v18, requestDescription:Ljava/lang/String;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelDownloadRequest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v18           #requestDescription:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x5

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v10, v4

    const/4 v4, 0x1

    const-string v5, "downloadId"

    aput-object v5, v10, v4

    const/4 v4, 0x2

    const-string v5, "automatic"

    aput-object v5, v10, v4

    const/4 v4, 0x3

    const-string v5, "status"

    aput-object v5, v10, v4

    const/4 v4, 0x4

    const-string v5, "filename"

    aput-object v5, v10, v4

    move-object/from16 v4, p0

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 800
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 801
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 802
    .local v11, attachmentId:J
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 803
    .local v15, downloadId:J
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v13, v4

    .line 804
    .local v13, automatic:Z
    :goto_0
    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 805
    .local v19, status:I
    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 808
    .local v17, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v4, v0

    if-eqz v4, :cond_1

    invoke-static/range {v15 .. v16}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadIdValid(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v15, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    .line 811
    :cond_1
    move-object/from16 v0, p0

    move-wide v1, v11

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/AttachmentManager;->deleteAttachment(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    const/4 v4, 0x1

    .line 815
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 817
    .end local v11           #attachmentId:J
    .end local v13           #automatic:Z
    .end local v15           #downloadId:J
    .end local v17           #fileName:Ljava/lang/String;
    .end local v19           #status:I
    :goto_1
    return v4

    .line 803
    .restart local v11       #attachmentId:J
    .restart local v15       #downloadId:J
    :cond_2
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 815
    .end local v11           #attachmentId:J
    .end local v15           #downloadId:J
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 817
    const/4 v4, 0x0

    goto :goto_1

    .line 815
    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public enqueueAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZZI)V
    .locals 17
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "automatic"
    .parameter "priority"

    .prologue
    .line 359
    const-wide/16 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gm/provider/AttachmentManager;->recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J

    move-result-wide v14

    .line 362
    .local v14, attachmentId:J
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v6, v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v16

    .line 365
    .local v16, requestDescription:Ljava/lang/String;
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAttachment attachmentId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v16           #requestDescription:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mRestrictedMailEngine:Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;

    move-object v2, v0

    new-instance v3, Lcom/google/android/gm/provider/AttachmentManager$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager$3;-><init>(Lcom/google/android/gm/provider/AttachmentManager;)V

    invoke-interface {v2, v3}, Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method public handleDownloadManagerIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 733
    const-string v0, "extra_download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 734
    .local v1, downloadId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-nez v0, :cond_0

    .line 735
    const-string v0, "Gmail"

    const-string v1, "Received notification from DownloadManager with invalid download id"

    .end local v1           #downloadId:J
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_0
    return-void

    .line 739
    .restart local v1       #downloadId:J
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v11

    .line 740
    .local v11, query:Landroid/app/DownloadManager$Query;
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v9

    .line 743
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    const-string v0, "status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 745
    .local v8, columnStatus:I
    const-string v0, "reason"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 746
    .local v7, columnError:I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 747
    .local v12, status:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 748
    .local v10, error:I
    const/4 v3, 0x0

    .line 750
    .local v3, internalStatus:I
    sparse-switch v12, :sswitch_data_0

    .line 759
    :goto_1
    sget-object v0, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 761
    .local v6, attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;->onDownloadCompletedByDownloadManager(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    .end local v3           #internalStatus:I
    .end local v6           #attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #columnError:I
    .end local v8           #columnStatus:I
    .end local v10           #error:I
    .end local v12           #status:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 752
    .restart local v3       #internalStatus:I
    .restart local v7       #columnError:I
    .restart local v8       #columnStatus:I
    .restart local v10       #error:I
    .restart local v12       #status:I
    :sswitch_0
    const/16 v3, 0xc8

    .line 753
    goto :goto_1

    .line 755
    :sswitch_1
    move v3, v10

    goto :goto_1

    .line 765
    .end local v3           #internalStatus:I
    .end local v7           #columnError:I
    .end local v8           #columnStatus:I
    .end local v10           #error:I
    .end local v12           #status:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 750
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method onDownloadCompletedByDownloadManager(JILjava/lang/String;Ljava/lang/String;)V
    .locals 45
    .parameter "downloadId"
    .parameter "status"
    .parameter "attachmentFrom"
    .parameter "attachmentFromSender"

    .prologue
    .line 856
    const/16 v3, 0x9

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "attachments._id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "messages_conversation"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "messages_messageId"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "messages_partId"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "desiredRendition"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "saveToSd"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "filename"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    const-string v4, "mimeType"

    aput-object v4, v5, v3

    const/16 v3, 0x8

    const-string v4, "fromAddress"

    aput-object v4, v5, v3

    .line 860
    .local v5, attachmentProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "attachments, messages"

    const-string v6, "downloadId = ? AND attachments.messages_messageId = messages.messageId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "saveToSd ASC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 864
    .local v43, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 865
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No attachments found with downloadId"

    .end local v5           #attachmentProjection:[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    :goto_0
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 869
    const/4 v3, 0x0

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 870
    .local v14, attachmentId:J
    const/4 v3, 0x1

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 871
    .local v6, conversationId:J
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 872
    .local v8, messageId:J
    const/4 v3, 0x3

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 873
    .local v10, partId:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v11

    .line 875
    .local v11, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    const/4 v3, 0x5

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v12, v3

    .line 876
    .local v12, saveToSd:Z
    :goto_1
    const/4 v3, 0x6

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 877
    .local v23, fileName:Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 878
    .local v28, mimeType:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, v43

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 880
    .local v29, sender:Ljava/lang/String;
    invoke-static/range {v6 .. v12}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v44

    .line 882
    .local v44, requestDescription:Ljava/lang/String;
    const-string v3, "Gmail"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download finished with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 889
    const/16 v26, 0x0

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->isLast()Z

    move-result v27

    move-object/from16 v13, p0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v24, p1

    move-object/from16 v30, p4

    move-object/from16 v31, p5

    invoke-direct/range {v13 .. v31}, Lcom/google/android/gm/provider/AttachmentManager;->copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 900
    .end local v6           #conversationId:J
    .end local v8           #messageId:J
    .end local v10           #partId:Ljava/lang/String;
    .end local v11           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v12           #saveToSd:Z
    .end local v14           #attachmentId:J
    .end local v23           #fileName:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #sender:Ljava/lang/String;
    .end local v44           #requestDescription:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    throw v3

    .line 875
    .restart local v6       #conversationId:J
    .restart local v8       #messageId:J
    .restart local v10       #partId:Ljava/lang/String;
    .restart local v11       #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .restart local v14       #attachmentId:J
    :cond_2
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 894
    .restart local v12       #saveToSd:Z
    .restart local v23       #fileName:Ljava/lang/String;
    .restart local v28       #mimeType:Ljava/lang/String;
    .restart local v29       #sender:Ljava/lang/String;
    .restart local v44       #requestDescription:Ljava/lang/String;
    :cond_3
    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v30, p0

    move-wide/from16 v31, v14

    move-wide/from16 v33, v6

    move-wide/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v39, v12

    move/from16 v40, p3

    :try_start_1
    invoke-direct/range {v30 .. v42}, Lcom/google/android/gm/provider/AttachmentManager;->onAttachmentDownloadFinished(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 900
    .end local v6           #conversationId:J
    .end local v8           #messageId:J
    .end local v10           #partId:Ljava/lang/String;
    .end local v11           #rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    .end local v12           #saveToSd:Z
    .end local v14           #attachmentId:J
    .end local v23           #fileName:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #sender:Ljava/lang/String;
    .end local v44           #requestDescription:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 902
    return-void
.end method

.method public openAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 673
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v5, v0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, description:Ljava/lang/String;
    const-string v1, "Gmail"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AttachmentManager.openAttachment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "filename"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v7, v1

    .line 680
    .local v7, projection:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 683
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v4, v0

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 685
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 686
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 687
    .local v13, status:I
    invoke-static {v13}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 688
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Download not complete or not successful."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    .end local v13           #status:I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_1

    .line 711
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 691
    .restart local v13       #status:I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentManager;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 695
    .local v12, fileName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 697
    .local v8, binderToken:J
    :try_start_2
    const-string v1, "Gmail"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 703
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 710
    if-eqz v10, :cond_4

    .line 711
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    .line 703
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 706
    .end local v8           #binderToken:J
    .end local v12           #fileName:Ljava/lang/String;
    .end local v13           #status:I
    :cond_5
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment is not requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Attachment not requested."

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method purgeOldAttachments()V
    .locals 15

    .prologue
    .line 942
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "Gmail"

    const-string v1, "Purging old attachments."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Db should not be locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 953
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 954
    .local v10, attachmentIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 955
    .local v13, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "filename"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "saveToSd"

    aput-object v4, v2, v3

    const-string v3, "(NOT automatic AND status != ?) OR messages_messageId NOT IN (SELECT messageId FROM messages WHERE joinedAttachmentInfos != \'\')"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 961
    .local v11, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 963
    .local v8, attachmentId:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 964
    .local v12, fileName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v14, v0

    .line 965
    .local v14, saveToSd:Z
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    if-eqz v14, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 969
    .end local v8           #attachmentId:J
    .end local v12           #fileName:Ljava/lang/String;
    .end local v14           #saveToSd:Z
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 975
    .end local v10           #attachmentIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 964
    .restart local v8       #attachmentId:J
    .restart local v10       #attachmentIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v13       #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    .restart local v14       #saveToSd:Z
    :cond_3
    move-object v0, v12

    .line 966
    goto :goto_2

    .line 969
    .end local v8           #attachmentId:J
    .end local v12           #fileName:Ljava/lang/String;
    .end local v14           #saveToSd:Z
    :cond_4
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 971
    invoke-direct {p0, v10, v13}, Lcom/google/android/gm/provider/AttachmentManager;->deleteAttachments(Ljava/util/List;Ljava/util/List;)V

    .line 973
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 975
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 977
    return-void
.end method

.method public queryAndStartDownloadingAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "saveToSd"
    .parameter "projection"

    .prologue
    .line 511
    const-string v5, "Gmail"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 512
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v9, v0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/google/android/gm/provider/AttachmentManager;->requestDescription(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Ljava/lang/String;

    move-result-object v33

    .line 514
    .local v33, requestDescription:Ljava/lang/String;
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryAndStartDownloadingAttachment for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v33           #requestDescription:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "downloadId"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "status"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "filename"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string v6, "saveToSd"

    aput-object v6, v7, v5

    .line 521
    .local v7, privateProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "attachments"

    const-string v8, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 526
    .local v31, privateCursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v27, v0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v27, v5

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v27, v5

    .line 527
    .local v27, attachmentIds:[Ljava/lang/Long;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 528
    .local v28, downloadIds:[J
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_1

    .line 529
    .local v34, statuses:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v29, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v29, v5

    .line 531
    .local v29, fileUris:[Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    const/4 v5, 0x4

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 534
    .local v36, version:I
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v27, v36

    .line 535
    const/4 v5, 0x1

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v28, v36

    .line 536
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v34, v36

    .line 537
    const/4 v5, 0x3

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v29, v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 540
    .end local v36           #version:I
    :catchall_0
    move-exception v5

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 544
    const/16 v30, 0x0

    .local v30, i:I
    :goto_1
    const/4 v5, 0x2

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 545
    aget v5, v34, v30

    invoke-static {v5}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v29, v30

    invoke-static {v5}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadStillPresent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 546
    :cond_2
    const/4 v5, 0x0

    aput-object v5, v29, v30

    .line 544
    :cond_3
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 550
    :cond_4
    if-eqz p7, :cond_6

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 553
    .restart local v36       #version:I
    :goto_2
    const/16 v30, 0x0

    .end local v7           #privateProjection:[Ljava/lang/String;
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v36

    if-gt v0, v1, :cond_8

    .line 554
    aget-object v5, v27, v30

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 555
    const-wide/16 v15, -0x1

    if-eqz v30, :cond_7

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v8 .. v19}, Lcom/google/android/gm/provider/AttachmentManager;->recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v27, v30

    .line 553
    :cond_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 550
    .end local v36           #version:I
    .restart local v7       #privateProjection:[Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_2

    .line 555
    .end local v7           #privateProjection:[Ljava/lang/String;
    .restart local v36       #version:I
    :cond_7
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_4

    .line 560
    :cond_8
    const/4 v5, 0x0

    aget v5, v34, v5

    invoke-static {v5}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusValid(I)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    aget v5, v34, v5

    invoke-static {v5}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusValid(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 562
    const-string v5, "Gmail"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 563
    const-string v5, "Gmail"

    const-string v6, "AttachmentManager.queryAndStartDownloadingAttachment() starting new download"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_9
    const/4 v5, 0x0

    aget-object v5, v27, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v5, 0x1

    aget-object v5, v27, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    move v13, v5

    :goto_5
    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V

    .line 602
    :cond_a
    :goto_6
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gm/provider/AttachmentManager;->newAttachmentCursor(JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 604
    .local v32, publicCursor:Landroid/database/Cursor;
    return-object v32

    .line 567
    .end local v32           #publicCursor:Landroid/database/Cursor;
    :cond_b
    const/4 v5, 0x0

    move v13, v5

    goto :goto_5

    .line 569
    :cond_c
    const/4 v5, 0x0

    aget-object v5, v29, v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    aget-object v5, v29, v5

    if-eqz v5, :cond_f

    .line 571
    :cond_d
    const-string v5, "Gmail"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 572
    const-string v5, "Gmail"

    const-string v6, "AttachmentManager.queryAndStartDownloadingAttachment() file exists either on cache or sd card, will copy if needed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_e
    aget-object v5, v29, v36

    if-nez v5, :cond_a

    .line 577
    aget-object v5, v27, v36

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const-wide/16 v19, -0x1

    const/4 v5, 0x1

    sub-int v5, v5, v36

    aget-object v21, v29, v5

    const/16 v22, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-object/from16 v16, p6

    move/from16 v17, p7

    invoke-direct/range {v8 .. v26}, Lcom/google/android/gm/provider/AttachmentManager;->copyAttachment(JJJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 584
    :cond_f
    const-string v5, "Gmail"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 585
    const-string v5, "Gmail"

    const-string v6, "AttachmentManager.queryAndStartDownloadingAttachment() refetch attachment"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_10
    const/16 v30, 0x0

    :goto_7
    move/from16 v0, v30

    move/from16 v1, v36

    if-gt v0, v1, :cond_11

    .line 590
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v35, values:Landroid/content/ContentValues;
    const-string v5, "filename"

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v35

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v5, "automatic"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "attachments"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v10, v27, v30

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v35

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 598
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_11
    const/4 v5, 0x0

    aget-object v5, v27, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v5, 0x1

    aget-object v5, v27, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/AttachmentManager;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->canDownloadAttachment(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x1

    move v13, v5

    :goto_8
    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gm/provider/AttachmentManager;->startAttachmentDownloadInDownloadManager(JJZ)V

    goto/16 :goto_6

    :cond_12
    const/4 v5, 0x0

    move v13, v5

    goto :goto_8

    .line 527
    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 528
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public queryForConversation(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1165
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_conversation = ? AND desiredRendition = ?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x1

    sget-object v6, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method recordAttachmentInDb(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;JZZI)J
    .locals 5
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "attachment"
    .parameter "rendition"
    .parameter "downloadId"
    .parameter "saveToSd"
    .parameter "automatic"
    .parameter "priority"

    .prologue
    .line 487
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "messages_conversation"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    const-string v1, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    const-string v1, "messages_partId"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "originExtras"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "desiredRendition"

    invoke-virtual {p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "downloadedRendition"

    invoke-virtual {p6}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "downloadId"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string v1, "automatic"

    if-eqz p10, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v1, "priority"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v1, "saveToSd"

    if-eqz p9, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v1, "filename"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v1, "mimeType"

    iget-object v2, p5, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    return-wide v1

    .line 495
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 497
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerAttachmentObserver(Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public unregisterAttachmentObserver(Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gm/provider/AttachmentManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public updateMessageId(JJ)V
    .locals 5
    .parameter "prevMessageId"
    .parameter "newMessageId"

    .prologue
    .line 776
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .local v1, newAttachmentsValues:Landroid/content/ContentValues;
    const-string v2, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 778
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 779
    .local v0, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v4, "messages_messageId = ?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    return-void
.end method
