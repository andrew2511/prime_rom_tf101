.class Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand$1;
.super Ljava/lang/Object;
.source "StoreCredentialsCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V

    .line 33
    return-void
.end method
