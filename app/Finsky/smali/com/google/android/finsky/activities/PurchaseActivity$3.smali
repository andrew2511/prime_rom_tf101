.class Lcom/google/android/finsky/activities/PurchaseActivity$3;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->retrieveAuthTokenAndMakePurchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 6
    .parameter "authToken"

    .prologue
    const/4 v2, 0x0

    .line 430
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Sending auth token to make purchase"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$302(Lcom/google/android/finsky/activities/PurchaseActivity;Z)Z

    .line 432
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$600(Lcom/google/android/finsky/activities/PurchaseActivity;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$400(Lcom/google/android/finsky/activities/PurchaseActivity;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$500(Lcom/google/android/finsky/activities/PurchaseActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 434
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_STARTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureException;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$3;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V

    .line 442
    return-void
.end method
