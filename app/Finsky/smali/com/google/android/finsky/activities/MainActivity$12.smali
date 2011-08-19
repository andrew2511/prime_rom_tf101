.class Lcom/google/android/finsky/activities/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->createPurchaseErrorListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 909
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$docId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$offerType:I

    iput-object p4, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$docTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$detailsUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 9
    .parameter "error"
    .parameter "message"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$docId:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$offerType:I

    sget-object v5, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 918
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const v2, 0x7f0b002c

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, errorMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$docTitle:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$detailsUrl:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/finsky/activities/MainActivity$12;->val$offerType:I

    const/4 v8, 0x1

    move-object v4, v3

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/MainActivity;->access$500(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 928
    return-void
.end method
