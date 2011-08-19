.class public Lcom/infraware/filemanager/FmUpdateService;
.super Landroid/app/Service;
.source "FmUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;
    }
.end annotation


# static fields
.field public static final DOCMASTER_CLOSE:Ljava/lang/String; = "com.infraware.polaris.office.FINISH"

.field public static final DOCMASTER_CONNECTION_ERROR:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_CONNECTION_ERROR"

.field public static final DOCMASTER_DISABLE_CONFIRM_VERSION:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_DISABLE_CONFIRM_VERSION"

.field public static final DOCMASTER_DOWNLOAD_COMPLETE:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_DOWNLOAD_COMPLETE"

.field public static final DOCMASTER_FILE_WRITE_ERROR:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_FILE_WRITE_ERROR"

.field public static final DOCMASTER_LATEST_VERSION:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_LATEST_VERSION"

.field public static final DOCMASTER_NETWORK_ERROR:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_NETWORK_ERROR"

.field public static final DOCMASTER_USER_CANCEL:Ljava/lang/String; = "com.infraware.polaris.office.ACTION_USER_CANCEL"

.field static final eXML_DEVICEINFO:I = 0x5

.field static final eXML_DOWNLOADURL:I = 0x4

.field static final eXML_FILENAME:I = 0x2

.field static final eXML_FILESIZE:I = 0x3

.field static final eXML_NONE:I = 0x0

.field static final eXML_VERSION:I = 0x1

.field static mstrCurVersion:Ljava/lang/String;

.field static mstrDeviceInfo:Ljava/lang/String;

.field static mstrDownloadURL:Ljava/lang/String;

.field static mstrFileName:Ljava/lang/String;

.field static mstrFileSize:Ljava/lang/String;

.field static mstrNewVersion:Ljava/lang/String;

.field private static parseVersion:Ljava/util/regex/Pattern;


# instance fields
.field private backgroundUpdate:Ljava/lang/Runnable;

.field private final mBinder:Landroid/os/IBinder;

.field public mDownloadStop:Z

.field public mThreadStatus:Z

.field mstrCheckVersionURL:Ljava/lang/String;

