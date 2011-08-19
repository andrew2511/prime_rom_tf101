.class Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand$1;
.super Ljava/lang/Object;
.source "CGetArchivedItemsCommand.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand$1;->this$0:Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 1
    .parameter "hasError"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand$1;->this$0:Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->access$000(Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;Z)V

    .line 33
    return-void
.end method
