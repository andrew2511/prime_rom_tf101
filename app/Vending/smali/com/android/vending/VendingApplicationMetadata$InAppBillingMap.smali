.class public Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;
.super Ljava/lang/Object;
.source "VendingApplicationMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplicationMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InAppBillingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;
    }
.end annotation


# instance fields
.field private mEnabledMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/VendingApplicationMetadata;


# direct methods
.method public constructor <init>(Lcom/android/vending/VendingApplicationMetadata;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->this$0:Lcom/android/vending/VendingApplicationMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->clear()V

    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getStateContainer(Ljava/lang/String;)Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;
    .locals 2
    .parameter "account"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;

    invoke-direct {v1, p0}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;-><init>(Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getMapClone()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->mEnabledMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->getStateContainer(Ljava/lang/String;)Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "account"
    .parameter "enabled"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->getStateContainer(Ljava/lang/String;)Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->setEnabled(Z)V

    .line 153
    return-void
.end method
