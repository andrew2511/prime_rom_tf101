.class final Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;
.super Ljava/lang/Object;
.source "FinskyActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/FinskyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadCrumbHolder"
.end annotation


# instance fields
.field child:Landroid/widget/TextView;

.field divider:Landroid/view/View;

.field parent:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/finsky/layout/FinskyActionBar;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/FinskyActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/FinskyActionBar;Lcom/google/android/finsky/layout/FinskyActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;-><init>(Lcom/google/android/finsky/layout/FinskyActionBar;)V

    return-void
.end method
