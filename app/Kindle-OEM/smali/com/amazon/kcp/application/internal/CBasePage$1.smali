.class Lcom/amazon/kcp/application/internal/CBasePage$1;
.super Ljava/lang/Object;
.source "CBasePage.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CBasePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CBasePage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/CBasePage;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CBasePage$1;->this$0:Lcom/amazon/kcp/application/internal/CBasePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage$1;->this$0:Lcom/amazon/kcp/application/internal/CBasePage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandIdle()V

    .line 34
    return-void
.end method
