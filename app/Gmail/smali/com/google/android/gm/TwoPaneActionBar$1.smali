.class Lcom/google/android/gm/TwoPaneActionBar$1;
.super Ljava/lang/Object;
.source "TwoPaneActionBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActionBar;->setActionBarAccountSpinner(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActionBar;

.field final synthetic val$navigationCallback:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActionBar;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActionBar$1;->this$0:Lcom/google/android/gm/TwoPaneActionBar;

    iput-object p2, p0, Lcom/google/android/gm/TwoPaneActionBar$1;->val$navigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActionBar$1;->val$navigationCallback:Landroid/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 235
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
