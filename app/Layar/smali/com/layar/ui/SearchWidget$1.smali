.class Lcom/layar/ui/SearchWidget$1;
.super Ljava/lang/Object;
.source "SearchWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/SearchWidget;->_initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/SearchWidget;


# direct methods
.method constructor <init>(Lcom/layar/ui/SearchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/SearchWidget$1;->this$0:Lcom/layar/ui/SearchWidget;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$1;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v0}, Lcom/layar/ui/SearchWidget;->isSearchingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$1;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-static {v0}, Lcom/layar/ui/SearchWidget;->access$0(Lcom/layar/ui/SearchWidget;)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$1;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-static {v0}, Lcom/layar/ui/SearchWidget;->access$1(Lcom/layar/ui/SearchWidget;)V

    goto :goto_0
.end method
