.class Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$2;
.super Ljava/lang/Object;
.source "CArchivedItemsLibrary.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$2;->this$0:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$2;->this$0:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;->access$100(Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;I)V

    .line 57
    return-void
.end method
