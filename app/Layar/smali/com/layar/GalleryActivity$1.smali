.class Lcom/layar/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/layar/ui/SearchWidget$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/layar/GalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/GalleryActivity$1;->this$0:Lcom/layar/GalleryActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 67
    return-void
.end method

.method public onSearch(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "v"
    .parameter "query"

    .prologue
    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/GalleryActivity$1;->this$0:Lcom/layar/GalleryActivity;

    const-class v2, Lcom/layar/SearchLayersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search:query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/layar/GalleryActivity$1;->this$0:Lcom/layar/GalleryActivity;

    iget-object v1, v1, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
