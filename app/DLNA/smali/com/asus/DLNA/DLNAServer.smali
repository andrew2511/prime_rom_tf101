.class public Lcom/asus/DLNA/DLNAServer;
.super Ljava/lang/Object;
.source "DLNAServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/DLNAServer$1;,
        Lcom/asus/DLNA/DLNAServer$StackThread;,
        Lcom/asus/DLNA/DLNAServer$HandlerStack;
    }
.end annotation


# static fields
.field public static final ERROR_MESSAGE_UPNP_STACK_ERROR:I = 0x32

.field public static final FILTER_TYPE_GALLERY:I = 0x6

.field public static final FILTER_TYPE_IMAGE:I = 0x2

.field public static final FILTER_TYPE_MUSIC:I = 0x1

.field public static final FILTER_TYPE_VIDEO:I = 0x4

.field public static final MSG_KEY_REMOVEITEM:Ljava/lang/String; = "removeitem"

.field public static final NOTIFY_CONTENT_QUERIED_COMPLETED:I = 0x4

.field public static final NOTIFY_CURRENT_VOL_IS_MUTE:I = 0x72

.field public static final NOTIFY_CURRENT_VOL_IS_UNMUTE:I = 0x71

.field public static final NOTIFY_PLAYSTATE_CHANGED:I = 0x64

.field public static final NOTIFY_QUERY_SEEEKBAR:I = 0x6f

.field public static final NOTIFY_RENDERLIST_UPDATED_ADD:I = 0x2

.field public static final NOTIFY_RENDERLIST_UPDATED_REMOVE:I = 0x3

.field public static final NOTIFY_SERVERLIST_UPDATED_ADD:I = 0x0

.field public static final NOTIFY_SERVERLIST_UPDATED_REMOVE:I = 0x1

.field public static final NOTIFY_UPDATE_SEEEKBAR_INLOOP:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "DLNAServer"

.field private static mKeepQuering:Z


# instance fields
.field mBrowse:Lcom/asus/DLNA/ItemList;

.field mBrowseCacheModule:Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;

.field mCacheBrowse:Z

.field private mContext:Landroid/content/Context;

.field private mDLNAClientCallbackHandler:Landroid/os/Handler;

.field mDownloadControllerModule:Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;

.field mDownloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mInitialMemoryFree:J

.field mItemList:Lcom/asus/DLNA/ItemList;

.field mMedia:Lcom/asus/DLNA/Item;

.field mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

.field private mMediaPlayStateCallbackHandler:Landroid/os/Handler;

.field mModuleCP:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

.field mModuleServer:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

.field mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

.field mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field mRendererList:Lcom/asus/DLNA/RendererList;

.field mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

.field mServerList:Lcom/asus/DLNA/ServerList;

.field mStack:Lcom/awox/jUPnPCP/UPnPStack;

.field mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

.field mWaitingId:J

.field protected mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private miFilterType:I

