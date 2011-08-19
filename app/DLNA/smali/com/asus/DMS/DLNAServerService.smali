.class public Lcom/asus/DMS/DLNAServerService;
.super Landroid/app/Service;
.source "DLNAServerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;
    }
.end annotation


# static fields
.field private static final ACTION_EPAD_EXTERNAL_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.EPAD_EXTERNAL_MEDIA_MOUNTED"

.field private static final ACTION_EPAD_EXTERNAL_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.EPAD_EXTERNAL_MEDIA_UNMOUNTED"

.field private static final DMS_CMD_DISABLE:Ljava/lang/String; = "dms.cmd.disable"

.field private static final DMS_CMD_ENABLE:Ljava/lang/String; = "dms.cmd.enable"

.field private static final KEY_DEVNAME_ED_PREFERENCE:Ljava/lang/String; = "editTextFriendlyname"

.field private static final KEY_DMS_CBX_PREFERENCE:Ljava/lang/String; = "enableServer"

.field private static final KEY_MUSIC_CBX_PREFERENCE:Ljava/lang/String; = "checkMusic"

.field private static final KEY_PHOTO_CBX_PREFERENCE:Ljava/lang/String; = "checkPicture"

.field private static final KEY_SHAREFOLDER_PREFERENCE:Ljava/lang/String; = "pref_sharefolder"

.field private static final KEY_VIDEO_CBX_PREFERENCE:Ljava/lang/String; = "checkVideo"

.field private static final STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DMS"


# instance fields
.field private final AndroidAPI1Only:Z

.field private mDMSEventListener:Landroid/content/BroadcastReceiver;

.field private mMountEventListener:Landroid/content/BroadcastReceiver;

.field private mServiceCommunicationStub:Lcom/asus/DMS/ServiceCommunication$Stub;

.field private mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

.field private mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/DMS/DLNAServerService;->STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DMS/DLNAServerService;->AndroidAPI1Only:Z

    .line 35
    iput-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 36
    iput-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    .line 59
    new-instance v0, Lcom/asus/DMS/DLNAServerService$1;

    invoke-direct {v0, p0}, Lcom/asus/DMS/DLNAServerService$1;-><init>(Lcom/asus/DMS/DLNAServerService;)V

    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mServiceCommunicationStub:Lcom/asus/DMS/ServiceCommunication$Stub;

    .line 190
    new-instance v0, Lcom/asus/DMS/DLNAServerService$2;

    invoke-direct {v0, p0}, Lcom/asus/DMS/DLNAServerService$2;-><init>(Lcom/asus/DMS/DLNAServerService;)V

    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mDMSEventListener:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/asus/DMS/DLNAServerService$3;

    invoke-direct {v0, p0}, Lcom/asus/DMS/DLNAServerService$3;-><init>(Lcom/asus/DMS/DLNAServerService;)V

    iput-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mMountEventListener:Landroid/content/BroadcastReceiver;

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    return-object v0
.end method


