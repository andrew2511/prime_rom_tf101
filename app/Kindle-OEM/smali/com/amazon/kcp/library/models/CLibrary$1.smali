.class Lcom/amazon/kcp/library/models/CLibrary$1;
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
    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary$1;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CLibrary$1;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/CLibrary;->access$000(Lcom/amazon/kcp/library/models/CLibrary;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 86
    return-void
.end method
