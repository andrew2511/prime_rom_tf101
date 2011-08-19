.class Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;
.super Ljava/lang/Object;
.source "AppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/AppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHolder"
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/AppState;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method
