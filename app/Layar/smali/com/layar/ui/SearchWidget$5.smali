.class Lcom/layar/ui/SearchWidget$5;
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
    iput-object p1, p0, Lcom/layar/ui/SearchWidget$5;->this$0:Lcom/layar/ui/SearchWidget;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$5;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-static {v0}, Lcom/layar/ui/SearchWidget;->access$4(Lcom/layar/ui/SearchWidget;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 184
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$5;->this$0:Lcom/layar/ui/SearchWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/SearchWidget;->access$3(Lcom/layar/ui/SearchWidget;Z)V

    .line 185
    return-void
.end method
