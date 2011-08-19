.class Lcom/asus/reader/pdf/PDFActivity$8;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$8;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 471
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 472
    .local v2, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$8;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$500(Lcom/asus/reader/pdf/PDFActivity;)D

    move-result-wide v0

    .line 473
    .local v0, pos:D
    const-string v4, "last_viewed_pos"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFActivity$8;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFActivity;->access$600(Lcom/asus/reader/pdf/PDFActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$8;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$700(Lcom/asus/reader/pdf/PDFActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    return-void
.end method
