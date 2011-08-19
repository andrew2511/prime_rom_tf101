.class Lcom/layar/MyLayersActivity$3;
.super Ljava/lang/Object;
.source "MyLayersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/MyLayersActivity;->showEditAlert(Lcom/layar/ui/navigationbar/NavigationBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/MyLayersActivity;

.field private final synthetic val$bar:Lcom/layar/ui/navigationbar/NavigationBar;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/layar/MyLayersActivity;Lcom/layar/ui/navigationbar/NavigationBar;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/MyLayersActivity$3;->this$0:Lcom/layar/MyLayersActivity;

    iput-object p2, p0, Lcom/layar/MyLayersActivity$3;->val$bar:Lcom/layar/ui/navigationbar/NavigationBar;

    iput p3, p0, Lcom/layar/MyLayersActivity$3;->val$id:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/layar/MyLayersActivity$3;->this$0:Lcom/layar/MyLayersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/MyLayersActivity;->access$2(Lcom/layar/MyLayersActivity;Z)V

    .line 252
    iget-object v0, p0, Lcom/layar/MyLayersActivity$3;->val$bar:Lcom/layar/ui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/layar/MyLayersActivity$3;->this$0:Lcom/layar/MyLayersActivity;

    iget-object v0, v0, Lcom/layar/MyLayersActivity;->helper:Lcom/layar/ActivityHelper;

    iget-object v1, p0, Lcom/layar/MyLayersActivity$3;->val$bar:Lcom/layar/ui/navigationbar/NavigationBar;

    iget v2, p0, Lcom/layar/MyLayersActivity$3;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/layar/ActivityHelper;->onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z

    .line 254
    :cond_0
    return-void
.end method
