.class Lcom/ecareme/pixwe/media/HudLayer$54$2;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

.field private final synthetic val$searchAlbumName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer$54;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->val$searchAlbumName:Landroid/widget/EditText;

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1304
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->val$searchAlbumName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, newSearchAlbumName:Ljava/lang/String;
    const-string v5, "[%#/:\\x2a\\x3f\\<>|\'\\s\"]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1306
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1307
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1309
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1310
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1311
    const v5, 0x7f060056

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1313
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/GridLayer;->deselectOrCancelSelectMode()V

    .line 1322
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1316
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/aws/PixWeDataSource;

    .line 1317
    .local v1, dataSource:Lcom/ecareme/pixwe/aws/PixWeDataSource;
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->setKeyword(Ljava/lang/String;)V

    .line 1318
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$16(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v7

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer;->access$16(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/PathBarLayer;->getCurrentLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v7

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 1319
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 1320
    iget-object v5, p0, Lcom/ecareme/pixwe/media/HudLayer$54$2;->this$1:Lcom/ecareme/pixwe/media/HudLayer$54;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/HudLayer$54;->access$0(Lcom/ecareme/pixwe/media/HudLayer$54;)Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_0
.end method
