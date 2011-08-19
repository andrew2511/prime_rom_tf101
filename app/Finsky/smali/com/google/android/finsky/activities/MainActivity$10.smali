.class Lcom/google/android/finsky/activities/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->createPaidItemPurchaseListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$detailsUrl:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$errorListener:Lcom/android/volley/Response$ErrorListener;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$10;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$docTitle:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$offerType:I

    iput-object p5, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$detailsUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$errorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$10;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$400(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$10;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$docTitle:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$offerType:I

    iget-object v6, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$detailsUrl:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/finsky/activities/MainActivity;->access$300(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity$10;->val$errorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 848
    return-void

    .line 845
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown response - purchase could not be completed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 831
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity$10;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method
