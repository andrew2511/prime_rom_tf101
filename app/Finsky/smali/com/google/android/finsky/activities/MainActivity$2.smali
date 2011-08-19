.class Lcom/google/android/finsky/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupConsumptionAppMenuItem(Landroid/view/MenuItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$contentType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$2;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput p2, p0, Lcom/google/android/finsky/activities/MainActivity$2;->val$contentType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$2;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/MainActivity$2;->val$contentType:I

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;I)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$2;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 447
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
