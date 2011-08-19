.class Lcom/ecareme/pixwe/view/common/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/TestActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v6, builder:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/TestActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/TestActivity;->access$4(Lcom/ecareme/pixwe/view/common/TestActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/view/common/TestActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    .local v7, cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/TestActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/TestActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/ecareme/pixwe/view/common/TestActivity$2$1;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$2$1;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    return-void
.end method
