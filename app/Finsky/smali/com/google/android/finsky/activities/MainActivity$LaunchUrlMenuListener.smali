.class Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchUrlMenuListener"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->mUri:Landroid/net/Uri;

    .line 639
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$100(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/analytics/Analytics;->reportPageView(Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x1

    return v0
.end method
