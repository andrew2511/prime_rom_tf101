.class Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;
.super Lcom/amazon/kcp/reader/models/BookSearchResult;
.source "MobiBookSearchEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->found(Lcom/mobipocket/common/library/reader/FoundItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

.field final synthetic val$founditem:Lcom/mobipocket/common/library/reader/FoundItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;Ljava/lang/String;IIILcom/mobipocket/common/library/reader/FoundItem;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;->this$0:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;->val$founditem:Lcom/mobipocket/common/library/reader/FoundItem;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/kcp/reader/models/BookSearchResult;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;->this$0:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->access$000(Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;)Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;->val$founditem:Lcom/mobipocket/common/library/reader/FoundItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;->openFoundItem(Lcom/mobipocket/common/library/reader/FoundItem;)V

    .line 87
    return-void
.end method
