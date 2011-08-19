.class Lcom/amazon/topaz/internal/book/PageParser$1;
.super Ljava/lang/Object;
.source "PageParser.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/Image$ImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/internal/book/PageParser;->parseImage(Lcom/amazon/topaz/internal/binxml/Node;)Lcom/amazon/topaz/internal/book/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/book/PageParser;

.field final synthetic val$imageID:I


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser$1;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    iput p2, p0, Lcom/amazon/topaz/internal/book/PageParser$1;->val$imageID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/amazon/topaz/internal/book/IImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser$1;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v0}, Lcom/amazon/topaz/internal/book/PageParser;->access$000(Lcom/amazon/topaz/internal/book/PageParser;)Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser$1;->val$imageID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getImage(I)Lcom/amazon/topaz/internal/book/IImage;

    move-result-object v0

    return-object v0
.end method
