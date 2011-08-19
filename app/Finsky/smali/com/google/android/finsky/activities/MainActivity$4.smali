.class Lcom/google/android/finsky/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyDebug;->selectServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->restart(Landroid/accounts/Account;)V

    .line 516
    const/4 v0, 0x1

    return v0
.end method
