.class interface abstract Lcom/android/vending/VendingApplication$AccountListListener;
.super Ljava/lang/Object;
.source "VendingApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccountListListener"
.end annotation


# virtual methods
.method public abstract accountListUpdate(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract accountListUpdateCompleted()V
.end method
