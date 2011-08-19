.class Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1084
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1085
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$3000(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    packed-switch p2, :pswitch_data_0

    .line 1109
    :goto_0
    :pswitch_0
    return-void

    .line 1090
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$3100(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_0

    .line 1093
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doTakePhoto()V

    goto :goto_0

    .line 1096
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doPickPhotoFromGallery()V

    goto :goto_0

    .line 1100
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1102
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doTakePhoto()V

    goto :goto_0

    .line 1105
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;->this$2:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->doPickPhotoFromGallery()V

    goto :goto_0

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1100
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
