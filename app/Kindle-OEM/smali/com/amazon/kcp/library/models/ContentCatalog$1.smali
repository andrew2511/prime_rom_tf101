.class Lcom/amazon/kcp/library/models/ContentCatalog$1;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ILocalBookItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/ContentCatalog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$1;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$1;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$200(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 275
    return-void
.end method
