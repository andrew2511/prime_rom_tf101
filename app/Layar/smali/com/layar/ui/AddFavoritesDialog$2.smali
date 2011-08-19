.class Lcom/layar/ui/AddFavoritesDialog$2;
.super Ljava/lang/Object;
.source "AddFavoritesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AddFavoritesDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AddFavoritesDialog;


# direct methods
.method constructor <init>(Lcom/layar/ui/AddFavoritesDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AddFavoritesDialog$2;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$2;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-virtual {v0}, Lcom/layar/ui/AddFavoritesDialog;->cancel()V

    .line 87
    return-void
.end method
