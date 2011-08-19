.class Lcom/newspaperdirect/pressreader/android/core/Sharing$4;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;->share(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$4;)Lcom/newspaperdirect/pressreader/android/core/Sharing;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 199
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    .local v2, li:Landroid/view/LayoutInflater;
    const v4, 0x7f030005

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 203
    .local v1, editText:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/InputFilter;

    .line 205
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$1(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v6

    sget-object v7, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v6, v7, :cond_1

    const/16 v6, 0x6e

    :goto_1
    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v4

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 207
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$4;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$1(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v5

    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    if-ne v5, v6, :cond_2

    const v5, 0x7f0900c8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 209
    const v5, 0x7f09005c

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 210
    const v5, 0x7f0900ca

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;

    invoke-direct {v6, p0, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$4$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$4;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 205
    :cond_1
    const/16 v6, 0x1f4

    goto :goto_1

    .line 208
    :cond_2
    const v5, 0x7f0900c9

    goto :goto_2
.end method
