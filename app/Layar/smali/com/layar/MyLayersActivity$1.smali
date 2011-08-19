.class Lcom/layar/MyLayersActivity$1;
.super Ljava/lang/Object;
.source "MyLayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/MyLayersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/MyLayersActivity;


# direct methods
.method constructor <init>(Lcom/layar/MyLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/MyLayersActivity$1;->this$0:Lcom/layar/MyLayersActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/layar/MyLayersActivity$1;->this$0:Lcom/layar/MyLayersActivity;

    invoke-static {v0}, Lcom/layar/MyLayersActivity;->access$0(Lcom/layar/MyLayersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/layar/MyLayersActivity$1;->this$0:Lcom/layar/MyLayersActivity;

    invoke-static {v0}, Lcom/layar/MyLayersActivity;->access$1(Lcom/layar/MyLayersActivity;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/layar/MyLayersActivity$1;->this$0:Lcom/layar/MyLayersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/MyLayersActivity;->access$2(Lcom/layar/MyLayersActivity;Z)V

    .line 59
    return-void
.end method
