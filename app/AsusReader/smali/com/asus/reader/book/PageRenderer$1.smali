.class Lcom/asus/reader/book/PageRenderer$1;
.super Ljava/lang/Object;
.source "PageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/PageRenderer;

.field final synthetic val$bookId:I

.field final synthetic val$pageNo:I


# direct methods
.method constructor <init>(Lcom/asus/reader/book/PageRenderer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/asus/reader/book/PageRenderer$1;->this$0:Lcom/asus/reader/book/PageRenderer;

    iput p2, p0, Lcom/asus/reader/book/PageRenderer$1;->val$pageNo:I

    iput p3, p0, Lcom/asus/reader/book/PageRenderer$1;->val$bookId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1013
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1014
    .local v2, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer$1;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v4}, Lcom/asus/reader/book/PageRenderer;->access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageRenderer$1;->val$pageNo:I

    invoke-virtual {v4, v5}, Lcom/asus/reader/book/BookSurfaceView;->getPageCenterPositionNative(I)D

    move-result-wide v0

    .line 1015
    .local v0, pos:D
    const-string v4, "last_viewed_pos"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageRenderer$1;->val$bookId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer$1;->this$0:Lcom/asus/reader/book/PageRenderer;

    invoke-static {v4}, Lcom/asus/reader/book/PageRenderer;->access$100(Lcom/asus/reader/book/PageRenderer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1018
    return-void
.end method
