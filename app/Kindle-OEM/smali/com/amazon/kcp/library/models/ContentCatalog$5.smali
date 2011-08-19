.class Lcom/amazon/kcp/library/models/ContentCatalog$5;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;->initializeLocalLibraryListeners()V
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
    .line 401
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$5;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$5;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$800(Lcom/amazon/kcp/library/models/ContentCatalog;)V

    .line 407
    return-void
.end method
