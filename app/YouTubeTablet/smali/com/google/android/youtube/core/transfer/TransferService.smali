.class public abstract Lcom/google/android/youtube/core/transfer/TransferService;
.super Landroid/app/Service;
.source "TransferService.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;,
        Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;,
        Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;,
        Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;,
        Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    }
.end annotation


# instance fields
.field private backedOff:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/transfer/TransferService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

.field private mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

.field private networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

.field private random:Ljava/util/Random;

.field private restored:Z

.field private store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

.field private tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/TransferTask;",
            ">;"
        }
    .end annotation
.end field

.field private toBeRemoved:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transfers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 565
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->restore(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->cancelTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->completeTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/transfer/TransferService;->failTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Z)V

    return-void
.end method

.method private cancelTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 5
    .parameter "transfer"

    .prologue
    .line 255
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 256
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 258
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->remove(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 265
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 266
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_0

    .line 270
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 271
    return-void
.end method

.method private completeTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 5
    .parameter "transfer"

    .prologue
    .line 240
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 241
    .local v2, key:Ljava/lang/String;
    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v4, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 242
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 243
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 244
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 249
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_0

    .line 251
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 252
    return-void
.end method

.method protected static createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/youtube/core/transfer/TransferService;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/youtube/core/transfer/TransferService;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private failTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Z)V
    .locals 11
    .parameter "transfer"
    .parameter "fatal"

    .prologue
    .line 209
    iget-object v3, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 210
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 212
    .local v6, value:Ljava/lang/Integer;
    if-nez v6, :cond_1

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v5, v7, 0x1

    .line 213
    .local v5, strikes:I
    if-nez p2, :cond_0

    const/16 v7, 0x14

    if-le v5, v7, :cond_2

    .line 214
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transfer fatal fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 216
    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v7, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 217
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v2

    .line 218
    .local v2, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v7, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 219
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 224
    .local v4, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v2}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_1

    .line 212
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    .end local v5           #strikes:I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 227
    .restart local v5       #strikes:I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transfer fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 228
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v7, 0x1

    shl-int/2addr v7, v5

    mul-int/lit16 v0, v7, 0x3e8

    .line 233
    .local v0, backoff:I
    const v7, 0x927c0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->random:Ljava/util/Random;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int v0, v7, v8

    .line 234
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/16 v9, 0x8

    invoke-static {v8, v9, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    .end local v0           #backoff:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 237
    return-void
.end method

.method private pauseTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 6
    .parameter "transfer"

    .prologue
    .line 277
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 278
    .local v2, key:Ljava/lang/String;
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 279
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 280
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v5, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 281
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferTask;

    .line 282
    .local v4, task:Lcom/google/android/youtube/core/transfer/TransferTask;
    if-eqz v4, :cond_0

    .line 283
    invoke-interface {v4}, Lcom/google/android/youtube/core/transfer/TransferTask;->cancel()V

    .line 285
    :cond_0
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 289
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_0

    .line 291
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_1
    return-void
.end method

.method private restore(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/transfer/Transfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    const/4 v2, 0x0

    .line 140
    .local v2, restoredActiveTransfers:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 141
    .local v3, snapshot:Lcom/google/android/youtube/core/transfer/Transfer;
    new-instance v4, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    invoke-direct {v4, v3}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;-><init>(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 142
    .local v4, transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    iget-object v6, v4, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, v4, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v6, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v5, v6, :cond_1

    .line 146
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, v4, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 147
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 149
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v3           #snapshot:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v4           #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transfers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->restored:Z

    .line 154
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 155
    .local v1, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onRestored()V

    goto :goto_1

    .line 157
    .end local v1           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 158
    return-void
.end method

.method private startTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V
    .locals 6
    .parameter "transfer"

    .prologue
    .line 193
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    .line 194
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 195
    invoke-virtual {p0, p1, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->createTask(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;

    move-result-object v4

    .line 196
    .local v4, task:Lcom/google/android/youtube/core/transfer/TransferTask;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v5, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 198
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    .line 199
    .local v1, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v5, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 200
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 201
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->lockWifi()V

    .line 203
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 204
    .local v3, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_1

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v3           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    .end local v4           #task:Lcom/google/android/youtube/core/transfer/TransferTask;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 206
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v4       #task:Lcom/google/android/youtube/core/transfer/TransferTask;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract createTask(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
.end method

.method protected abstract getDatabaseName()Ljava/lang/String;
.end method

.method protected final isWifi()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->access$000(Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method public onCanceled(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    const-string v0, "creating transfer service"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->random:Ljava/util/Random;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;

    .line 117
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    .line 118
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->binder:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 120
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->register()V

    .line 122
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->register()V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restore(Landroid/os/Handler;I)V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "destroying transfer service"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->close()V

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->unregister()V

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->unregister()V

    .line 299
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 300
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .locals 5
    .parameter "filePath"
    .parameter "exception"

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x6

    iget-boolean v3, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void

    :cond_0
    move v3, v4

    .line 327
    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;J)V
    .locals 6
    .parameter "filePath"
    .parameter "progress"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x3

    const/16 v3, 0x1f

    shr-long v3, p2, v3

    long-to-int v3, v3

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-static {v1, v2, v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public onSize(Ljava/lang/String;J)V
    .locals 6
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v2, 0x2

    const/16 v3, 0x1f

    shr-long v3, p2, v3

    long-to-int v3, v3

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-static {v1, v2, v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected final ping()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    iget-boolean v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->restored:Z

    if-nez v6, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    .line 170
    .local v0, activeTransfers:I
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mediaMountedReceiver:Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->isMediaMounted()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v9

    .line 172
    .local v3, isTransferringPossible:Z
    :goto_1
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;

    .line 173
    .local v5, transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    invoke-virtual {v5}, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    if-eqz v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->shouldRun(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v9

    .line 176
    .local v4, shouldRun:Z
    :goto_3
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->tasks:Ljava/util/Map;

    iget-object v7, v5, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;

    iget-object v7, v5, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    move v2, v9

    .line 178
    .local v2, isRunning:Z
    :goto_4
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    .line 179
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->startTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    goto :goto_2

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isRunning:Z
    .end local v3           #isTransferringPossible:Z
    .end local v4           #shouldRun:Z
    .end local v5           #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_4
    move v3, v8

    .line 170
    goto :goto_1

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #isTransferringPossible:Z
    .restart local v5       #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_5
    move v4, v8

    .line 175
    goto :goto_3

    .restart local v4       #shouldRun:Z
    :cond_6
    move v2, v8

    .line 176
    goto :goto_4

    .line 180
    .restart local v2       #isRunning:Z
    :cond_7
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 181
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/TransferService;->pauseTransfer(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)V

    goto :goto_2

    .line 186
    .end local v2           #isRunning:Z
    .end local v4           #shouldRun:Z
    .end local v5           #transfer:Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;
    :cond_8
    if-nez v0, :cond_0

    .line 188
    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransferService;->mainHandler:Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;

    const/4 v8, 0x7

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected abstract shouldRun(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)Z
.end method
