.class Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;
.super Ljava/lang/Object;
.source "PageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/PageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerStemProvider"
.end annotation


# instance fields
.field private final stemID:I

.field private final stemPageNum:I

.field final synthetic this$0:Lcom/amazon/topaz/internal/book/PageParser;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;II)V
    .locals 0
    .parameter
    .parameter "stemPageNum"
    .parameter "stemID"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->stemPageNum:I

    .line 65
    iput p3, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->stemID:I

    .line 66
    return-void
.end method


# virtual methods
.method public getStem()Lcom/amazon/topaz/internal/book/Container;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v0}, Lcom/amazon/topaz/internal/book/PageParser;->access$000(Lcom/amazon/topaz/internal/book/PageParser;)Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->stemPageNum:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;->stemID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Page;->getContainerForRow(I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    return-object v0
.end method
