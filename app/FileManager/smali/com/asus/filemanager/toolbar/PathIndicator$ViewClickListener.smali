.class Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;
.super Ljava/lang/Object;
.source "PathIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/toolbar/PathIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/toolbar/PathIndicator;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/toolbar/PathIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/toolbar/PathIndicator;Lcom/asus/filemanager/toolbar/PathIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080018

    if-ne v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v1}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$400(Lcom/asus/filemanager/toolbar/PathIndicator;)Lcom/asus/filemanager/toolbar/IPathListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/asus/filemanager/toolbar/IPathListener;->onPathBack()V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 189
    .local v0, f:Ljava/io/File;
    iget-object v1, p0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v1}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$400(Lcom/asus/filemanager/toolbar/PathIndicator;)Lcom/asus/filemanager/toolbar/IPathListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/asus/filemanager/toolbar/IPathListener;->onPathClicked(Ljava/io/File;)V

    goto :goto_0
.end method