.field private updateThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrCurVersion:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrDownloadURL:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrFileName:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrFileSize:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrDeviceInfo:Ljava/lang/String;

    .line 64
    const-string v0, "\\d{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->parseVersion:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;-><init>(Lcom/infraware/filemanager/FmUpdateService;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->mBinder:Landroid/os/IBinder;

    .line 61
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    .line 62
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmUpdateService;->mDownloadStop:Z

    .line 100
    new-instance v0, Lcom/infraware/filemanager/FmUpdateService$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/FmUpdateService$1;-><init>(Lcom/infraware/filemanager/FmUpdateService;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->backgroundUpdate:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method private updateProcess()V
    .locals 4

    .prologue
    .line 94
    const-string v0, "FmUpdateService"

    const-string v1, "updateProcess new Thread"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService;->backgroundUpdate:Ljava/lang/Runnable;

    const-string v3, "update_docMaster"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->updateThread:Ljava/lang/Thread;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    .line 97
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method


# virtual methods
.method public convertVersion(Ljava/lang/String;)I
    .locals 4
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    move v1, v3

    .line 318
    :goto_0
    return v1

    .line 316
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 317
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 316
    add-int v0, v1, v2

    .local v0, result:I
    move v1, v0

    .line 318
    goto :goto_0
.end method

.method public getVersionCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/infraware/filemanager/FmUpdateService;->httpToData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public httpToData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, c:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 189
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 190
    .local v4, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 192
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v14, "connectivity"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 194
    .local v7, netManager:Landroid/net/ConnectivityManager;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 196
    .local v6, mobile:Landroid/net/NetworkInfo;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 198
    .local v12, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 199
    :cond_0
    new-instance v11, Ljava/net/URL;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 201
    const-string v14, "GET"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    move v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v14, :cond_1

    .line 203
    const/4 v14, 0x0

    .line 272
    .end local v11           #url:Ljava/net/URL;
    :goto_0
    return-object v14

    .line 205
    .restart local v11       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 212
    .local v10, responseCode:I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_11

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    move v14, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v14, :cond_2

    .line 214
    const/4 v14, 0x0

    goto :goto_0

    .line 206
    .end local v10           #responseCode:I
    :catch_0
    move-exception v3

    .line 207
    .local v3, e:Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_0

    .line 216
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v10       #responseCode:I
    :cond_2
    :try_start_3
    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .line 220
    const/4 v14, 0x0

    :try_start_4
    invoke-interface {v8, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 222
    const/4 v13, 0x0

    .line 223
    .local v13, xmlStatus:I
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 224
    .local v9, parserEvent:I
    :goto_1
    const/4 v14, 0x1

    if-ne v9, v14, :cond_4

    .line 272
    .end local v9           #parserEvent:I
    .end local v10           #responseCode:I
    .end local v11           #url:Ljava/net/URL;
    .end local v13           #xmlStatus:I
    :cond_3
    :goto_2
    sget-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    goto :goto_0

    .line 217
    .restart local v10       #responseCode:I
    .restart local v11       #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 218
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_0

    .line 225
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #parserEvent:I
    .restart local v13       #xmlStatus:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    move v14, v0

    if-nez v14, :cond_7

    .line 226
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/filemanager/FmUpdateService;->mDownloadStop:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 273
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #mobile:Landroid/net/NetworkInfo;
    .end local v7           #netManager:Landroid/net/ConnectivityManager;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #parserEvent:I
    .end local v10           #responseCode:I
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #wifi:Landroid/net/NetworkInfo;
    .end local v13           #xmlStatus:I
    :catch_2
    move-exception v14

    move-object v3, v14

    .line 275
    .restart local v3       #e:Ljava/lang/Exception;
    if-eqz v2, :cond_5

    .line 276
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 277
    :cond_5
    if-eqz v5, :cond_6

    .line 278
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 281
    :cond_6
    :goto_3
    throw v3

    .line 229
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #mobile:Landroid/net/NetworkInfo;
    .restart local v7       #netManager:Landroid/net/ConnectivityManager;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #parserEvent:I
    .restart local v10       #responseCode:I
    .restart local v11       #url:Ljava/net/URL;
    .restart local v12       #wifi:Landroid/net/NetworkInfo;
    .restart local v13       #xmlStatus:I
    :cond_7
    packed-switch v9, :pswitch_data_0

    .line 265
    :cond_8
    :goto_4
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_1

    .line 231
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Device"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 232
    const/4 v13, 0x5

    .line 233
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrDeviceInfo:Ljava/lang/String;

    goto :goto_4

    .line 234
    :cond_9
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Version"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 235
    const/4 v13, 0x1

    goto :goto_4

    .line 236
    :cond_a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DownloadURL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 237
    const/4 v13, 0x4

    goto :goto_4

    .line 238
    :cond_b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "FileSize"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 239
    const/4 v13, 0x3

    goto :goto_4

    .line 240
    :cond_c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "FileName"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 241
    const/4 v13, 0x2

    .line 243
    goto :goto_4

    .line 246
    :pswitch_1
    const/4 v13, 0x0

    .line 247
    goto :goto_4

    .line 249
    :pswitch_2
    sget-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrDeviceInfo:Ljava/lang/String;

    if-eqz v14, :cond_10

    .line 250
    sget-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrDeviceInfo:Ljava/lang/String;

    .line 251
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 252
    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 253
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    goto :goto_4

    .line 254
    :cond_d
    const/4 v14, 0x4

    if-ne v13, v14, :cond_e

    .line 255
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrDownloadURL:Ljava/lang/String;

    goto :goto_4

    .line 256
    :cond_e
    const/4 v14, 0x3

    if-ne v13, v14, :cond_f

    .line 257
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrFileSize:Ljava/lang/String;

    goto :goto_4

    .line 258
    :cond_f
    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 259
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrFileName:Ljava/lang/String;

    goto/16 :goto_4

    .line 260
    :cond_10
    sget-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 261
    const-string v14, "1"

    sput-object v14, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    goto/16 :goto_4

    .line 268
    .end local v9           #parserEvent:I
    .end local v13           #xmlStatus:I
    :cond_11
    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 279
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #mobile:Landroid/net/NetworkInfo;
    .end local v7           #netManager:Landroid/net/ConnectivityManager;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #responseCode:I
    .end local v11           #url:Ljava/net/URL;
    .end local v12           #wifi:Landroid/net/NetworkInfo;
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAliveUpdateThread()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public loadCurrentVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, returnVersion:Ljava/lang/String;
    sget-object v2, Lcom/infraware/filemanager/FmUpdateService;->parseVersion:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/infraware/filemanager/FmUpdateService;->mstrCurVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 305
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_0
    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 73
    const-string v0, "DOWNLOAD_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    .line 74
    const-string v0, "CURRENT_VER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmUpdateService;->mstrCurVersion:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/infraware/filemanager/FmUpdateService;->updateProcess()V

    .line 76
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 70
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateApk()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 120
    const/4 v5, 0x0

    .line 122
    .local v5, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/infraware/filemanager/FmUpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/infraware/filemanager/FmUpdateService;->getVersionCheck(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    const/4 v7, 0x0

    .line 124
    .local v7, newVersion:I
    const/4 v2, 0x0

    .line 125
    .local v2, curVersion:I
    sget-object v11, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 126
    sget-object v11, Lcom/infraware/filemanager/FmUpdateService;->mstrNewVersion:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 128
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmUpdateService;->loadCurrentVersion()Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, strCurVersionCheck:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    .end local v9           #strCurVersionCheck:Ljava/lang/String;
    :cond_0
    if-le v7, v2, :cond_5

    .line 133
    new-instance v3, Ljava/net/URL;

    sget-object v11, Lcom/infraware/filemanager/FmUpdateService;->mstrDownloadURL:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, downloadURL:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 134
    check-cast v10, Ljava/net/HttpURLConnection;

    .line 137
    .local v10, urlConnection:Ljava/net/HttpURLConnection;
    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v10, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 142
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 143
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/infraware/filemanager/FmUpdateService;->mstrFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 142
    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 147
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v8, os:Ljava/io/FileOutputStream;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 150
    .local v6, is:Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 151
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 152
    .local v1, bufferLength:I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_2

    .line 160
    :goto_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 161
    iget-boolean v11, p0, Lcom/infraware/filemanager/FmUpdateService;->mDownloadStop:Z

    if-eqz v11, :cond_4

    .line 162
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v11, "com.infraware.polaris.office.ACTION_USER_CANCEL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v3           #downloadURL:Ljava/net/URL;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #os:Ljava/io/FileOutputStream;
    .end local v10           #urlConnection:Ljava/net/HttpURLConnection;
    .restart local v5       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/FmUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmUpdateService;->stopSelf()V

    .line 173
    return-void

    .line 153
    .restart local v0       #buffer:[B
    .restart local v1       #bufferLength:I
    .restart local v3       #downloadURL:Ljava/net/URL;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    .restart local v10       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_2
    iget-boolean v11, p0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    if-nez v11, :cond_3

    .line 154
    iput-boolean v13, p0, Lcom/infraware/filemanager/FmUpdateService;->mDownloadStop:Z

    goto :goto_1

    .line 157
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 164
    :cond_4
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v11, "com.infraware.polaris.office.ACTION_DOWNLOAD_COMPLETE"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 166
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v3           #downloadURL:Ljava/net/URL;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #os:Ljava/io/FileOutputStream;
    .end local v10           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_5
    if-nez v7, :cond_6

    .line 167
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v11, "com.infraware.polaris.office.ACTION_NETWORK_ERROR"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 169
    :cond_6
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v11, "com.infraware.polaris.office.ACTION_LATEST_VERSION"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.infraware.polaris.office.ACTION_FILE_WRITE_ERROR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/FmUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmUpdateService;->stopSelf()V

    .line 291
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 292
    .local v1, temp:I
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 299
    :goto_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 300
    return-void

    .line 293
    :cond_1
    iget-boolean v2, p0, Lcom/infraware/filemanager/FmUpdateService;->mThreadStatus:Z

    if-nez v2, :cond_2

    .line 294
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/infraware/filemanager/FmUpdateService;->mDownloadStop:Z

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method
