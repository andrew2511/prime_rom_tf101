.class Lcom/amazon/kcp/library/models/CLibrary$2;
.super Ljava/lang/Object;
.source "CLibrary.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/CLibrary;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/CLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary$2;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2
    .parameter "metadataIndex"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary$2;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/CLibrary;->access$200(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary$2;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/CLibrary;->access$100(Lcom/amazon/kcp/library/models/CLibrary;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 95
    return-void
.end method
