.class Lcom/google/android/finsky/activities/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->createFreeItemPurchaseListener(Ljava/lang/String;I)Lcom/android/volley/Response$Listener;
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

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$9;->val$docId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/activities/MainActivity$9;->val$offerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$9;->val$docId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/activities/MainActivity$9;->val$offerType:I

    sget-object v3, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 818
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 813
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity$9;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method
