.class Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;
.super Ljava/lang/Object;
.source "DefinitionContainer.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/DefinitionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$000(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V

    .line 89
    return-void
.end method