.field private t:Lcom/asus/DLNA/DLNAServer$StackThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/asus/DLNA/DLNAServer$HandlerStack;

    invoke-direct {v0, p0, v1}, Lcom/asus/DLNA/DLNAServer$HandlerStack;-><init>(Lcom/asus/DLNA/DLNAServer;Lcom/asus/DLNA/DLNAServer$1;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mHandler:Landroid/os/Handler;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DLNA/DLNAServer;->mCacheBrowse:Z

    .line 75
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mDownloadList:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 82
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mModuleCP:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    .line 83
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mModuleServer:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    .line 84
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    .line 85
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowseCacheModule:Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;

    .line 87
    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mDownloadControllerModule:Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/DLNA/DLNAServer;->mInitialMemoryFree:J

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/asus/DLNA/DLNAServer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static cutstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1543
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static cutstring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "len"

    .prologue
    .line 1532
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1535
    :goto_0
    return-object v1

    .line 1534
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    move-object v1, p0

    .line 1535
    goto :goto_0
.end method


# virtual methods
.method public BrowseID(Ljava/lang/String;)V
    .locals 12
    .parameter "anID"

    .prologue
    const-wide/16 v2, 0x0

    .line 477
    iget-boolean v0, p0, Lcom/asus/DLNA/DLNAServer;->mCacheBrowse:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowseCacheModule:Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    sget-object v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    move-object v4, p1

    move-wide v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->Browse(Lcom/awox/jUPnPCP/UPnPContentServer;JLjava/lang/String;JLjava/lang/String;)Lcom/awox/jUPnPCP/CmdBrowseCached;

    move-result-object v4

    .line 482
    .local v4, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :goto_0
    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPCommand;->getMUniqueID()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/asus/DLNA/DLNAServer;->waitCommandResponse(J)V

    .line 484
    return-void

    .line 480
    .end local v4           #theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :cond_0
    new-instance v4, Lcom/awox/jUPnPCP/CmdBrowse2;

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MaxResults:I

    int-to-long v9, v0

    sget-object v11, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    move-object v6, p1

    move-wide v7, v2

    invoke-direct/range {v4 .. v11}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .restart local v4       #theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    goto :goto_0
.end method

.method protected CopyResource(ILjava/lang/String;Z)V
    .locals 9
    .parameter "aInputIDResource"
    .parameter "aOutputFileName"
    .parameter "afForceWrite"

    .prologue
    .line 541
    if-nez p3, :cond_0

    .line 545
    :try_start_0
    iget-object v6, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 546
    .local v5, theTestExist:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v5           #theTestExist:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v6

    .line 551
    :cond_0
    const/16 v6, 0x400

    new-array v3, v6, [C

    .line 555
    .local v3, theBuffer:[C
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v2, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 556
    .local v2, out:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v1, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 558
    .local v1, in:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, theLength:I
    if-lez v4, :cond_1

    .line 559
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStreamWriter;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 563
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v2           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #theLength:I
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 564
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AWOX"

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

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/InputStreamReader;
    .restart local v2       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #theLength:I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 562
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public DeInitDLNAService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v0, "DLNAServer"

    const-string v1, "< DeInitDLNAService >"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "DLNAServer"

    const-string v1, "mStack is null! Maybe failed to load Library!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    const-string v0, "DLNAServer"

    const-string v1, " Stack Not Running."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "DLNAServer"

    const-string v1, " Stopping Stack..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNAServer;->processCommandsOnStop()V

    .line 208
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: Stack Still Running."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ServerList;->clear()V

    .line 214
    iput-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    .line 215
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    invoke-virtual {v0}, Lcom/asus/DLNA/RendererList;->clear()V

    .line 216
    iput-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    .line 217
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 218
    iput-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    .line 219
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 220
    iput-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "DLNAServer"

    const-string v1, " Stack Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DownloadURI(Ljava/lang/String;)Z
    .locals 4
    .parameter "anURI"

    .prologue
    .line 1564
    const/4 v2, 0x0

    .line 1565
    .local v2, theReturn:Z
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    invoke-virtual {v3, p1}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->GetFromURL(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCachedURL;

    move-result-object v1

    .line 1567
    .local v1, theCachedURL:Lcom/awox/jUPnPCP/UPnPCachedURL;
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    invoke-virtual {v3, v1}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->Lock(Lcom/awox/jUPnPCP/UPnPCachedURL;)[B

    move-result-object v0

    .line 1569
    .local v0, theBytes:[B
    if-eqz v0, :cond_0

    .line 1571
    const/4 v2, 0x1

    .line 1574
    :try_start_0
    const-string v3, "thumbnail.jpg"

    invoke-virtual {p0, v0, v3}, Lcom/asus/DLNA/DLNAServer;->WriteFile([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    invoke-virtual {v3, v1}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->Unlock(Lcom/awox/jUPnPCP/UPnPCachedURL;)V

    .line 1580
    :cond_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    invoke-virtual {v3, v1}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;->Release(Lcom/awox/jUPnPCP/UPnPCachedURL;)V

    .line 1582
    return v2

    .line 1575
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public InitDLNAService(Landroid/content/Context;I)V
    .locals 9
    .parameter "Context"
    .parameter "filtertype"

    .prologue
    const/4 v2, 0x0

    .line 133
    const-string v0, "DLNAServer"

    const-string v1, "< InitDLNAService >"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    .line 136
    const v0, 0x7f060003

    const-string v1, "mediaCTRLMediaTypes.ini"

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/DLNA/DLNAServer;->CopyResource(ILjava/lang/String;Z)V

    .line 137
    const/high16 v0, 0x7f06

    const-string v1, "ConfigPath.ini"

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/DLNA/DLNAServer;->CopyResource(ILjava/lang/String;Z)V

    .line 138
    const v0, 0x7f060001

    const-string v1, "ControlPoint.ini"

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/DLNA/DLNAServer;->CopyResource(ILjava/lang/String;Z)V

    .line 141
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "AwoxMulticastLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 142
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 145
    :try_start_0
    const-string v0, "jUPnPCP"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNAServer;->MemoryUsedInit()V

    .line 157
    const-string v0, "DLNAServer"

    const-string v1, ">> Starting..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/awox/jUPnPCP/UPnPStack;

    invoke-direct {v0}, Lcom/awox/jUPnPCP/UPnPStack;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    .line 160
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->GetMediaParserManager()Lcom/awox/jUPnPCP/awMediaParserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

    .line 163
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mModuleCP:Lcom/awox/jUPnPCP/UPnPRendererControlPointModule;

    .line 164
    new-instance v0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mModuleServer:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    .line 165
    new-instance v0, Lcom/awox/jUPnPCP/PushControllerModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

    const-string v4, ""

    const-wide/16 v5, 0xa

    const-string v7, "Push"

    invoke-direct/range {v0 .. v7}, Lcom/awox/jUPnPCP/PushControllerModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/SWIGTYPE_p_awStreamingEngine;Lcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 166
    new-instance v0, Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    const-wide/32 v2, 0x19000

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/UPnPURLCacheModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;J)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mURLCacheModule:Lcom/awox/jUPnPCP/UPnPURLCacheModule;

    .line 167
    new-instance v0, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    const-wide/32 v2, 0xc800

    const-wide/16 v4, 0x1e

    invoke-direct/range {v0 .. v5}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;JJ)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowseCacheModule:Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;

    .line 169
    new-instance v0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mMediaParserManager:Lcom/awox/jUPnPCP/awMediaParserManager;

    invoke-direct {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/awMediaParserManager;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mDownloadControllerModule:Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;

    .line 171
    new-instance v0, Lcom/asus/DLNA/ServerList;

    invoke-direct {v0}, Lcom/asus/DLNA/ServerList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    .line 172
    new-instance v0, Lcom/asus/DLNA/RendererList;

    invoke-direct {v0}, Lcom/asus/DLNA/RendererList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    .line 173
    new-instance v0, Lcom/asus/DLNA/ItemList;

    invoke-direct {v0}, Lcom/asus/DLNA/ItemList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    .line 174
    new-instance v0, Lcom/asus/DLNA/ItemList;

    invoke-direct {v0}, Lcom/asus/DLNA/ItemList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    .line 176
    iput p2, p0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    .line 178
    const-string v0, "DLNAServer"

    const-string v1, ">> Ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "DLNAServer"

    const-string v1, " Stack is already Running."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 147
    .local v8, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v0, "DLNAServer"

    const-string v1, "Failed to load jUPnPCP Library!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v8}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v8           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 151
    .local v8, e:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_1
    const-string v0, "DLNAServer"

    const-string v1, " Starting Stack..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->start()V

    .line 186
    const-string v0, "DLNAServer"

    const-string v1, " Stack Started."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/asus/DLNA/DLNAServer$StackThread;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNAServer$StackThread;-><init>(Lcom/asus/DLNA/DLNAServer;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->t:Lcom/asus/DLNA/DLNAServer$StackThread;

    .line 189
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->t:Lcom/asus/DLNA/DLNAServer$StackThread;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNAServer$StackThread;->start()V

    goto :goto_0
.end method

.method public MemoryUsed()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 1548
    iget-wide v2, p0, Lcom/asus/DLNA/DLNAServer;->mInitialMemoryFree:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1549
    .local v0, theTotalUsed:J
    const-string v2, "DLNAServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryUsed Before GC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1551
    iget-wide v2, p0, Lcom/asus/DLNA/DLNAServer;->mInitialMemoryFree:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1552
    const-string v2, "DLNAServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryUsed After GC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return-void
.end method

.method public MemoryUsedInit()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 570
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/DLNA/DLNAServer;->mInitialMemoryFree:J

    .line 572
    return-void

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected NotifyClientTheErrorCode(I)V
    .locals 2
    .parameter "aError"

    .prologue
    .line 1502
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1503
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1505
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1506
    return-void
.end method

.method protected UPnPErrorToString(I)Ljava/lang/String;
    .locals 3
    .parameter "aError"

    .prologue
    .line 1510
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_Cancelled:I

    if-ne p1, v0, :cond_0

    const-string v0, "Cancelled"

    .line 1526
    :goto_0
    return-object v0

    .line 1512
    :cond_0
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionDeleted:I

    if-ne p1, v0, :cond_1

    const-string v0, "Connection deleted"

    goto :goto_0

    .line 1513
    :cond_1
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionFailed:I

    if-ne p1, v0, :cond_2

    const-string v0, "Connection failed"

    goto :goto_0

    .line 1514
    :cond_2
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_DeviceNoMoreAvailable:I

    if-ne p1, v0, :cond_3

    const-string v0, "Device no more available"

    goto :goto_0

    .line 1515
    :cond_3
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_EventSubscriptionIncomplete:I

    if-ne p1, v0, :cond_4

    const-string v0, "Event subscription incomplete"

    goto :goto_0

    .line 1516
    :cond_4
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidClass:I

    if-ne p1, v0, :cond_5

    const-string v0, "Invalid class"

    goto :goto_0

    .line 1517
    :cond_5
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidDIDL:I

    if-ne p1, v0, :cond_6

    const-string v0, "Invalid DIDL"

    goto :goto_0

    .line 1518
    :cond_6
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidResponse:I

    if-ne p1, v0, :cond_7

    const-string v0, "Invalid response"

    goto :goto_0

    .line 1519
    :cond_7
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidXML:I

    if-ne p1, v0, :cond_8

    const-string v0, "Invalid XML"

    goto :goto_0

    .line 1520
    :cond_8
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-ne p1, v0, :cond_9

    const-string v0, "None"

    goto :goto_0

    .line 1521
    :cond_9
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ServiceUnavailable:I

    if-ne p1, v0, :cond_a

    const-string v0, "Service unavailable"

    goto :goto_0

    .line 1522
    :cond_a
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_StackNotRunning:I

    if-ne p1, v0, :cond_b

    const-string v0, "Stack not running"

    goto :goto_0

    .line 1523
    :cond_b
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferFailed:I

    if-ne p1, v0, :cond_c

    const-string v0, "Transfer failed"

    goto :goto_0

    .line 1524
    :cond_c
    sget v0, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferInterrupted:I

    if-ne p1, v0, :cond_d

    const-string v0, "Transfer interrupted"

    goto :goto_0

    .line 1526
    :cond_d
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public WriteFile([BLjava/lang/String;)V
    .locals 1
    .parameter "aData"
    .parameter "aFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1557
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v0, theOutputStream:Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1559
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1560
    return-void
.end method

.method public cpFF()V
    .locals 7

    .prologue
    .line 744
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v4, :cond_0

    .line 746
    const-string v4, "DLNAServer"

    const-string v5, " ERROR: No renderer selected."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v4

    long-to-int v1, v4

    .line 751
    .local v1, duration:I
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetPosition()Lcom/awox/jUPnPCP/RendererPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/RendererPosition;->getMRelativeSeconds()J

    move-result-wide v4

    long-to-int v0, v4

    .line 752
    .local v0, curPOS:I
    div-int/lit8 v2, v1, 0xa

    .line 755
    .local v2, iIncrease:I
    add-int v3, v0, v2

    .line 756
    .local v3, iLastPOS:I
    if-le v3, v1, :cond_1

    .line 757
    sub-int/2addr v3, v1

    .line 758
    new-instance v4, Lcom/awox/jUPnPCP/CmdNext;

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v4, v5}, Lcom/awox/jUPnPCP/CmdNext;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 761
    :cond_1
    new-instance v4, Lcom/awox/jUPnPCP/CmdSeek;

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    goto :goto_0
.end method

.method public cpGetBestResourceIndex(I)I
    .locals 10
    .parameter "index"

    .prologue
    .line 366
    const-string v2, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM;DLNA.ORG_OP=01,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED;DLNA.ORG_OP=01,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG;DLNA.ORG_OP=01,http-get:*:image/bmp:*;DLNA.ORG_OP=01,http-get:*:image/gif:DLNA.ORG_PN=GIF_LRG;DLNA.ORG_OP=01,http-get:*:image/png:DLNA.ORG_PN=PNG_LRG;DLNA.ORG_OP=01,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE;DLNA.ORG_OP=01,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAFULL;DLNA.ORG_OP=01,http-get:*:audio/wav:,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVMED_BASE;DLNA.ORG_OP=01,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVMED_FULL;DLNA.ORG_OP=01"

    .line 380
    .local v2, theDLNAProtocolInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v3, p1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/Item;

    .line 383
    .local v0, item:Lcom/asus/DLNA/Item;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Your profile is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v4, "http;rtp;rtsp;udp"

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kawPreferResource_FirstEntry:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetBestResourceIndex(Ljava/lang/String;Ljava/lang/String;I)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v1

    .line 386
    .local v1, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 387
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Best resource is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v6

    int-to-long v6, v6

    sget v8, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v3

    return v3

    .line 389
    :cond_0
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Renderer is unable to play this media! (index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  protocolmatch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cpGetRenderVolume()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 823
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMVolume()I

    move-result v0

    goto :goto_0
.end method

.method public cpGo(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v1, :cond_0

    .line 416
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: No server selected."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 420
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 421
    :cond_1
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: Invalid index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1, p1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/Item;

    .line 427
    .local v0, item:Lcom/asus/DLNA/Item;
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1, v0}, Lcom/asus/DLNA/ItemList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Browse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for folder \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/DLNA/DLNAServer;->BrowseID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cpInfo(I)V
    .locals 19
    .parameter "index"

    .prologue
    .line 253
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v12

    move/from16 v0, p1

    move v1, v12

    if-lt v0, v1, :cond_2

    .line 254
    :cond_0
    const-string v12, "DLNAServer"

    const-string v13, " ERROR: Invalid index."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/Item;

    .line 262
    .local v4, item:Lcom/asus/DLNA/Item;
    const-string v12, "DLNAServer"

    const-string v13, "**********************************************"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v12, "DLNAServer"

    const-string v13, " Media Info"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "          title: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "        creator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "           date: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Date:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v12, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v13, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Date:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/awox/jUPnPCP/jUPnPCP;->awConvert_DLNADateStrToDate(Ljava/lang/String;)Lcom/awox/jUPnPCP/ConvertDateGetResult;

    move-result-object v8

    .line 269
    .local v8, theDate:Lcom/awox/jUPnPCP/ConvertDateGetResult;
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " date converted: Year="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getYear()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Month="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getMonth()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Day="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getDay()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "          genre: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Genre:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "          album: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Album:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      parent-id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ParentID:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   is-container: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      update-id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_UpdateID:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsULong(J)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    child-count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetChildCount()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "        item-id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemID:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     class-name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     channel-nr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ChannelNr:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsULong(J)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "          flags: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Flags:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsULong(J)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   dlna-managed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_DLNAManaged:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsULong(J)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   create-class: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_CreateClass:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "         ref-id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_RefID:I

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     extra-info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoCount()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    int-to-long v12, v3

    iget-object v14, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoCount()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    .line 288
    iget-object v12, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v12, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoName(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, name:Ljava/lang/String;
    iget-object v12, v4, Lcom/asus/DLNA/Item;->entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v12, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoData(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, data:Ljava/lang/String;
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     extra-info: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    .end local v2           #data:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    const-string v12, "DLNAServer"

    const-string v13, "**********************************************"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v12, "DLNAServer"

    const-string v13, " Resource Info"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v13, "JPEG_MED,JPEG_SM,JPEG_TN,PNG_TN"

    invoke-virtual {v12, v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v11

    .line 296
    .local v11, theThumbnail:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   thumbnail-pn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMProfileID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  thumbnail-uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v13, "JPEG_TN"

    invoke-virtual {v12, v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v11

    .line 300
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMProfileID()Ljava/lang/String;

    move-result-object v12

    const-string v13, "JPEG_TN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    .line 301
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  thumbnail-jpg_tn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_4
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-string v13, "PNG_TN"

    invoke-virtual {v12, v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v11

    .line 304
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMProfileID()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PNG_TN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    .line 305
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  thumbnail-png_tn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_5
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " resource-count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetResourceCount()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v6, 0x0

    .local v6, r:I
    :goto_2
    int-to-long v12, v6

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetResourceCount()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_a

    .line 310
    const-string v12, "DLNAServer"

    const-string v13, "**********************************************"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  res-mime-type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "            uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v13, v6

    sget v15, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_ProtocolInfo:I

    int-to-long v15, v15

    invoke-virtual/range {v12 .. v16}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, theProtocolInfo:Ljava/lang/String;
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  protocol-info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v9}, Lcom/awox/jUPnPCP/jUPnPCP;->GetDLNAMediaRestrictions(Ljava/lang/String;)I

    move-result v10

    .line 319
    .local v10, theRestriction:I
    const-string v12, "DLNAServer"

    const-string v13, "   restrictions: "

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget v12, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDLNAHTTPRequestRestrictions_NoByteSeek:I

    and-int/2addr v12, v10

    if-eqz v12, :cond_6

    .line 321
    const-string v12, "DLNAServer"

    const-string v13, "                -ByteSeek not supported"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_6
    sget v12, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDLNAHTTPRequestRestrictions_NoTimeSeek:I

    and-int/2addr v12, v10

    if-eqz v12, :cond_7

    .line 323
    const-string v12, "DLNAServer"

    const-string v13, "                -TimeSeek not supported"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_7
    sget v12, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDLNAHTTPRequestRestrictions_NoStalling:I

    and-int/2addr v12, v10

    if-eqz v12, :cond_8

    .line 325
    const-string v12, "DLNAServer"

    const-string v13, "                -Stalling not supported"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_8
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     resolution: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Resolution:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "       duration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Duration:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "       bit-rate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_BitRate:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    color-depth: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_ColorDepth:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "           size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Size:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  resume-upload: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_ResumeUpload:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   ifo-file-uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_IFOFileURI:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     import-uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_ImportURI:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  uploaded-size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_UploadedSize:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     extra-info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetExtraInfoCount(J)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v3, 0x0

    :goto_3
    int-to-long v12, v3

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v15, v6

    invoke-virtual/range {v14 .. v16}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetExtraInfoCount(J)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_9

    .line 340
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v13, v6

    invoke-virtual {v12, v13, v14, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetExtraInfoName(JI)Ljava/lang/String;

    move-result-object v5

    .line 341
    .restart local v5       #name:Ljava/lang/String;
    iget-object v12, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    int-to-long v13, v6

    invoke-virtual {v12, v13, v14, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetExtraInfoData(JI)Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2       #data:Ljava/lang/String;
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     extra-info: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 308
    .end local v2           #data:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 346
    .end local v9           #theProtocolInfo:Ljava/lang/String;
    .end local v10           #theRestriction:I
    :cond_a
    const-string v12, "DLNAServer"

    const-string v13, "**********************************************"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v12, "DLNAServer"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v12, v0

    if-eqz v12, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v12, v0

    iget-object v13, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v7

    .line 353
    .local v7, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 354
    const-string v12, "DLNAServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Best resource for selected renderer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v15

    int-to-long v15, v15

    sget v17, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_b
    const-string v12, "DLNAServer"

    const-string v13, "Renderer is unable to play this media !"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public cpIsRenderMute()Z
    .locals 4

    .prologue
    .line 788
    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v2, :cond_0

    .line 789
    const-string v2, "DLNAServer"

    const-string v3, " ERROR: No renderer selected."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v2, 0x0

    .line 804
    :goto_0
    return v2

    .line 793
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 794
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMfMuted()Z

    move-result v0

    .line 795
    .local v0, bIsMute:Z
    if-nez v0, :cond_1

    .line 797
    const/16 v2, 0x71

    iput v2, v1, Landroid/os/Message;->what:I

    .line 802
    :goto_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v2, v0

    .line 804
    goto :goto_0

    .line 800
    :cond_1
    const/16 v2, 0x72

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public cpMute()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 781
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_0
    return-void

    .line 784
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetMute;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    goto :goto_0
.end method

.method public cpPause()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 703
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdPauseMedia;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    goto :goto_0
.end method

.method public cpPlay()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 692
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_0
    return-void

    .line 696
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdPlayMedia;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    goto :goto_0
.end method

.method public cpPlayNext()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 771
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdNext;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdNext;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    goto :goto_0
.end method

.method public cpPushURI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "s1"
    .parameter "s2"

    .prologue
    const-wide/16 v4, 0x0

    .line 856
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v1, :cond_1

    .line 858
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: No renderer selected."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    move-object v10, p1

    .line 864
    .local v10, thePathFile:Ljava/lang/String;
    move-object v9, p2

    .line 865
    .local v9, thePathAlbumArt:Ljava/lang/String;
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v1, v2, v10}, Lcom/awox/jUPnPCP/PushControllerModule;->GetURI(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Lcom/awox/jUPnPCP/PushControllerGetResult;

    move-result-object v12

    .line 870
    .local v12, theURI2:Lcom/awox/jUPnPCP/PushControllerGetResult;
    move-object v11, v12

    .line 871
    .local v11, theURI:Lcom/awox/jUPnPCP/PushControllerGetResult;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 872
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 875
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 877
    const/4 v7, 0x0

    .line 879
    .local v7, theErr:Z
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Uri generated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_WillNot:I

    if-ne v1, v2, :cond_4

    .line 882
    const-string v1, "DLNAServer"

    const-string v2, " Renderer will not play the media"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_2
    :goto_1
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    invoke-static {v1, v4, v5, v2}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_GetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JI)Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, SongTitle:Ljava/lang/String;
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Song Title is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    invoke-static {v1, v4, v5, v2, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 894
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v3

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/awox/jUPnPCP/PushControllerModule;->AddAlbumArt(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, theGeneratedAlbumArtURI:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 900
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: Unable to generate albumart URI"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v7, 0x1

    .line 906
    .end local v8           #theGeneratedAlbumArtURI:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_0

    .line 908
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetURI2;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v3

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Z)V

    .line 909
    .local v0, theSetURI:Lcom/awox/jUPnPCP/CmdSetURI2;
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetURI sent! (UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 883
    .end local v0           #theSetURI:Lcom/awox/jUPnPCP/CmdSetURI2;
    .end local v6           #SongTitle:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_May:I

    if-ne v1, v2, :cond_5

    .line 884
    const-string v1, "DLNAServer"

    const-string v2, " Renderer may play the media"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 885
    :cond_5
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_Should:I

    if-ne v1, v2, :cond_6

    .line 886
    const-string v1, "DLNAServer"

    const-string v2, " Renderer should play the media"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 887
    :cond_6
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v1

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_ShouldNot:I

    if-ne v1, v2, :cond_2

    .line 888
    const-string v1, "DLNAServer"

    const-string v2, " Renderer should not play the media"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 914
    .end local v7           #theErr:Z
    :cond_7
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: Unable to generate media URI"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public cpReQueryAgain()V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/Item;

    .line 407
    .local v0, item:Lcom/asus/DLNA/Item;
    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/DLNA/DLNAServer;->BrowseID(Ljava/lang/String;)V

    .line 409
    .end local v0           #item:Lcom/asus/DLNA/Item;
    :cond_0
    return-void
.end method

.method public cpRenderer(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    invoke-virtual {v0}, Lcom/asus/DLNA/RendererList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 845
    const-string v0, "DLNAServer"

    const-string v1, "index is out of render list size!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    invoke-virtual {v0, p1}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/awox/jUPnPCP/UPnPRenderer;

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 850
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Selected renderer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cpRewind()V
    .locals 7

    .prologue
    .line 722
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v4, :cond_0

    .line 724
    const-string v4, "DLNAServer"

    const-string v5, " ERROR: No renderer selected."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v4

    long-to-int v1, v4

    .line 728
    .local v1, duration:I
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetPosition()Lcom/awox/jUPnPCP/RendererPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/RendererPosition;->getMRelativeSeconds()J

    move-result-wide v4

    long-to-int v0, v4

    .line 729
    .local v0, curPOS:I
    div-int/lit8 v2, v1, 0xa

    .line 732
    .local v2, iDecrease:I
    sub-int v3, v0, v2

    .line 733
    .local v3, iLastPOS:I
    if-gez v3, :cond_1

    .line 734
    new-instance v4, Lcom/awox/jUPnPCP/CmdPrev;

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v4, v5}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 735
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v4

    long-to-int v1, v4

    .line 736
    add-int v4, v1, v3

    const/4 v5, 0x2

    sub-int v3, v4, v5

    .line 739
    :cond_1
    new-instance v4, Lcom/awox/jUPnPCP/CmdSeek;

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    goto :goto_0
.end method

.method public cpSearchDevices()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "DLNAServer"

    const-string v1, "Search for devices again!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->searchDevices()V

    .line 249
    return-void
.end method

.method public cpServer(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ServerList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 523
    const-string v0, "DLNAServer"

    const-string v1, "index is out of server list size!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 529
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    invoke-virtual {v0, p1}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/awox/jUPnPCP/UPnPContentServer;

    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 533
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    .line 535
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Selected server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cpSetNextUri(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v6, -0x1

    .line 619
    invoke-virtual {p0, p1}, Lcom/asus/DLNA/DLNAServer;->getURIIndex(I)I

    move-result v1

    .line 620
    .local v1, theIndex:I
    if-ne v6, v1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v4, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/Item;

    .line 623
    .local v2, theItem:Lcom/asus/DLNA/Item;
    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v0

    .line 625
    .local v0, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 627
    new-instance v3, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/asus/DLNA/Item;->getUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v6

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 628
    .local v3, theSetURI:Lcom/awox/jUPnPCP/CmdSetNextURI2;
    const-string v4, "DLNAServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetURI sent! (UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;->getMUniqueID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v3           #theSetURI:Lcom/awox/jUPnPCP/CmdSetNextURI2;
    :cond_1
    new-instance v3, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/asus/DLNA/Item;->getUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v6

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 633
    .restart local v3       #theSetURI:Lcom/awox/jUPnPCP/CmdSetNextURI2;
    const-string v4, "DLNAServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetURI sent! (UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;->getMUniqueID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public cpSetRenderVolume(I)V
    .locals 3
    .parameter "iVol"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 831
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 834
    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 835
    :cond_1
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ERROR: The Volume value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is over 100 or under 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    :cond_2
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetVolume;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getCmdSetVolume_ABSOLUTE()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    goto :goto_0
.end method

.method public cpSetSeekBar(I)V
    .locals 3
    .parameter "NewPOS"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 659
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(setseekbar)set POS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Lcom/awox/jUPnPCP/CmdSeek;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;II)V

    goto :goto_0
.end method

.method public cpSetUri(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/asus/DLNA/DLNAServer;->getURIIndex(I)I

    move-result v8

    .line 600
    .local v8, theIndex:I
    const/4 v1, -0x1

    if-ne v1, v8, :cond_0

    .line 615
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1, v8}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/DLNA/Item;

    .line 603
    .local v9, theItem:Lcom/asus/DLNA/Item;
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v9}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v7

    .line 605
    .local v7, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 607
    new-instance v0, Lcom/awox/jUPnPCP/CmdSetURI2;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v7}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/asus/DLNA/Item;->getUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v3

    invoke-virtual {v9}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Z)V

    .line 608
    .local v0, theSetURI:Lcom/awox/jUPnPCP/CmdSetURI2;
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetURI sent! (UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    .end local v0           #theSetURI:Lcom/awox/jUPnPCP/CmdSetURI2;
    :cond_1
    new-instance v1, Lcom/awox/jUPnPCP/CmdSetURI2;

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/asus/DLNA/Item;->getUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    invoke-virtual {v9}, Lcom/asus/DLNA/Item;->getResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Z)V

    goto/16 :goto_0
.end method

.method public cpStop()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 714
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No renderer selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 717
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdStopMedia;

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    goto :goto_0
.end method

.method public cpStopQueryingContent()V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x1

    sget-boolean v1, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    if-ne v0, v1, :cond_0

    .line 398
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    .line 400
    :cond_0
    return-void
.end method

.method public cpTop()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v0, :cond_0

    .line 440
    const-string v0, "DLNAServer"

    const-string v1, " ERROR: No server selected."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string v0, "DLNAServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Browse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for Root folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v0}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 447
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    const-string v1, "Root"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNAServer;->BrowseID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cpUp()V
    .locals 4

    .prologue
    .line 456
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->removeLast()Ljava/lang/Object;

    .line 457
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 458
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: No more item in mBrowse list!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/Item;

    .line 464
    .local v0, item:Lcom/asus/DLNA/Item;
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Browse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for folder \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/DLNA/DLNAServer;->BrowseID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cpUpdateSeekBar()V
    .locals 5

    .prologue
    .line 670
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v3, :cond_0

    .line 672
    const-string v3, "DLNAServer"

    const-string v4, " ERROR: No renderer selected."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMDuration()J

    move-result-wide v3

    long-to-int v1, v3

    .line 677
    .local v1, duration:I
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetPosition()Lcom/awox/jUPnPCP/RendererPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/RendererPosition;->getMRelativeSeconds()J

    move-result-wide v3

    long-to-int v0, v3

    .line 680
    .local v0, curPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 681
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x6e

    iput v3, v2, Landroid/os/Message;->what:I

    .line 683
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 684
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 685
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public cpVolDOWN()V
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNAServer;->cpGetRenderVolume()I

    move-result v0

    .line 816
    .local v0, iVol:I
    const/16 v1, 0xa

    sub-int/2addr v0, v1

    .line 817
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 818
    :cond_0
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNAServer;->cpSetRenderVolume(I)V

    .line 819
    return-void
.end method

.method public cpVolUP()V
    .locals 2

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNAServer;->cpGetRenderVolume()I

    move-result v0

    .line 809
    .local v0, iVol:I
    add-int/lit8 v0, v0, 0xa

    .line 810
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    .line 811
    :cond_0
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNAServer;->cpSetRenderVolume(I)V

    .line 812
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 234
    const-string v0, "DLNAServer"

    const-string v1, "< finalize() >"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 238
    :cond_0
    return-void
.end method

.method public getURIIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 642
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 644
    :cond_0
    const-string v1, "DLNAServer"

    const-string v2, " ERROR: Invalid index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mMedia:Lcom/asus/DLNA/Item;

    .line 646
    const/4 v1, -0x1

    .line 653
    :goto_0
    return v1

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1, p1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/Item;

    .line 650
    .local v0, item:Lcom/asus/DLNA/Item;
    iput-object v0, p0, Lcom/asus/DLNA/DLNAServer;->mMedia:Lcom/asus/DLNA/Item;

    .line 651
    const-string v1, "DLNAServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Set URI \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/DLNA/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    .line 653
    goto :goto_0
.end method

.method public onCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V
    .locals 37
    .parameter "aCommand"

    .prologue
    .line 925
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMError()I

    move-result v3

    if-eqz v3, :cond_0

    .line 928
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mError    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMError()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->UPnPErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    move v3, v0

    if-eqz v3, :cond_4

    .line 933
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    move-object/from16 v22, v0

    .line 934
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mFriendlyName       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mLocationURL        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUDN                : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mDLNACaps           : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mDLNADoc            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mInterfaceToDevice  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSinkProtocolInfo   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMSinkProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSourceProtocolInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMSourceProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSearchCaps         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMSearchCaps()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v3, "DLNAServer"

    const-string v4, " *   mContentServer      : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMContentServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v32

    .line 946
    .local v32, theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mFriendlyName     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNACaps         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNADoc          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mUDN              : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mLocationURL      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mInterfaceToDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMLocationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v13

    .line 954
    .local v13, bIsLocalDMS:Z
    if-eqz v13, :cond_2

    .line 955
    const-string v3, "DLNAServer"

    const-string v4, " This is local DMS. No need to add it."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    .end local v13           #bIsLocalDMS:Z
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .end local v32           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_1
    :goto_0
    return-void

    .line 959
    .restart local v13       #bIsLocalDMS:Z
    .restart local v22       #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .restart local v32       #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ServerList;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 962
    .local v17, msg:Landroid/os/Message;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    .end local v13           #bIsLocalDMS:Z
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .end local v32           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_3
    :goto_1
    const-string v3, "DLNAServer"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMUniqueID()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    move-wide v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1458
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    goto :goto_0

    .line 966
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    move v3, v0

    if-eqz v3, :cond_d

    .line 968
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    move-object/from16 v22, v0

    .line 969
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerRemoved;
    const-string v3, "DLNAServer"

    const-string v4, " *   mDevice             : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMDevice()Lcom/awox/jUPnPCP/UPnPDeviceBase;

    move-result-object v24

    .line 972
    .local v24, theDevice:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mFriendlyName     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNACaps         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNADoc          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mUDN              : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mLocationURL      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mInterfaceToDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object v3, v0

    if-eqz v3, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 981
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected server \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    .line 983
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 986
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/DLNA/DLNAServer;->mMedia:Lcom/asus/DLNA/Item;

    .line 989
    :cond_5
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was removed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_ByeBye:I

    if-ne v3, v4, :cond_7

    .line 991
    const-string v3, "DLNAServer"

    const-string v4, "ByeBye"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ServerList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)I

    move-result v15

    .line 1007
    .local v15, iRemovedPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1008
    .restart local v17       #msg:Landroid/os/Message;
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1010
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .local v12, b:Landroid/os/Bundle;
    const-string v3, "removeitem"

    invoke-virtual {v12, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 992
    .end local v12           #b:Landroid/os/Bundle;
    .end local v15           #iRemovedPOS:I
    .end local v17           #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_DiscoveryError:I

    if-ne v3, v4, :cond_8

    .line 993
    const-string v3, "DLNAServer"

    const-string v4, "DiscoveryError"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 994
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_FailedEventSubscriptionRenewal:I

    if-ne v3, v4, :cond_9

    .line 995
    const-string v3, "DLNAServer"

    const-string v4, "EventSubscriptionRenewal"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 996
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_FailedToNotify:I

    if-ne v3, v4, :cond_a

    .line 997
    const-string v3, "DLNAServer"

    const-string v4, "FailedToNotify"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 998
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_LocalIPAddressChanged:I

    if-ne v3, v4, :cond_b

    .line 999
    const-string v3, "DLNAServer"

    const-string v4, "LocalIPAddressChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1000
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_StackStopped:I

    if-ne v3, v4, :cond_c

    .line 1001
    const-string v3, "DLNAServer"

    const-string v4, "StackStopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1002
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_Unknown:I

    if-ne v3, v4, :cond_6

    .line 1003
    const-string v3, "DLNAServer"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1016
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerRemoved;
    .end local v24           #theDevice:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    move v3, v0

    if-eqz v3, :cond_e

    .line 1018
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    move-object/from16 v22, v0

    .line 1019
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdating;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mfUpdating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;->getMfUpdating()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1021
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdating;
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    move v3, v0

    if-eqz v3, :cond_f

    .line 1023
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    move-object/from16 v22, v0

    .line 1024
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdated;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mfSystemUpdateIDWasSet    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->getMfSystemUpdateIDWasSet()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mContainerUpdateIDs       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->getMContainerUpdateIDs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSystemUpdateID           : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->getMSystemUpdateID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mfSystemUpdateIDHasChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->getMfSystemUpdateIDHasChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   systemUpdateIDHasChanged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->systemUpdateIDHasChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1030
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdated;
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    move v3, v0

    if-eqz v3, :cond_10

    .line 1032
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    move-object/from16 v22, v0

    .line 1033
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUpdatedFlag       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;->getMUpdatedFlag()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSinkProtocolInfo  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;->getMSinkProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSourceProtocolInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;->getMSourceProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v3, "DLNAServer"

    const-string v4, " *   mContentServer     : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1038
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdSearch;

    move v3, v0

    if-eqz v3, :cond_14

    .line 1040
    const-string v3, "DLNAServer"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdSearch;

    move-object/from16 v22, v0

    .line 1043
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdSearch;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMError()I

    move-result v26

    .line 1044
    .local v26, theError:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_11

    .line 1046
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmdSearch Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->UPnPErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->NotifyClientTheErrorCode(I)V

    goto/16 :goto_1

    .line 1052
    :cond_11
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mItemID            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mStartIndex        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMStartIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mMaxResults        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMMaxResults()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mFilter            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSortCriteria      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMSortCriteria()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mResultCount       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMResultCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mTotalMatches      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUpdateID          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMUpdateID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v3, "DLNAServer"

    const-string v4, " *   mData              : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v3, "DLNAServer"

    const-string v4, " *   mResInfo           : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    int-to-long v3, v14

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSearch;->getMResultCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 1065
    int-to-long v3, v14

    move-object/from16 v0, v22

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v25

    .line 1066
    .local v25, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    int-to-long v3, v14

    move-object/from16 v0, v22

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CmdSearch;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v30

    .line 1068
    .local v30, theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v3, v3

    move-object/from16 v0, v25

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v34

    .line 1069
    .local v34, theTitle:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v28

    .line 1070
    .local v28, theIsContainer:Z
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetChildCount()J

    move-result-wide v18

    .line 1071
    .local v18, theChildCount:J
    new-instance v3, Ljava/lang/Long;

    const-string v4, "4294967295"

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 1073
    .local v35, theUndefinedCount:J
    if-eqz v28, :cond_12

    const-string v3, " * "

    move-object/from16 v23, v3

    .line 1074
    .local v23, theContainerStr:Ljava/lang/String;
    :goto_4
    if-eqz v28, :cond_13

    cmp-long v3, v18, v35

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    .line 1076
    .local v20, theChildCountStr:Ljava/lang/String;
    :goto_5
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1073
    .end local v20           #theChildCountStr:Ljava/lang/String;
    .end local v23           #theContainerStr:Ljava/lang/String;
    :cond_12
    const-string v3, " - "

    move-object/from16 v23, v3

    goto :goto_4

    .line 1074
    .restart local v23       #theContainerStr:Ljava/lang/String;
    :cond_13
    const-string v3, ""

    move-object/from16 v20, v3

    goto :goto_5

    .line 1080
    .end local v14           #i:I
    .end local v18           #theChildCount:J
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdSearch;
    .end local v23           #theContainerStr:Ljava/lang/String;
    .end local v25           #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .end local v26           #theError:I
    .end local v28           #theIsContainer:Z
    .end local v30           #theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    .end local v34           #theTitle:Ljava/lang/String;
    .end local v35           #theUndefinedCount:J
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    move v3, v0

    if-eqz v3, :cond_2a

    .line 1082
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    move-object/from16 v22, v0

    .line 1084
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdBrowse2;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMError()I

    move-result v26

    .line 1085
    .restart local v26       #theError:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_15

    .line 1087
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmdBrowse2 Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->UPnPErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Failed to query content from content server!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/asus/DLNA/DLNAServer;->removeTheCurrentSelectedServer()V

    .line 1090
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->NotifyClientTheErrorCode(I)V

    goto/16 :goto_1

    .line 1094
    :cond_15
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mItemID            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mStartIndex        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMStartIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mMaxResults        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMMaxResults()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mFilter            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSortCriteria      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMSortCriteria()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mResultCount       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mTotalMatches      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUpdateID          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUpdateID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v3, "DLNAServer"

    const-string v4, " *   mData              : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v3, "DLNAServer"

    const-string v4, " *   mResInfo           : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMStartIndex()J

    move-result-wide v3

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v16, v0

    .line 1106
    .local v16, iTheStartIndex:I
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getKUPnPDeviceType_ContentServer()I

    move-result v3

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getDevice(I)Lcom/awox/jUPnPCP/UPnPDeviceBase;

    move-result-object v32

    check-cast v32, Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 1108
    .restart local v32       #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 1111
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v3

    if-ge v14, v3, :cond_16

    .line 1112
    const-string v4, "DLNAServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " => "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/Item;

    iget-object v3, v3, Lcom/asus/DLNA/Item;->title:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1113
    :cond_16
    const-string v3, "DLNAServer"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    .end local v14           #i:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/DLNA/Item;

    .line 1118
    .local v11, NowBrowseitem:Lcom/asus/DLNA/Item;
    invoke-virtual {v11}, Lcom/asus/DLNA/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1119
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This returned contents of , mItemID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is out of date!!! discard it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1123
    :cond_18
    if-nez v16, :cond_19

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1128
    :cond_19
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_7
    int-to-long v3, v14

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_27

    .line 1130
    int-to-long v3, v14

    move-object/from16 v0, v22

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v25

    .line 1131
    .restart local v25       #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    int-to-long v3, v14

    move-object/from16 v0, v22

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v30

    .line 1133
    .restart local v30       #theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v3, v3

    move-object/from16 v0, v25

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v34

    .line 1134
    .restart local v34       #theTitle:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v28

    .line 1135
    .restart local v28       #theIsContainer:Z
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetChildCount()J

    move-result-wide v18

    .line 1136
    .restart local v18       #theChildCount:J
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    int-to-long v3, v3

    move-object/from16 v0, v25

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v21

    .line 1137
    .local v21, theClassName:Ljava/lang/String;
    new-instance v3, Ljava/lang/Long;

    const-string v4, "4294967295"

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 1139
    .restart local v35       #theUndefinedCount:J
    if-eqz v28, :cond_1c

    const-string v3, " * "

    move-object/from16 v23, v3

    .line 1140
    .restart local v23       #theContainerStr:Ljava/lang/String;
    :goto_8
    if-eqz v28, :cond_1d

    cmp-long v3, v18, v35

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    .line 1142
    .restart local v20       #theChildCountStr:Ljava/lang/String;
    :goto_9
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%4d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    if-nez v28, :cond_26

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1e

    .line 1148
    const-string v3, "object.item.audioItem.musicTrack"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "object.item.audioItem"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1149
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    .line 1128
    :cond_1b
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 1139
    .end local v20           #theChildCountStr:Ljava/lang/String;
    .end local v23           #theContainerStr:Ljava/lang/String;
    :cond_1c
    const-string v3, " - "

    move-object/from16 v23, v3

    goto/16 :goto_8

    .line 1140
    .restart local v23       #theContainerStr:Ljava/lang/String;
    :cond_1d
    const-string v3, ""

    move-object/from16 v20, v3

    goto :goto_9

    .line 1151
    .restart local v20       #theChildCountStr:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_20

    .line 1152
    const-string v3, "object.item.imageItem.photo"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "object.item.imageItem"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1153
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    goto :goto_a

    .line 1154
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    move v3, v0

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_22

    .line 1155
    const-string v3, "object.item.videoItem.movie"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "object.item.videoItem"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1156
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    goto :goto_a

    .line 1157
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    move v3, v0

    and-int/lit8 v3, v3, 0x6

    if-lez v3, :cond_1b

    .line 1159
    const-string v3, "object.item.imageItem.photo"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "object.item.imageItem"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1160
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    goto/16 :goto_a

    .line 1161
    :cond_24
    const-string v3, "object.item.videoItem.movie"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "object.item.videoItem"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1162
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    goto/16 :goto_a

    .line 1168
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    goto/16 :goto_a

    .line 1173
    .end local v18           #theChildCount:J
    .end local v20           #theChildCountStr:Ljava/lang/String;
    .end local v21           #theClassName:Ljava/lang/String;
    .end local v23           #theContainerStr:Ljava/lang/String;
    .end local v25           #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .end local v28           #theIsContainer:Z
    .end local v30           #theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    .end local v34           #theTitle:Ljava/lang/String;
    .end local v35           #theUndefinedCount:J
    :cond_27
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1174
    .restart local v17       #msg:Landroid/os/Message;
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMStartIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ResultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TotalMatches="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMStartIndex()J

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v5

    add-long v6, v3, v5

    .line 1182
    .local v6, lNextStart:J
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMTotalMatches()J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-gez v3, :cond_29

    .line 1184
    const-wide/16 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMStartIndex()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-nez v3, :cond_28

    .line 1185
    const-string v3, "DLNAServer"

    const-string v4, " >> send the request again (first time)!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v3, 0x1

    sput-boolean v3, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    .line 1189
    :cond_28
    const/4 v3, 0x1

    sget-boolean v4, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    if-ne v3, v4, :cond_3

    .line 1190
    const-string v3, "DLNAServer"

    const-string v4, " >> send the request again (more than one time)!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v5

    .line 1192
    .local v5, anID:Ljava/lang/String;
    new-instance v3, Lcom/awox/jUPnPCP/CmdBrowse2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    move-object v4, v0

    sget v8, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MaxResults:I

    int-to-long v8, v8

    sget-object v10, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    invoke-direct/range {v3 .. v10}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    goto/16 :goto_1

    .line 1195
    .end local v5           #anID:Ljava/lang/String;
    :cond_29
    const/4 v3, 0x0

    sput-boolean v3, Lcom/asus/DLNA/DLNAServer;->mKeepQuering:Z

    .line 1196
    const-string v3, "DLNAServer"

    const-string v4, " >> stop to send request!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1201
    .end local v6           #lNextStart:J
    .end local v11           #NowBrowseitem:Lcom/asus/DLNA/Item;
    .end local v14           #i:I
    .end local v16           #iTheStartIndex:I
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdBrowse2;
    .end local v26           #theError:I
    .end local v32           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_2a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    move v3, v0

    if-eqz v3, :cond_31

    .line 1203
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdBrowseCached;

    move-object/from16 v22, v0

    .line 1205
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdBrowseCached;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowseCached;->getMError()I

    move-result v26

    .line 1206
    .restart local v26       #theError:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_2b

    .line 1208
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmdRetrieveBrowseToCache2 Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->UPnPErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->NotifyClientTheErrorCode(I)V

    goto/16 :goto_1

    .line 1213
    :cond_2b
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowseCached;->getMBrowseResult()Lcom/awox/jUPnPCP/UPnPBrowseResult;

    move-result-object v31

    .line 1215
    .local v31, theResult:Lcom/awox/jUPnPCP/UPnPBrowseResult;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mItemID            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowseCached;->GetContainerID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mStartIndex        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->getMStartIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mCount             : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->getMCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mTotalMatches      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v3, "DLNAServer"

    const-string v4, " *   mData              : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v3, "DLNAServer"

    const-string v4, " *   mResInfo           : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getKUPnPDeviceType_ContentServer()I

    move-result v3

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/awox/jUPnPCP/CmdBrowseCached;->getDevice(I)Lcom/awox/jUPnPCP/UPnPDeviceBase;

    move-result-object v32

    check-cast v32, Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 1224
    .restart local v32       #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdBrowseCached;->GetContainerID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->getMTotalMatches()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v3

    if-lez v3, :cond_2d

    .line 1227
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v3

    if-ge v14, v3, :cond_2c

    .line 1228
    const-string v4, "DLNAServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " => "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/Item;

    iget-object v3, v3, Lcom/asus/DLNA/Item;->title:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1229
    :cond_2c
    const-string v3, "DLNAServer"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    .end local v14           #i:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1233
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_c
    int-to-long v3, v14

    invoke-virtual/range {v31 .. v31}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->getMCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_30

    .line 1235
    int-to-long v3, v14

    move-object/from16 v0, v31

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->GetEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->Clone()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v25

    .line 1236
    .restart local v25       #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    int-to-long v3, v14

    move-object/from16 v0, v31

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPBrowseResult;->GetResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;->Clone()Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v30

    .line 1238
    .restart local v30       #theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v3, v3

    move-object/from16 v0, v25

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v34

    .line 1239
    .restart local v34       #theTitle:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v28

    .line 1240
    .restart local v28       #theIsContainer:Z
    invoke-virtual/range {v25 .. v25}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetChildCount()J

    move-result-wide v18

    .line 1241
    .restart local v18       #theChildCount:J
    new-instance v3, Ljava/lang/Long;

    const-string v4, "4294967295"

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 1243
    .restart local v35       #theUndefinedCount:J
    if-eqz v28, :cond_2e

    const-string v3, " * "

    move-object/from16 v23, v3

    .line 1244
    .restart local v23       #theContainerStr:Ljava/lang/String;
    :goto_d
    if-eqz v28, :cond_2f

    cmp-long v3, v18, v35

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    .line 1246
    .restart local v20       #theChildCountStr:Ljava/lang/String;
    :goto_e
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%4d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/ItemList;->add(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)Z

    .line 1233
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 1243
    .end local v20           #theChildCountStr:Ljava/lang/String;
    .end local v23           #theContainerStr:Ljava/lang/String;
    :cond_2e
    const-string v3, " - "

    move-object/from16 v23, v3

    goto :goto_d

    .line 1244
    .restart local v23       #theContainerStr:Ljava/lang/String;
    :cond_2f
    const-string v3, ""

    move-object/from16 v20, v3

    goto :goto_e

    .line 1251
    .end local v18           #theChildCount:J
    .end local v23           #theContainerStr:Ljava/lang/String;
    .end local v25           #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .end local v28           #theIsContainer:Z
    .end local v30           #theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    .end local v34           #theTitle:Ljava/lang/String;
    .end local v35           #theUndefinedCount:J
    :cond_30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1252
    .restart local v17       #msg:Landroid/os/Message;
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1258
    .end local v14           #i:I
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdBrowseCached;
    .end local v26           #theError:I
    .end local v31           #theResult:Lcom/awox/jUPnPCP/UPnPBrowseResult;
    .end local v32           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_31
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdRendererAdded;

    move v3, v0

    if-eqz v3, :cond_32

    .line 1260
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdRendererAdded;

    move-object/from16 v22, v0

    .line 1261
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mFriendlyName       : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mLocationURL        : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUDN                : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mDLNACaps           : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mDLNADoc            : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mInterfaceToDevice  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSinkProtocolInfo   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMSinkProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mSourceProtocolInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMSourceProtocolInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/asus/DLNA/DLNAServer;->cutstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const-string v3, "DLNAServer"

    const-string v4, " *   mRenderer    : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererAdded;->getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v29

    .line 1272
    .local v29, theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mFriendlyName     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNACaps         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNADoc          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mUDN              : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mLocationURL      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mInterfaceToDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/RendererList;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-virtual/range {v29 .. v29}, Lcom/awox/jUPnPCP/UPnPRenderer;->SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    .line 1283
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1284
    .restart local v17       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1288
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdRendererAdded;
    .end local v29           #theRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;
    :cond_32
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    move v3, v0

    if-eqz v3, :cond_34

    .line 1290
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    move-object/from16 v22, v0

    .line 1291
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdRendererRemoved;
    const-string v3, "DLNAServer"

    const-string v4, " *   mDevice             : <...>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRendererRemoved;->getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v24

    .line 1294
    .restart local v24       #theDevice:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mFriendlyName     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNACaps         : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMDLNACaps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mDLNADoc          : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMDLNADoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mUDN              : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mLocationURL      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMLocationURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *     mInterfaceToDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMInterfaceToDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v3, v0

    if-eqz v3, :cond_33

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1303
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected renderer \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 1307
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/RendererList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)I

    move-result v15

    .line 1310
    .restart local v15       #iRemovedPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1311
    .restart local v17       #msg:Landroid/os/Message;
    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1313
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1314
    .restart local v12       #b:Landroid/os/Bundle;
    const-string v3, "removeitem"

    invoke-virtual {v12, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1318
    .end local v12           #b:Landroid/os/Bundle;
    .end local v15           #iRemovedPOS:I
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdRendererRemoved;
    .end local v24           #theDevice:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    :cond_34
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdStateChange;

    move v3, v0

    if-eqz v3, :cond_35

    .line 1320
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdStateChange;

    move-object/from16 v22, v0

    .line 1322
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdStateChange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v3, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/awox/jUPnPCP/CmdStateChange;->isFromDevice(Lcom/awox/jUPnPCP/UPnPDeviceBase;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1323
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current renderer state changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/UPnPPlayState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v17

    .line 1326
    .restart local v17       #msg:Landroid/os/Message;
    const/16 v3, 0x64

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMState()Lcom/awox/jUPnPCP/UPnPRendererState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRendererState;->getMPlayState()Lcom/awox/jUPnPCP/UPnPPlayState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPPlayState;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1332
    .end local v17           #msg:Landroid/os/Message;
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdStateChange;
    :cond_35
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    move v3, v0

    if-eqz v3, :cond_39

    .line 1334
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    move-object/from16 v22, v0

    .line 1335
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdIsAuthorized;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdIsAuthorized;->getMResult()I

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    move/from16 v27, v3

    .line 1336
    .local v27, theIsAuthorized:Z
    :goto_f
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdIsAuthorized;->getMResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdIsAuthorized;->getMError()I

    move-result v3

    if-nez v3, :cond_38

    .line 1340
    if-eqz v27, :cond_37

    .line 1341
    const-string v3, "DLNAServer"

    const-string v4, "You are authorized to browse the current server !"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1335
    .end local v27           #theIsAuthorized:Z
    :cond_36
    const/4 v3, 0x0

    move/from16 v27, v3

    goto :goto_f

    .line 1343
    .restart local v27       #theIsAuthorized:Z
    :cond_37
    const-string v3, "DLNAServer"

    const-string v4, "You are NOT authorized to browse the current server !"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1347
    :cond_38
    const-string v3, "DLNAServer"

    const-string v4, "You should be authorized !"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1350
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdIsAuthorized;
    .end local v27           #theIsAuthorized:Z
    :cond_39
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    move v3, v0

    if-eqz v3, :cond_3a

    .line 1352
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    move-object/from16 v22, v0

    .line 1354
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->getKUPnPDeviceType_ContentServer()I

    move-result v3

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;->getDevice(I)Lcom/awox/jUPnPCP/UPnPDeviceBase;

    move-result-object v32

    check-cast v32, Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 1356
    .restart local v32       #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registrar updated on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1358
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;
    .end local v32           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_3a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    move v3, v0

    if-eqz v3, :cond_3b

    .line 1360
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    move-object/from16 v22, v0

    .line 1362
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;->getMError()I

    move-result v3

    if-nez v3, :cond_3

    .line 1364
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI Received: (commandID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;->getMURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;->getMURL()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNAServer;->DownloadURI(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1368
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;
    :cond_3b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdSetURI2;

    move v3, v0

    if-eqz v3, :cond_3c

    .line 1370
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdSetURI2;

    move-object/from16 v22, v0

    .line 1371
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetURI ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSetURI2;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1373
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdSetURI2;
    :cond_3c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdPlayMedia;

    move v3, v0

    if-eqz v3, :cond_3d

    .line 1375
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdPlayMedia;

    move-object/from16 v22, v0

    .line 1376
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdPlayMedia;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1378
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdPlayMedia;
    :cond_3d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdPauseMedia;

    move v3, v0

    if-eqz v3, :cond_3e

    .line 1380
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdPauseMedia;

    move-object/from16 v22, v0

    .line 1381
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pause ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdPauseMedia;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1383
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdPauseMedia;
    :cond_3e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdStopMedia;

    move v3, v0

    if-eqz v3, :cond_3f

    .line 1385
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdStopMedia;

    move-object/from16 v22, v0

    .line 1386
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdStopMedia;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdStopMedia;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1388
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdStopMedia;
    :cond_3f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdSeek;

    move v3, v0

    if-eqz v3, :cond_40

    .line 1390
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdSeek;

    move-object/from16 v22, v0

    .line 1391
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Seek ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSeek;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1393
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdSeek;
    :cond_40
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    move v3, v0

    if-eqz v3, :cond_41

    .line 1395
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    move-object/from16 v22, v0

    .line 1396
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdSetPlayMode;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayMode ACK received! (UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdSetPlayMode;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1398
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdSetPlayMode;
    :cond_41
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    move v3, v0

    if-eqz v3, :cond_42

    .line 1400
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    move-object/from16 v22, v0

    .line 1401
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdDeviceAlive;
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdDeviceAlive;->getMUDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdDeviceAlive;->getMType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1432
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdDeviceAlive;
    :cond_42
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    move v3, v0

    if-eqz v3, :cond_46

    .line 1434
    move-object/from16 v0, p1

    check-cast v0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    move-object/from16 v22, v0

    .line 1435
    .local v22, theCommand:Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->GetDownloadControllerItem()Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->GetState()I

    move-result v33

    .line 1437
    .local v33, theState:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPDownloadState_Ready:I

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_43

    .line 1439
    const-string v3, "DLNAServer"

    const-string v4, "Download ready !\n"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mDownloadList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->GetDownloadControllerItem()Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1442
    :cond_43
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPDownloadState_Failed:I

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_44

    .line 1443
    const-string v3, "DLNAServer"

    const-string v4, "Download failed !\n"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1444
    :cond_44
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPDownloadState_Downloaded:I

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_45

    .line 1445
    const-string v3, "DLNAServer"

    const-string v4, "Download ended !\n"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1446
    :cond_45
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPDownloadState_Error:I

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 1447
    const-string v3, "DLNAServer"

    const-string v4, "Download error !\n"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1451
    .end local v22           #theCommand:Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;
    .end local v33           #theState:I
    :cond_46
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mUniqueID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMUniqueID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *   mCommandID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public processCommands()V
    .locals 2

    .prologue
    .line 505
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    :cond_0
    return-void

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    .line 510
    .local v0, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :goto_0
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPCommand;->ExecuteCommandCompletedActionHandlers()Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNAServer;->onCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1, v0}, Lcom/awox/jUPnPCP/UPnPStack;->handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 516
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    goto :goto_0
.end method

.method public processCommandsOnStop()V
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandleOnStop()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    .line 581
    .local v0, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :goto_0
    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPCommand;->ExecuteCommandCompletedActionHandlers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNAServer;->onCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1, v0}, Lcom/awox/jUPnPCP/UPnPStack;->handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 587
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandleOnStop()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    goto :goto_0

    .line 589
    :cond_1
    return-void
.end method

.method protected removeTheCurrentSelectedRender()V
    .locals 5

    .prologue
    .line 1484
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v3, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1486
    :cond_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/RendererList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)I

    move-result v1

    .line 1489
    .local v1, iRemovedPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1490
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1491
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRendererList:Lcom/asus/DLNA/RendererList;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1493
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "removeitem"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1494
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1495
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1497
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    goto :goto_0
.end method

.method protected removeTheCurrentSelectedServer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1462
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v3, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1464
    :cond_0
    const-string v3, "DLNAServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected server \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    .line 1466
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mItemList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1467
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mBrowse:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v3}, Lcom/asus/DLNA/ItemList;->clear()V

    .line 1468
    iput-object v6, p0, Lcom/asus/DLNA/DLNAServer;->mMedia:Lcom/asus/DLNA/Item;

    .line 1470
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    iget-object v4, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/ServerList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)I

    move-result v1

    .line 1472
    .local v1, iRemovedPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1473
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1474
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mServerList:Lcom/asus/DLNA/ServerList;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1475
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "removeitem"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1477
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1478
    iget-object v3, p0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    iput-object v6, p0, Lcom/asus/DLNA/DLNAServer;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    goto :goto_0
.end method

.method public setCallback(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "DLNAClientCallbackHandler"
    .parameter "MediaPlayStateCallbackHandler"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/asus/DLNA/DLNAServer;->mDLNAClientCallbackHandler:Landroid/os/Handler;

    .line 129
    iput-object p2, p0, Lcom/asus/DLNA/DLNAServer;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public updateFilterType(I)V
    .locals 0
    .parameter "iNewFilterType"

    .prologue
    .line 228
    iput p1, p0, Lcom/asus/DLNA/DLNAServer;->miFilterType:I

    .line 229
    return-void
.end method

.method public waitCommandResponse(J)V
    .locals 6
    .parameter "waitingId"

    .prologue
    const-wide/16 v4, 0x0

    .line 488
    iput-wide p1, p0, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    .line 490
    const-string v2, "DLNAServer"

    const-string v3, " Waiting for response"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-wide v2, p0, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 493
    const-string v2, "DLNAServer"

    const-string v3, "."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNAServer;->processCommands()V

    .line 495
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-wide v2, p0, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 496
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    iput-wide v4, p0, Lcom/asus/DLNA/DLNAServer;->mWaitingId:J

    goto :goto_1

    .line 498
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :cond_1
    return-void
.end method
