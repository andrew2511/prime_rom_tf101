.class public Lcom/google/android/finsky/model/PurchaseStatusTracker;
.super Landroid/content/BroadcastReceiver;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/model/PurchaseStatusTracker$1;,
        Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;,
        Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingPurchases:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    .line 52
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, packageName:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Package successfully installed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-object v0
.end method

.method private notifyPackageAdded(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;

    .line 114
    .local v1, listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;->onPackageInstalled(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v1           #listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    :cond_0
    return-void
.end method

.method private notifyPurchaseCompleted(Ljava/lang/String;Z)V
    .locals 3
    .parameter "docId"
    .parameter "hadError"

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;

    .line 104
    .local v1, listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;->onPurchaseCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 106
    .end local v1           #listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    :cond_0
    return-void
.end method

.method private notifyPurchaseInitiated(Ljava/lang/String;I)V
    .locals 3
    .parameter "docId"
    .parameter "offerType"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;

    .line 91
    .local v1, listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;->onPurchaseInitiated(Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    .end local v1           #listener:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public clearPendingPurchases()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 192
    return-void
.end method

.method public detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public isPendingPurchase(Ljava/lang/String;)Z
    .locals 1
    .parameter "docId"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 160
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {p2}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->notifyPackageAdded(Ljava/lang/String;)V

    .line 164
    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V
    .locals 3
    .parameter "docId"
    .parameter "offerType"
    .parameter "stateChange"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot track the purchase of an item with a null doc ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$1;->$SwitchMap$com$google$android$finsky$model$PurchaseStatusTracker$PurchaseState:[I

    invoke-virtual {p3}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state change for PurchaseStatusTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    if-nez p2, :cond_1

    .line 136
    const/4 p2, 0x1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->notifyPurchaseInitiated(Ljava/lang/String;I)V

    .line 153
    :goto_0
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->notifyPurchaseCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/model/PurchaseStatusTracker;->mPendingPurchases:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->notifyPurchaseCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
