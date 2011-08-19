.class Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/FirstRunDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;-><init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->access$200(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 105
    .local v0, agreedUseLocation:Z
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->access$300(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setUseLocationForServices(Z)V

    .line 106
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->access$300(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->firstRunDialogShown()V

    .line 107
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->dismiss()V

    .line 108
    return-void
.end method
