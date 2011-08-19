.class Lcom/amazon/kcp/store/internal/commands/CStoreCommand$1;
.super Ljava/lang/Object;
.source "CStoreCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/CStoreCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/CStoreCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/CStoreCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/CStoreCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/CStoreCommand;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->onRequestFinished()V

    .line 29
    return-void
.end method
