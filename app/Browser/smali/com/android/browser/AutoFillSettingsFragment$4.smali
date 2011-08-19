.class Lcom/android/browser/AutoFillSettingsFragment$4;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AutoFillSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$4;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$4;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/AutoFillSettingsFragment;->access$1400(Lcom/android/browser/AutoFillSettingsFragment;)V

    .line 214
    return-void
.end method
