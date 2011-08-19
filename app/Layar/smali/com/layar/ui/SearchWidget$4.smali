.class Lcom/layar/ui/SearchWidget$4;
.super Ljava/lang/Object;
.source "SearchWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/layar/ui/SearchWidget$4;->this$0:Lcom/layar/ui/SearchWidget;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 176
    if-eqz p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$4;->this$0:Lcom/layar/ui/SearchWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/SearchWidget;->access$3(Lcom/layar/ui/SearchWidget;Z)V

    .line 178
    :cond_0
    return-void
.end method
