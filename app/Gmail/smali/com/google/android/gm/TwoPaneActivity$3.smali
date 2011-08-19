.class Lcom/google/android/gm/TwoPaneActivity$3;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivity;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$3;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iput-object p2, p0, Lcom/google/android/gm/TwoPaneActivity$3;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$3;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$3;->val$menuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivity;->access$300(Lcom/google/android/gm/TwoPaneActivity;Landroid/view/MenuItem;)Z

    .line 399
    return-void
.end method
