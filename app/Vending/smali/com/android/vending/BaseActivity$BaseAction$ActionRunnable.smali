.class public interface abstract Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity$BaseAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionRunnable"
.end annotation


# virtual methods
.method public abstract run(Lcom/android/vending/api/RequestManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/AuthFailureException;,
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
