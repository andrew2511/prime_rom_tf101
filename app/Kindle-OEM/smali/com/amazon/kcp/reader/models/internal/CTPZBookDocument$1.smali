.class Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$1;
.super Ljava/lang/Object;
.source "CTPZBookDocument.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;-><init>(Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/xml/SAXParserFactory;J)V
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
    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->access$000(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->notifyRefreshListeners()V

    .line 143
    return-void
.end method
