.class Lcom/layar/LayerListActivity$1;
.super Ljava/lang/Object;
.source "LayerListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerListActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayerListActivity$1;->this$0:Lcom/layar/LayerListActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/layar/LayerListActivity$1;->this$0:Lcom/layar/LayerListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/LayerListActivity;->access$1(Lcom/layar/LayerListActivity;Z)V

    .line 233
    return-void
.end method
