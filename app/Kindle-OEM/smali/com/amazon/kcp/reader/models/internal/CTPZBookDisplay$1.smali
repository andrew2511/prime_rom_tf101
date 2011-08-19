.class Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay$1;
.super Ljava/lang/Object;
.source "CTPZBookDisplay.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->notifyRefreshListeners()V

    .line 143
    return-void
.end method