# virtual methods
.method public CopyResource(ILjava/lang/String;Z)V
    .locals 9
    .parameter "aInputIDResource"
    .parameter "aOutputFileName"
    .parameter "afForceWrite"

    .prologue
    .line 351
    if-nez p3, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/asus/DMS/DLNAServerService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 355
    .local v5, theTestExist:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v5           #theTestExist:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v6

    .line 360
    :cond_0
    const/16 v6, 0x400

    new-array v3, v6, [C

    .line 364
    .local v3, theBuffer:[C
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    const/4 v6, 0x1

    invoke-virtual {p0, p2, v6}, Lcom/asus/DMS/DLNAServerService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v2, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 365
    .local v2, out:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v1, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 367
    .local v1, in:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, theLength:I
    if-lez v4, :cond_1

    .line 368
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStreamWriter;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 372
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v2           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #theLength:I
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 373
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/InputStreamReader;
    .restart local v2       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #theLength:I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 371
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public CopyResourceByString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "strSource"
    .parameter "aOutputFileName"
    .parameter "afForceWrite"

    .prologue
    .line 382
    if-nez p3, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/asus/DMS/DLNAServerService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 386
    .local v2, theTestExist:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v2           #theTestExist:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v3

    .line 392
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/asus/DMS/DLNAServerService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 394
    .local v1, out:Ljava/io/OutputStreamWriter;
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 396
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 397
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 398
    .end local v1           #out:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 399
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doDisableDMS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    const-string v1, "DMS"

    const-string v2, "doDisableDMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v2}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->IsUpdating()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->Stop()V

    .line 293
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 295
    iput-object v3, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 302
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    iput-object v3, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    .line 310
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 311
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 312
    const-string v1, "DMS"

    const-string v2, "doDisableDMS, end."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 304
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doEnableDMS()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 242
    const-string v4, "DMS"

    const-string v5, "doEnableDMS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    if-eqz v4, :cond_0

    .line 274
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 247
    .local v2, mPrefs:Landroid/content/SharedPreferences;
    const-string v4, "editTextFriendlyname"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, mDefaultModelName:Ljava/lang/String;
    const-string v4, "[upnp]\nFriendlyName = %s\n\n[special]\nSearch = 1\nUpload = 1\nDLNA = 2\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, mediaCTRLServer_ini:Ljava/lang/String;
    const v4, 0x7f060003

    const-string v5, "mediaCTRLMediaTypes.ini"

    invoke-virtual {p0, v4, v5, v6}, Lcom/asus/DMS/DLNAServerService;->CopyResource(ILjava/lang/String;Z)V

    .line 251
    const/high16 v4, 0x7f06

    const-string v5, "ConfigPath.ini"

    invoke-virtual {p0, v4, v5, v6}, Lcom/asus/DMS/DLNAServerService;->CopyResource(ILjava/lang/String;Z)V

    .line 252
    const-string v4, "mediaCTRLServer.ini"

    invoke-virtual {p0, v3, v4, v6}, Lcom/asus/DMS/DLNAServerService;->CopyResourceByString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    const v4, 0x7f060002

    const-string v5, "MalibuDataBase.ini"

    invoke-virtual {p0, v4, v5, v6}, Lcom/asus/DMS/DLNAServerService;->CopyResource(ILjava/lang/String;Z)V

    .line 257
    iget-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v4, :cond_1

    .line 258
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/asus/DMS/DLNAServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-string v5, "DLNAMulticastLock"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 259
    iget-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 263
    :cond_1
    new-instance v4, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;-><init>(Lcom/asus/DMS/DLNAServerService;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    .line 264
    iget-object v4, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v4}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->Start()V

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->doUpdateConfiguration()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    const-string v4, "DMS"

    const-string v5, "doEnableDMS, end."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doUpdateConfiguration()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    .line 317
    iget-object v6, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    if-nez v6, :cond_0

    .line 341
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 321
    .local v2, mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 324
    const-string v6, "checkVideo"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 325
    .local v5, theVideo:Z
    const-string v6, "checkMusic"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 326
    .local v3, theMusic:Z
    const-string v6, "checkPicture"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 327
    .local v4, thePicture:Z
    iget-object v6, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v6, v5, v3, v4}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->SetMediaType(ZZZ)Z

    .line 331
    const-string v6, "editTextFriendlyname"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, mDefaultFriendlyName:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v6, v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->SetFriendlyName(Ljava/lang/String;)Z

    .line 333
    iget-object v6, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v6}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->Restart()Z

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 339
    const-string v6, "pref_sharefolder"

    sget-object v7, Lcom/asus/DMS/DLNAServerService;->STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, mDefaultShare:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v6, v1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->addSharedFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doforceUpdate()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mThread:Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->ForceUpdate()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mServiceCommunicationStub:Lcom/asus/DMS/ServiceCommunication$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    const-string v2, "DMS"

    const-string v3, "  ===========================>   onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "dms.cmd.enable"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "dms.cmd.disable"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/asus/DMS/DLNAServerService;->mDMSEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/asus/DMS/DLNAServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v1, fvold:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EPAD_EXTERNAL_MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.action.EPAD_EXTERNAL_MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/asus/DMS/DLNAServerService;->mMountEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/asus/DMS/DLNAServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mDMSEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/DMS/DLNAServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService;->mMountEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/DMS/DLNAServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    invoke-virtual {p0}, Lcom/asus/DMS/DLNAServerService;->doDisableDMS()V

    .line 187
    const-string v0, "DMS"

    const-string v1, "  ===========================>   onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
