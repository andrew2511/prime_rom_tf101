.class Lcom/amazon/kcp/application/internal/CAsyncPage$1;
.super Ljava/lang/Object;
.source "CAsyncPage.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CAsyncPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CAsyncPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/CAsyncPage;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$1;->this$0:Lcom/amazon/kcp/application/internal/CAsyncPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage$1;->this$0:Lcom/amazon/kcp/application/internal/CAsyncPage;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CAsyncPage;->access$000(Lcom/amazon/kcp/application/internal/CAsyncPage;)V

    .line 68
    return-void
.end method
