.class Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$2;
.super Ljava/lang/Object;
.source "CTPZBookDocument.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->openBookInternal(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$2;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$2;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->access$100(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->lprUpdated()V

    .line 227
    return-void
.end method
