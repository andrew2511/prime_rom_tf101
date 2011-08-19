.class Lcom/android/camera/ui/HeadUpDisplay$2;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HeadUpDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onSharedPreferenceChanged()V

    .line 113
    :cond_0
    return-void
.end method
