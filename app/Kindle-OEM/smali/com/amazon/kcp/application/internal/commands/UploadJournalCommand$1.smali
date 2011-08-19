.class Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;
.super Ljava/lang/Object;
.source "UploadJournalCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V

    .line 36
    return-void
.end method
