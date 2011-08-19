.class public abstract Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ManagedAsynchRequest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
