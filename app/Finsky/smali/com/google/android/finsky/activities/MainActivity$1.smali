.class Lcom/google/android/finsky/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->configureUrlInterceptorsInBg(Lcom/google/android/finsky/model/ChannelList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$channelList:Lcom/google/android/finsky/model/ChannelList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/model/ChannelList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$1;->val$channelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$1;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$1;->val$channelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->configureUrlInterceptors(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/model/ChannelList;)V

    .line 390
    return-void
.end method
