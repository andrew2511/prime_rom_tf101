.class Lcom/android/internal/app/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #setter for: Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/internal/app/RingtonePickerActivity;->access$002(Lcom/android/internal/app/RingtonePickerActivity;I)I

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$100(Lcom/android/internal/app/RingtonePickerActivity;II)V

    .line 102
    return-void
.end method
