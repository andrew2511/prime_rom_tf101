.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-static {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$100(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    .line 216
    return-void
.end method
