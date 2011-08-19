.class final Lcom/asus/reader/book/ReaderDatabase$4;
.super Ljava/lang/Object;
.source "ReaderDatabase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase;->openCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bookid:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enterKeyDialog:Landroid/app/AlertDialog;

.field final synthetic val$fontsize:I

.field final synthetic val$keyEditText:Landroid/widget/EditText;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pos:D


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;ILandroid/app/AlertDialog;DI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$keyEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$bookid:I

    iput-object p5, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$enterKeyDialog:Landroid/app/AlertDialog;

    iput-wide p6, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$pos:D

    iput p8, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$fontsize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x1

    .line 2546
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$keyEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2547
    .local v8, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$path:Ljava/lang/String;

    .line 2548
    .local v9, srcCepubPath:Ljava/lang/String;
    const-string v3, "/data/data/com.asus.reader/cover/temp_cepub.epub"

    .line 2549
    .local v3, destEpubPath:Ljava/lang/String;
    invoke-static {v9, v3, v8}, Lcom/asus/reader/bookconverter/Cepub2Epub;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2550
    .local v7, isConvertSuccess:Z
    if-eqz v7, :cond_1

    .line 2551
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$bookid:I

    invoke-static {v0, v1, v3}, Lcom/asus/reader/book/ReaderDatabase;->access$1300(Landroid/content/Context;ILjava/lang/String;)V

    .line 2552
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$enterKeyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 2553
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$context:Landroid/content/Context;

    const-string v1, "application/epub+zip"

    iget v2, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$bookid:I

    iget-wide v4, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$pos:D

    iget v6, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$fontsize:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    .line 2554
    const-string v0, "ReaderDatabase"

    const-string v1, "Convert Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->access$1400()Z

    move-result v0

    if-ne v0, v10, :cond_0

    .line 2556
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2560
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$enterKeyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 2561
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/reader/book/ReaderDatabase$4;->val$context:Landroid/content/Context;

    const v2, 0x7f0700c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2562
    const-string v0, "ReaderDatabase"

    const-string v1, "Convert Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->access$1400()Z

    move-result v0

    if-ne v0, v10, :cond_0

    .line 2564
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
