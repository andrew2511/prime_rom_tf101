.class Lcom/amazon/foundation/CustomCancelableFuture$Helper;
.super Ljava/util/concurrent/FutureTask;
.source "CustomCancelableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/CustomCancelableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/CustomCancelableFuture;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/CustomCancelableFuture;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->this$0:Lcom/amazon/foundation/CustomCancelableFuture;

    .line 32
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
