.class Landroid/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 881
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$600(Landroid/widget/SearchView;)V

    .line 882
    const/4 v0, 0x1

    return v0
.end method
