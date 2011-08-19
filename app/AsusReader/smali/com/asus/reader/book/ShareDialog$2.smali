.class Lcom/asus/reader/book/ShareDialog$2;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ShareDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ShareDialog;

.field final synthetic val$displayItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ShareDialog;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/asus/reader/book/ShareDialog$2;->this$0:Lcom/asus/reader/book/ShareDialog;

    iput-object p2, p0, Lcom/asus/reader/book/ShareDialog$2;->val$displayItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/asus/reader/book/ShareDialog$2;->val$displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    invoke-static {v1}, Lcom/asus/reader/book/ShareDialog$DisplayItem;->access$000(Lcom/asus/reader/book/ShareDialog$DisplayItem;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/reader/book/ShareDialog$2;->val$displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    invoke-static {v1}, Lcom/asus/reader/book/ShareDialog$DisplayItem;->access$100(Lcom/asus/reader/book/ShareDialog$DisplayItem;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/reader/book/ShareDialog$2;->val$displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    invoke-static {v1}, Lcom/asus/reader/book/ShareDialog$DisplayItem;->access$100(Lcom/asus/reader/book/ShareDialog$DisplayItem;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/asus/reader/book/ShareDialog$2;->this$0:Lcom/asus/reader/book/ShareDialog;

    invoke-virtual {v1}, Lcom/asus/reader/book/ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
