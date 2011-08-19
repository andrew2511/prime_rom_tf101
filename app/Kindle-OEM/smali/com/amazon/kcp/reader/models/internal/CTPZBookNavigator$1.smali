.class Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;
.super Ljava/lang/Object;
.source "CTPZBookNavigator.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->reset()V

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->access$100(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;)Lcom/amazon/topaz/TPZBookSearchResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->access$002(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/topaz/TPZBookSearchResult;)Lcom/amazon/topaz/TPZBookSearchResult;

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->access$102(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/topaz/TPZBookSearchResult;)Lcom/amazon/topaz/TPZBookSearchResult;

    .line 49
    return-void
.end method
