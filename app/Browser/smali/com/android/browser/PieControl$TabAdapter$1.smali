.class Lcom/android/browser/PieControl$TabAdapter$1;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControl$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControl$TabAdapter;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControl$TabAdapter;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/browser/PieControl$TabAdapter$1;->this$0:Lcom/android/browser/PieControl$TabAdapter;

    iput-object p2, p0, Lcom/android/browser/PieControl$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/browser/PieControl$TabAdapter$1;->this$0:Lcom/android/browser/PieControl$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/PieControl$TabAdapter;->mUiController:Lcom/android/browser/UiController;

    iget-object v1, p0, Lcom/android/browser/PieControl$TabAdapter$1;->this$0:Lcom/android/browser/PieControl$TabAdapter;

    iget-object v1, v1, Lcom/android/browser/PieControl$TabAdapter;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/PieControl$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->switchToTab(I)Z

    .line 284
    return-void
.end method
