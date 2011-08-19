.class Lcom/layar/ui/navigationbar/NavigationBar$1;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/navigationbar/NavigationBar;->addButton(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/navigationbar/NavigationBar;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/layar/ui/navigationbar/NavigationBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/navigationbar/NavigationBar$1;->this$0:Lcom/layar/ui/navigationbar/NavigationBar;

    iput p2, p0, Lcom/layar/ui/navigationbar/NavigationBar$1;->val$id:I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar$1;->this$0:Lcom/layar/ui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/layar/ui/navigationbar/NavigationBar;->access$0(Lcom/layar/ui/navigationbar/NavigationBar;)Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/navigationbar/NavigationBar$1;->this$0:Lcom/layar/ui/navigationbar/NavigationBar;

    iget v2, p0, Lcom/layar/ui/navigationbar/NavigationBar$1;->val$id:I

    invoke-interface {v0, v1, v2}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z

    .line 137
    return-void
.end method
