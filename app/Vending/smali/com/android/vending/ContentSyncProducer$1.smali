.class Lcom/android/vending/ContentSyncProducer$1;
.super Ljava/lang/Object;
.source "ContentSyncProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ContentSyncProducer;->addLocalAssetsToProto(Lcom/android/vending/model/ContentSyncRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/vending/model/LocalAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/ContentSyncProducer;


# direct methods
.method constructor <init>(Lcom/android/vending/ContentSyncProducer;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/vending/ContentSyncProducer$1;->this$0:Lcom/android/vending/ContentSyncProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/vending/model/LocalAsset;Lcom/android/vending/model/LocalAsset;)I
    .locals 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 119
    if-nez p1, :cond_0

    const-string v2, ""

    move-object v0, v2

    .line 120
    .local v0, leftAssetId:Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v2, ""

    move-object v1, v2

    .line 121
    .local v1, rightAssetId:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 119
    .end local v0           #leftAssetId:Ljava/lang/String;
    .end local v1           #rightAssetId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 120
    .restart local v0       #leftAssetId:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    check-cast p1, Lcom/android/vending/model/LocalAsset;

    .end local p1
    check-cast p2, Lcom/android/vending/model/LocalAsset;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/ContentSyncProducer$1;->compare(Lcom/android/vending/model/LocalAsset;Lcom/android/vending/model/LocalAsset;)I

    move-result v0

    return v0
.end method
