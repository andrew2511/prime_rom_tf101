.class final Lcom/nvidia/tegrazone/NewsListActivity$1;
.super Ljava/lang/Object;
.source "NewsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/NewsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/NewsListActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/NewsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/NewsListActivity$1;->this$0:Lcom/nvidia/tegrazone/NewsListActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nvidia/tegrazone/NewsListActivity$1;->this$0:Lcom/nvidia/tegrazone/NewsListActivity;

    invoke-static {v0, p1}, Lcom/nvidia/tegrazone/NewsListActivity;->access$0(Lcom/nvidia/tegrazone/NewsListActivity;Landroid/view/View;)V

    .line 64
    return-void
.end method
