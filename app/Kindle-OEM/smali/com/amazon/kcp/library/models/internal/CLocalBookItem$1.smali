.class Lcom/amazon/kcp/library/models/internal/CLocalBookItem$1;
.super Ljava/lang/Object;
.source "CLocalBookItem.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/CLocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/CLocalBookItem;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$1;->this$0:Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$1;->this$0:Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->onBookClose()V

    .line 53
    return-void
.end method
