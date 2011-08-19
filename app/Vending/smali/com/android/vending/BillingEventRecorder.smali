.class public Lcom/android/vending/BillingEventRecorder;
.super Ljava/lang/Object;
.source "BillingEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;
    }
.end annotation


# instance fields
.field private final mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/BillingEventRecorder;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 27
    return-void
.end method


# virtual methods
.method public record(Lcom/android/vending/model/BillingEventRequest;)V
    .locals 3
    .parameter "billingEvent"

    .prologue
    .line 36
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    .line 37
    .local v0, vending:Lcom/android/vending/VendingApplication;
    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getMetadata()Lcom/android/vending/VendingApplicationMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplicationMetadata;->getBillingEventsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/vending/BillingEventRecorder;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v2, Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;

    invoke-direct {v2, p1}, Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;-><init>(Lcom/android/vending/model/BillingEventRequest;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    goto :goto_0
.end method
