.class public Lcom/android/org/bouncycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "StoreException.java"


# instance fields
.field private _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "s"
    .parameter "e"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    .line 12
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
