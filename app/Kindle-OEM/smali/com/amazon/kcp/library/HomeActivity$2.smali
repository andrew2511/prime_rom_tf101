.class Lcom/amazon/kcp/library/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/HomeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/HomeActivity$2;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity$2;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/HomeActivity;->access$000(Lcom/amazon/kcp/library/HomeActivity;)V

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity$2;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/HomeActivity;->getBook(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    .line 69
    .local v1, newBook:Lcom/amazon/kcp/library/models/IListableBook;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v2, v0

    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v2, v0

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v2

    invoke-static {}, Lcom/amazon/kcp/library/HomeActivity;->access$100()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 76
    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity$2;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    check-cast v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local v1           #newBook:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-static {v2, v1}, Lcom/amazon/kcp/library/HomeActivity;->access$200(Lcom/amazon/kcp/library/HomeActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 79
    :cond_0
    return-void
.end method
