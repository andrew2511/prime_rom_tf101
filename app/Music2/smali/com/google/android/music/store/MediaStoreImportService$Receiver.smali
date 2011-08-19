.class public Lcom/google/android/music/store/MediaStoreImportService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaStoreImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MediaStoreImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# static fields
.field private static final MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    const/4 v3, 0x0

    .line 192
    .local v3, importMediaStore:Z
    const-string v4, "android.provider.action.MTP_SESSION_END"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    const/4 v3, 0x1

    .line 221
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v2, importIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/music/store/MediaStoreImportService;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MediaStoreImportService"

    const-string v5, "Scanner finished. Starting media store import"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    const-string v4, "MediaStoreImportService.import"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    .end local v2           #importIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 194
    :cond_3
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, dataUri:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v4, "file:///system/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    :cond_4
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    goto :goto_0

    .line 203
    .end local v1           #dataUri:Ljava/lang/String;
    :cond_5
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #dataUri:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v4, "file:///system/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 207
    const/4 v3, 0x0

    goto :goto_0

    .line 214
    :cond_6
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    .line 216
    invoke-static {p1}, Lcom/google/android/music/store/MediaStoreImporter;->requestMediaStoreVersionCheck(Landroid/content/Context;)V

    .line 217
    const/4 v3, 0x1

    goto :goto_0
.end method
