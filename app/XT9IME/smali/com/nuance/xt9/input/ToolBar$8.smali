.class Lcom/nuance/xt9/input/ToolBar$8;
.super Ljava/lang/Object;
.source "ToolBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 136
    iput-object p1, p0, Lcom/nuance/xt9/input/ToolBar$8;->this$0:Lcom/nuance/xt9/input/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar$8;->this$0:Lcom/nuance/xt9/input/ToolBar;

    invoke-static {v0}, Lcom/nuance/xt9/input/ToolBar;->access$000(Lcom/nuance/xt9/input/ToolBar;)Lcom/nuance/xt9/input/ToolBar$OnClickAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/xt9/input/ToolBar$8;->this$0:Lcom/nuance/xt9/input/ToolBar;

    invoke-static {v0}, Lcom/nuance/xt9/input/ToolBar;->access$000(Lcom/nuance/xt9/input/ToolBar;)Lcom/nuance/xt9/input/ToolBar$OnClickAction;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/nuance/xt9/input/ToolBar$OnClickAction;->onLongClick(I)V

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
