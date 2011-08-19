.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 152
    return-void
.end method
