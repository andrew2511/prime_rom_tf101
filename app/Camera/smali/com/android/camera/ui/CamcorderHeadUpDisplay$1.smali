.class Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;
.super Ljava/lang/Object;
.source "CamcorderHeadUpDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CamcorderHeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CamcorderHeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CamcorderHeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;->this$0:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;->this$0:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;->this$0:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onRestorePreferencesClicked()V

    .line 61
    :cond_0
    return-void
.end method
