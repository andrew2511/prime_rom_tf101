.class Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "SyncStateCheckBoxPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

.field final synthetic val$anim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;->this$0:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 74
    return-void
.end method
