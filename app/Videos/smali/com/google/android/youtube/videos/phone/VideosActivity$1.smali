.class Lcom/google/android/youtube/videos/phone/VideosActivity$1;
.super Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.source "VideosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/phone/VideosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

.field final synthetic val$requesters:Lcom/google/android/youtube/videos/Requesters;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;Lcom/google/android/youtube/videos/Requesters;)V
    .locals 12
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$1;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/VideosActivity$1;->val$requesters:Lcom/google/android/youtube/videos/Requesters;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V

    return-void
.end method


# virtual methods
.method protected onNoEntries()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onNoEntries()V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$1;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity$1;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$1;->val$requesters:Lcom/google/android/youtube/videos/Requesters;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/phone/VideosActivity;->access$000(Lcom/google/android/youtube/videos/phone/VideosActivity;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/Requesters;)V

    .line 128
    return-void
.end method
