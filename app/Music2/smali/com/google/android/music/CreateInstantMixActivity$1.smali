.class Lcom/google/android/music/CreateInstantMixActivity$1;
.super Landroid/database/ContentObserver;
.source "CreateInstantMixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/CreateInstantMixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/CreateInstantMixActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreateInstantMixActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$1;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$1;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$000(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
