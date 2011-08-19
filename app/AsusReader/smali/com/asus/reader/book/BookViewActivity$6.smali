.class Lcom/asus/reader/book/BookViewActivity$6;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->setFontSize(ID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field final synthetic val$fontsize:I


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$6;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iput p2, p0, Lcom/asus/reader/book/BookViewActivity$6;->val$fontsize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 969
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 970
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "last_viewed_font_size"

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity$6;->val$fontsize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$6;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$6;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 973
    return-void
.end method
