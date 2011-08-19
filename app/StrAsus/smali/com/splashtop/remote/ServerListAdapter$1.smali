.class Lcom/splashtop/remote/ServerListAdapter$1;
.super Ljava/lang/Object;
.source "ServerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/ServerListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/ServerListAdapter;

.field final synthetic val$mb:Lcom/splashtop/remote/bean/MacBean;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/ServerListAdapter;Lcom/splashtop/remote/bean/MacBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/splashtop/remote/ServerListAdapter$1;->this$0:Lcom/splashtop/remote/ServerListAdapter;

    iput-object p2, p0, Lcom/splashtop/remote/ServerListAdapter$1;->val$mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/splashtop/remote/ServerListAdapter$1;->this$0:Lcom/splashtop/remote/ServerListAdapter;

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/ServerListAdapter$1;->val$mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity;->editServer(Lcom/splashtop/remote/bean/MacBean;)V

    .line 96
    return-void
.end method
