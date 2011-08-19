.class Lcom/google/android/finsky/activities/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->createPurchaseStatusListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
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
        "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$detailsUrl:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$offerType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$11;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$docId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$offerType:I

    iput-object p4, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$docTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$detailsUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 11
    .parameter "response"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 865
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v9

    .line 870
    .local v9, status:I
    if-ne v9, v10, :cond_0

    .line 871
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$11;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$docId:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$offerType:I

    sget-object v7, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-static {v0, v2, v6, v7}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 898
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$11;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$docId:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$offerType:I

    sget-object v7, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-static {v0, v2, v6, v7}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 882
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v3

    .line 883
    .local v3, fullMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, briefMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, infoUrl:Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 887
    const-string v0, "Purchase Status response has error code %d, title %s,message %s and info URL %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    aput-object v1, v2, v10

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v6, 0x3

    aput-object v5, v2, v6

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$11;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$docTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$detailsUrl:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/finsky/activities/MainActivity$11;->val$offerType:I

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/MainActivity;->access$500(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity$11;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method
