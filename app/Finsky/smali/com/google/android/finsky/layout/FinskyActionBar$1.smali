.class Lcom/google/android/finsky/layout/FinskyActionBar$1;
.super Ljava/lang/Object;
.source "FinskyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FinskyActionBar;->setupBreadcrumbs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FinskyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FinskyActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$1;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar$1;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-static {v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->access$100(Lcom/google/android/finsky/layout/FinskyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    .line 424
    return-void
.end method
