.class public interface abstract Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;
.super Ljava/lang/Object;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/model/PurchaseStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchaseStatusListener"
.end annotation


# virtual methods
.method public abstract onPackageInstalled(Ljava/lang/String;)V
.end method

.method public abstract onPurchaseCompleted(Ljava/lang/String;Z)V
.end method

.method public abstract onPurchaseInitiated(Ljava/lang/String;I)V
.end method
