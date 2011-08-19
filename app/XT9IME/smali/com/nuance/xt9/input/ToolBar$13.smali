.class Lcom/nuance/xt9/input/ToolBar$13;
.super Ljava/lang/Object;
.source "ToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/ToolBar;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/ToolBar;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/ToolBar;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nuance/xt9/input/ToolBar$13;->this$0:Lcom/nuance/xt9/input/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar$13;->this$0:Lcom/nuance/xt9/input/ToolBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/ToolBar;->access$102(Lcom/nuance/xt9/input/ToolBar;Z)Z

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar$13;->this$0:Lcom/nuance/xt9/input/ToolBar;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ToolBar;->showMinimize()V

    .line 205
    return-void
.end method
