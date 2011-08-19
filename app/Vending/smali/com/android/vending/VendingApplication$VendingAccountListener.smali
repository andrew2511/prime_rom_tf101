.class Lcom/android/vending/VendingApplication$VendingAccountListener;
.super Ljava/lang/Object;
.source "VendingApplication.java"

# interfaces
.implements Lcom/android/vending/VendingApplication$AccountListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendingAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/VendingApplication;


# direct methods
.method private constructor <init>(Lcom/android/vending/VendingApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/vending/VendingApplication$VendingAccountListener;->this$0:Lcom/android/vending/VendingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/VendingApplication$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/vending/VendingApplication$VendingAccountListener;-><init>(Lcom/android/vending/VendingApplication;)V

    return-void
.end method


# virtual methods
.method public accountListUpdate(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public accountListUpdateCompleted()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vending/VendingApplication$VendingAccountListener;->this$0:Lcom/android/vending/VendingApplication;

    .line 178
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/vending/cache/CacheManager;->clear()V

    .line 179
    invoke-static {v0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/vending/VendingApplication$VendingAccountListener;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->fetchAndUpdateMetadata()V

    .line 181
    return-void
.end method
