.class Lcom/amazon/kcp/library/models/ContentCatalog$4;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


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
    .line 390
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$4;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$4;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$400(Lcom/amazon/kcp/library/models/ContentCatalog;I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$4;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$700(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)V

    .line 398
    return-void
.end method
