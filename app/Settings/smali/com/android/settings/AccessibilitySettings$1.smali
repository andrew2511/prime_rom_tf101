.class Lcom/android/settings/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$000(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0, v2}, Lcom/android/settings/AccessibilitySettings;->access$100(Lcom/android/settings/AccessibilitySettings;Z)V

    .line 399
    return-void
.end method
