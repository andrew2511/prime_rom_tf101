.class Lcom/layar/ui/SearchWidget$2;
.super Ljava/lang/Object;
.source "SearchWidget.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/layar/ui/SearchWidget$2;->this$0:Lcom/layar/ui/SearchWidget;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/layar/ui/SearchWidget$2;->this$0:Lcom/layar/ui/SearchWidget;

    invoke-static {v0}, Lcom/layar/ui/SearchWidget;->access$1(Lcom/layar/ui/SearchWidget;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
